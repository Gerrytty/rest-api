package com.example.resttask.repo;

import com.example.resttask.model.Promoaction;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

public interface PromoactionRepository extends JpaRepository<Promoaction, Long> {

    @Modifying
    @Query("update Promoaction p set p.userId = ?1 where p.id = ?2")
    void addParticipant(Long[] userId, Long id);

    @Modifying
    @Query("update Promoaction p set p.prizeId = ?1 where p.id = ?2")
    void addPrize(Long[] prizeId, Long id);

}
