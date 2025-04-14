package com.example.demo.controller;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;


import com.example.demo.model.LiaisonTypeHommePromotion;
import com.example.demo.service.LiaisonTypeHommePromotionService;

@Controller
@RequestMapping("/liaison")
public class LiaisonTypeHommePromotionController {

    @Autowired
    private LiaisonTypeHommePromotionService service;

    // Liste
    @GetMapping
    public String list(Model model) {
        model.addAttribute("liaisons", service.getAll());
        return "liaison/list";
    }

    // Formulaire de création
    @GetMapping("/create")
    public String showCreateForm(Model model) {
        model.addAttribute("liaison", new LiaisonTypeHommePromotion());
        return "liaison/form";
    }

    @PostMapping("/create")
    public String create(@ModelAttribute LiaisonTypeHommePromotion l) {
        service.create(l);
        return "redirect:/liaison";
    }

    // Formulaire de modification
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable int id, Model model) {
        model.addAttribute("liaison", service.getById(id));
        return "liaison/form";
    }

    @PostMapping("/edit")
    public String edit(@ModelAttribute LiaisonTypeHommePromotion l) {
        service.update(l);
        return "redirect:/liaison";
    }

    // Supprimer
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable int id) {
        service.delete(id);
        return "redirect:/liaison";
    }
}

