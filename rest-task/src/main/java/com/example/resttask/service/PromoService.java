package com.example.resttask.service;

import com.example.resttask.dto.*;
import com.example.resttask.model.Participant;
import com.example.resttask.model.Prize;
import com.example.resttask.model.Promoaction;
import com.example.resttask.repo.ParticipantRepository;
import com.example.resttask.repo.PrizeRepository;
import com.example.resttask.repo.PromoactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.transaction.Transactional;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class PromoService {

    private final PromoactionRepository promoactionRepository;
    private final PrizeRepository prizeRepository;
    private final ParticipantRepository participantRepository;

    @Autowired
    public PromoService(PromoactionRepository promoactionRepository, PrizeRepository prizeRepository, ParticipantRepository participantRepository) {
        this.promoactionRepository = promoactionRepository;
        this.prizeRepository = prizeRepository;
        this.participantRepository = participantRepository;
    }

    public long addPromo(PromoDto promoDto) {

        System.out.println(promoDto);

        Promoaction promoaction = promoactionRepository.save(Promoaction.builder()
                .name(promoDto.getName())
                .description(promoDto.getDescription())
                .build());

        return promoaction.getId();
    }

    public List<ResponsePromoListDto> getAll() {

        List<Promoaction> list = promoactionRepository.findAll();

        List<ResponsePromoListDto> responsePromoListDtos = new ArrayList<>();

        for(Promoaction promoaction : list) {
            responsePromoListDtos.add(ResponsePromoListDto.builder()
                            .id(promoaction.getId())
                            .name(promoaction.getName())
                            .description(promoaction.getDescription())
                    .build());
        }

        return responsePromoListDtos;

    }

    @Transactional
    public PromoById getById(long id) {

        Optional<Promoaction> optionalPromoaction = promoactionRepository.findById(id);

        if (optionalPromoaction.isPresent()) {
            List<PrizeDto> prizeDtos = new ArrayList<>();
            List<UserDto> userDtos = new ArrayList<>();

            Promoaction promoaction = optionalPromoaction.get();

            Long[] prizeId = promoaction.getPrizeId();
            Long[] userId = promoaction.getUserId();

            if (prizeId != null) {
                for (Long aLong : prizeId) {

                    Prize prize = prizeRepository.getById(aLong);
                    prizeDtos.add(PrizeDto.builder()
                            .id(aLong)
                            .description(prize.getDescription())
                            .build());
                }
            }

            if (userId != null) {
                for (Long aLong : userId) {
                    Participant participant = participantRepository.getById(aLong);
                    userDtos.add(UserDto.builder()
                            .id(aLong)
                            .name(participant.getName())
                            .build());
                }
            }

            return PromoById.builder()
                    .name(promoaction.getName())
                    .description(promoaction.getDescription())
                    .participants(userDtos)
                    .prizes(prizeDtos)
                    .id(promoaction.getId()).build();

        }

        return null;
    }

    @Transactional
    public Long addParticipant(long promoId, ParticipantDto participantDto) {

        Optional<Promoaction> optionalPromoaction = promoactionRepository.findById(promoId);

        if (optionalPromoaction.isPresent()) {
            Promoaction promoaction = optionalPromoaction.get();
            Long id = participantRepository.save(Participant.builder().name(participantDto.getName()).build()).getId();

            Long[] users = promoaction.getUserId();

            return getaLong(promoId, id, users);
        }

        return null;
    }

    public void delete(Long id) {
        promoactionRepository.deleteById(id);
    }

    @Transactional
    public Long addPrize(long promoId, PrizeDtoToAdd prizeDtoToAdd) {

        Optional<Promoaction> optionalPromoaction = promoactionRepository.findById(promoId);

        if (optionalPromoaction.isPresent()) {
            Promoaction promoaction = optionalPromoaction.get();
            
            Long id = prizeRepository.save(Prize.builder().description(prizeDtoToAdd.getDescription()).build()).getId();

            Long[] prizes = promoaction.getPrizeId();
            Long[] newPrizes;

            if (prizes != null) {

                newPrizes = new Long[prizes.length + 1];

                System.arraycopy(prizes, 0, newPrizes, 0, prizes.length);
                newPrizes[prizes.length] = id;

            }
            else {
                newPrizes = new Long[1];
                newPrizes[0] = id;
            }
            promoactionRepository.addPrize(newPrizes, promoId);

            return id;
        }

        return null;
    }

    private Long getaLong(long promoId, Long id, Long[] prizes) {
        if (prizes != null) {

            Long[] newPrizes = new Long[prizes.length + 1];

            System.arraycopy(prizes, 0, newPrizes, 0, prizes.length);
            newPrizes[prizes.length] = id;

            promoactionRepository.addParticipant(newPrizes, promoId);

        }
        else {
            Long[] newPrizes = new Long[1];
            newPrizes[0] = id;
            promoactionRepository.addParticipant(newPrizes, promoId);
        }

        return id;
    }

    @Transactional
    public void deleteParticipant(Long promoId, Long participantId) {
        Optional<Promoaction> optionalPromoaction = promoactionRepository.findById(promoId);

        if (optionalPromoaction.isPresent()) {
            Promoaction promoaction = optionalPromoaction.get();
            
            Long[] users = promoaction.getUserId();

            if (users != null) {

                Long[] newUsers = getLongs(users);

                promoactionRepository.addParticipant(newUsers, promoId);
            }
        }
    }

    @Transactional
    public void deletePrize(Long promoId, Long prizeId) {
        Optional<Promoaction> optionalPromoaction = promoactionRepository.findById(promoId);

        if (optionalPromoaction.isPresent()) {
            Promoaction promoaction = optionalPromoaction.get();

            Long[] prizes = promoaction.getPrizeId();
            Long[] newPrizes;

            if (prizes != null) {

                newPrizes = getLongs(prizes);

                promoactionRepository.addPrize(newPrizes, promoId);
            }
        }
    }

    private Long[] getLongs(Long[] prizes) {
        Long[] newPrizes;
        if (prizes.length - 1 != 0) {
            newPrizes = new Long[prizes.length - 1];
            System.arraycopy(prizes, 0, newPrizes, 0, prizes.length - 1);
        }
        else {
            newPrizes = null;
        }
        return newPrizes;
    }

    @Transactional
    public ResponseEntity<?> raffle(Long promoId) {
        Optional<Promoaction> optionalPromoaction = promoactionRepository.findById(promoId);

        if (optionalPromoaction.isPresent()) {

            Promoaction promoaction = optionalPromoaction.get();

            Long[] userIds = promoaction.getUserId();
            Long[] prizeIds = promoaction.getPrizeId();

            if (userIds == null || prizeIds == null) {
                return ResponseEntity.ok(409);
            }

            if (userIds.length != prizeIds.length) {
                return ResponseEntity.ok(409);
            }

            List<Long> prizes = Arrays.stream(prizeIds).collect(Collectors.toList());
            Collections.shuffle(prizes, new Random(10));

            List<RaffleDto> raffle = new ArrayList<>();

            for (int i = 0; i < userIds.length; i++) {
                raffle.add(RaffleDto.builder()
                                .prize(prizeRepository.getById(prizes.get(i)).getDescription())
                                .username(participantRepository.getById(userIds[i]).getName())
                        .build());
            }

            return ResponseEntity.ok(raffle);

        }

        return ResponseEntity.ok(409);

    }

}
