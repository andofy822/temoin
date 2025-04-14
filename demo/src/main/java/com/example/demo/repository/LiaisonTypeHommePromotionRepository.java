package com.example.demo.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.example.demo.model.LiaisonTypeHommePromotion;

@Repository
public class LiaisonTypeHommePromotionRepository {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // CREATE
    public void save(LiaisonTypeHommePromotion l) {
        String sql = "INSERT INTO liaisontypehommepromotion (idtypehomme, promotion) VALUES (?, ?)";
        jdbcTemplate.update(sql, l.getIdTypeHomme(), l.getPromotion());
    }

    // UPDATE
    public void update(LiaisonTypeHommePromotion l) {
        String sql = "UPDATE liaisontypehommepromotion SET idtypehomme = ?, promotion = ? WHERE id = ?";
        jdbcTemplate.update(sql, l.getIdTypeHomme(), l.getPromotion(), l.getId());
    }

    // DELETE
    public void delete(int id) {
        String sql = "DELETE FROM liaisontypehommepromotion WHERE id = ?";
        jdbcTemplate.update(sql, id);
    }

    // GET (optionnel, pour vérification ou affichage)
    public List<LiaisonTypeHommePromotion> findAll() {
        String sql = "SELECT * FROM liaisontypehommepromotion";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
            LiaisonTypeHommePromotion l = new LiaisonTypeHommePromotion();
            l.setId(rs.getInt("id"));
            l.setIdTypeHomme(rs.getInt("idtypehomme"));
            l.setPromotion(rs.getDouble("promotion"));
            return l;
        });
    }

    public LiaisonTypeHommePromotion findById(int id) {
        String sql = "SELECT * FROM liaisontypehommepromotion WHERE id = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, (rs, rowNum) -> {
            LiaisonTypeHommePromotion l = new LiaisonTypeHommePromotion();
            l.setId(rs.getInt("id"));
            l.setIdTypeHomme(rs.getInt("idtypehomme"));
            l.setPromotion(rs.getDouble("promotion"));
            return l;
        });
    }
}
