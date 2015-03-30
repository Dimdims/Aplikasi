/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.contoh.dao;

import com.contoh.model.IdentitasPasien;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author 1110100890
 */
public class IdentitasPasienDaoImpl implements IdentitasPasienDao {
    
    @Autowired
    private SessionFactory sessionFactory;
    
    public Session getCurrentSession(){
        return sessionFactory.getCurrentSession();
    }
    
    @Override
    public IdentitasPasien getIdPasien(int id) {
        IdentitasPasien ip = (IdentitasPasien) getCurrentSession().get(IdentitasPasien.class, id);
        return ip;
    }

    @Override
    public List<IdentitasPasien> listIP() {
        return getCurrentSession().createQuery("From IdentitasPasien").list();
    }

    @Override
    public void add(IdentitasPasien ip) {
        getCurrentSession().save(ip);
    }

    @Override
    public void update(IdentitasPasien ip) {
        getCurrentSession().update(ip);
    }

    @Override
    public void delete(int id) {
        IdentitasPasien ip = getIdPasien(id);
        getCurrentSession().delete(ip);
    }
    
}
