/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.contoh.dao;

import com.contoh.model.IdentitasPasien;
import java.util.List;

/**
 *
 * @author 1110100890
 */
public interface IdentitasPasienDao {
    public List<IdentitasPasien> getIdPasien();
    public IdentitasPasien getIdentitasPasien(Integer id);
    public IdentitasPasien saveIdPasien(IdentitasPasien IdPasien);
    public IdentitasPasien updateIdpasien(IdentitasPasien IdPasien);
    public IdentitasPasien deleteIdPasien(IdentitasPasien IdPasien);
}
