package com.example.resttask.controller;

import com.example.resttask.dto.ParticipantDto;
import com.example.resttask.dto.PrizeDtoToAdd;
import com.example.resttask.dto.PromoDto;
import com.example.resttask.model.Participant;
import com.example.resttask.service.PromoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
public class PromoController {

    private final PromoService promoService;

    @Autowired
    public PromoController(PromoService promoService) {
        this.promoService = promoService;
    }

    @PostMapping("/promo")
    public ResponseEntity<?> addPromo(@RequestBody PromoDto promoDto) {
        return ResponseEntity.ok(promoService.addPromo(promoDto));
    }

    @GetMapping("/promo")
    public ResponseEntity<?> getAll() {
        return ResponseEntity.ok(promoService.getAll());
    }

    @GetMapping("/promo/{id}")
    public ResponseEntity<?> getById(@PathVariable Long id) {
        return ResponseEntity.ok(promoService.getById(id));
    }

    @PostMapping("/promo/{id}/participant")
    public ResponseEntity<?> addParticipant(@PathVariable Long id, @RequestBody ParticipantDto participantDto) {
        return ResponseEntity.ok(promoService.addParticipant(id, participantDto));
    }

    @DeleteMapping("/promo/{id}")
    public ResponseEntity<?> delete(@PathVariable Long id) {
        promoService.delete(id);
        return ResponseEntity.ok(202);
    }

    @PostMapping("/promo/{id}/prize")
    public ResponseEntity<?> addPrize(@PathVariable Long id, @RequestBody PrizeDtoToAdd prizeDtoToAdd) {
        return ResponseEntity.ok(promoService.addPrize(id, prizeDtoToAdd));
    }

    @DeleteMapping("/promo/{promoId}/participant/{participantId}")
    public ResponseEntity<?> deleteParticipant(@PathVariable Long promoId, @PathVariable Long participantId) {
        promoService.deleteParticipant(promoId, participantId);
        return ResponseEntity.ok(202);
    }

    @DeleteMapping("/promo/{promoId}/prize/{prizeId}")
    public ResponseEntity<?> deletePrize(@PathVariable Long promoId, @PathVariable Long prizeId) {
        promoService.deletePrize(promoId, prizeId);
        return ResponseEntity.ok(202);
    }

    @GetMapping("/promo/{id}/raffle")
    public ResponseEntity<?> raffle(@PathVariable Long id) {
        return promoService.raffle(id);
    }

}
