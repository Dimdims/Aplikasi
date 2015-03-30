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
    public IdentitasPasien getIdPasien(int id) {
        return identitasPasienDao.getIdPasien(id);
    }

    @Override
    public List<IdentitasPasien> listIP() {
        return identitasPasienDao.listIP();
    }

    @Override
    public void add(IdentitasPasien ip) {
        identitasPasienDao.add(ip);
    }

    @Override
    public void update(IdentitasPasien ip) {
        identitasPasienDao.update(ip);
    }

    @Override
    public void delete(int id) {
        identitasPasienDao.delete(id);
    }
}
