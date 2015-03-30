/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.contoh.service;

import com.contoh.model.IdentitasPasien;
import java.util.List;

/**
 *
 * @author 1110100890
 */
public interface IdentitasPasienService {
    public IdentitasPasien getIdPasien(int id);
    
    public List<IdentitasPasien> listIP();
    
    public void add(IdentitasPasien ip);
    
    public void update(IdentitasPasien ip);
    
    public void delete(int id);
}
