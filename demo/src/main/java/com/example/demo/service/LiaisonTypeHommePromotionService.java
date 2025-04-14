package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.LiaisonTypeHommePromotion;
import com.example.demo.repository.LiaisonTypeHommePromotionRepository;

@Service
public class LiaisonTypeHommePromotionService {

    @Autowired
    private LiaisonTypeHommePromotionRepository repo;

    public void create(LiaisonTypeHommePromotion l) {
        repo.save(l);
    }

    public void update(LiaisonTypeHommePromotion l) {
        repo.update(l);
    }

    public void delete(int id) {
        repo.delete(id);
    }

    public List<LiaisonTypeHommePromotion> getAll() {
        return repo.findAll();
    }

    public LiaisonTypeHommePromotion getById(int id) {
        return repo.findById(id);
    }
}
