/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.contoh.dao;

import com.contoh.model.IdentitasPasien;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author 1110100890
 */
@Repository //Annotation yang menandai bahwa kelas tersebut merupakan sebuah DAO
public class IdentitasPasienDaoImplem implements IdentitasPasienDao {
    
    @Autowired //digunakan untuk melakukan dependency injection terhadap objek sessionFactory dari Hibernate.
    SessionFactory sessionFactory;
    
    @Override
    public List<IdentitasPasien> getIdPasien(){
        return sessionFactory.getCurrentSession().createQuery("select 1 from identitaspasien 1").list();
    }
    
    @Override
    public IdentitasPasien getIdentitasPasien(Integer id){
        return (IdentitasPasien) sessionFactory.getCurrentSession().get(IdentitasPasien.class,id);
    }
    
    @Override
    public IdentitasPasien saveIdPasien(IdentitasPasien IdPasien){
        sessionFactory.getCurrentSession().save(IdPasien);
        return IdPasien;
    }
    
    @Override
    public IdentitasPasien updateIdpasien(IdentitasPasien IdPasien){
        sessionFactory.getCurrentSession().update(IdPasien);
        return IdPasien;
    }
    
    @Override
    public IdentitasPasien deleteIdPasien(IdentitasPasien IdPasien){
        sessionFactory.getCurrentSession().delete(IdPasien);
        return IdPasien;
    }
}
