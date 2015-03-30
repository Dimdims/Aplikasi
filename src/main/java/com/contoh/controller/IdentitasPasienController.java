/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.contoh.controller;

import com.contoh.model.IdentitasPasien;
import com.contoh.service.IdentitasPasienService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
    
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model){
        List<IdentitasPasien> listIP = identitasPasienService.listIP();
        model.addAttribute("listIP", listIP);
        return "list";
    }
    
    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(Model model) {
        model.addAttribute("ip", new IdentitasPasien());
        return "tambah";
    }
    
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute("ip") IdentitasPasien ip,
    BindingResult br, Model model) {
        if(br.hasErrors()){
            return "tambah";
        }
        if(ip.getId() > 0){
            identitasPasienService.update(ip);
        } else {
            identitasPasienService.add(ip);
        }
        return "redirect:list";
    }
    
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable Integer id, Model model) {
        model.addAttribute("ip", identitasPasienService.getIdPasien(id));
        return "tambah";
    }
    
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable Integer id) {
        identitasPasienService.delete(id);
        return "redirect:/list";
    }
    
 /**   @RequestMapping(value = "pdf", method = RequestMethod.GET)
    public String getPdfReport(Model model, HttpServletResponse response){
        List<IdentitasPasien> idPasien = identitasPasienService.getIdPasien();
        JRDataSource dataSource = new JRBeanCollectionDataSource(idPasien);
        
        model.addAttribute("dataSource", dataSource);
        return "pdfReport";
    }
    
    @RequestMapping(value = "xls",method = RequestMethod.GET)
    public String getXlsReport(Model model, HttpServletResponse response){
        List<IdentitasPasien> idPasien = identitasPasienService.getIdPasien();
        JRDataSource dataSource=new JRBeanCollectionDataSource(idPasien);
        
        model.addAttribute("dataSource", dataSource);
        return "xlsReport";
    } **/
}