/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.contoh.service;

import com.contoh.dao.IdentitasPasienDao;
import com.contoh.model.IdentitasPasien;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author 1110100890
 */
@Service //digunakan untuk menandai bahwa kelas tersebut adalah sebuah logika bisnis dari aplikasi
@Transactional //digunakan untuk keperluan transaki pada basisdata yaitu diantaranya membuka dan menutup session pada Hibernate
public class IdentitasPasienServiceImplem implements IdentitasPasienService {
    
    @Autowired
    IdentitasPasienDao identitasPasienDao;
    
    @Override
    public List<IdentitasPasien> getIdPasien() {
        return identitasPasienDao.getIdPasien(); 
    }

    @Override
    public IdentitasPasien getIdentitasPasien(Integer id) {
        return identitasPasienDao.getIdentitasPasien(id); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public IdentitasPasien saveIdPasien(IdentitasPasien IdPasien) {
        return identitasPasienDao.saveIdPasien(IdPasien); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public IdentitasPasien updateIdPasien(IdentitasPasien IdPasien) {
        return identitasPasienDao.updateIdpasien(IdPasien); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public IdentitasPasien deleteIdPasien(IdentitasPasien IdPasien) {
        return identitasPasienDao.deleteIdPasien(IdPasien); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
