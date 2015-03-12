/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.contoh.controller;

import com.contoh.model.IdentitasPasien;
import com.contoh.service.IdentitasPasienService;
import javassist.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author 1110100890
 */

@Controller
public class IdentitasPasienController {
    
    @Autowired
    IdentitasPasienService identitasPasienService;
    
    @RequestMapping(value="/", method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("idPasien", identitasPasienService.getIdPasien());
        return "index";
    }
    
    @RequestMapping(value="Tambah", method = RequestMethod.GET)
    public String add(Model model){
        model.addAttribute("idPasien", new IdentitasPasien());
        return "Tambah";
    }
    
    @RequestMapping(value="Tambah", method = RequestMethod.POST)
    public String adding(@ModelAttribute("idPasien") IdentitasPasien IdPasien){
        identitasPasienService.saveIdPasien(IdPasien);
        return "redirect:/";
    }
    
    @RequestMapping(value = "Edit/{id}",method = RequestMethod.GET)
    public String edit(Model model, @PathVariable("id") Integer id) throws NotFoundException{
        IdentitasPasien identitasPasien = identitasPasienService.getIdentitasPasien(id);
        if(identitasPasien == null) {
            throw new NotFoundException(null);
        }
        model.addAttribute("identitasPasien", identitasPasien);
        return "Edit";
    }
    
    @RequestMapping(value = "Edit",method = RequestMethod.POST)
    public String editing(@ModelAttribute("identitasPasien") IdentitasPasien identitasPasien){
        identitasPasienService.updateIdPasien(identitasPasien);
        return "redirect:/";
    }
    
    @RequestMapping(value = "Delete/{id}",method = RequestMethod.GET)
    public String deleting(@PathVariable("id") Integer id) throws NotFoundException{
        IdentitasPasien identitasPasien = identitasPasienService.getIdentitasPasien(id);
        if(identitasPasien == null){
            throw new NotFoundException(null);
        }
        identitasPasienService.deleteIdPasien(identitasPasien);
        return "redirect:/";
    }
}
