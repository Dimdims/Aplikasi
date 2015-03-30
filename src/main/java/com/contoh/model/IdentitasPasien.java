/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.contoh.model;


import com.contoh.model.dataEnum.JenisKelamin;
import com.contoh.model.dataEnum.goldar;
import com.contoh.model.dataEnum.keluarga;
import com.contoh.model.dataEnum.pnd;
import com.contoh.model.dataEnum.sttsNikah;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 *
 * @author 1110100890
 */
@Entity
@Table(name="identitaspasien")
public class IdentitasPasien implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column
    private Integer id;
    @Column
    private String noRM;
    @Column
    private String nmPasien;
    @Column
    private String tmpLahir;
    @Temporal(javax.persistence.TemporalType.DATE)
    @Column
    private Date tglLahir;
    @Column
    private JenisKelamin jk;
    @Column
    private goldar goldar;
    @Column
    private String usia;
    @Column
    private String noKTP;
    @Column
    private String alamat;
    @Column
    private String pekerjaan;
    @Column
    private sttsNikah sttsNikah;
    @Column
    private String agama;
    @Column
    private String noTelp;
    @Column
    private keluarga keluarga;
    @Column
    private String nmKeluarga;
    @Column
    private pnd pnd;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNoRM() {
        return noRM;
    }

    public void setNoRM(String noRM) {
        this.noRM = noRM;
    }

    public String getNmPasien() {
        return nmPasien;
    }

    public void setNmPasien(String nmPasien) {
        this.nmPasien = nmPasien;
    }

    public String getTmpLahir() {
        return tmpLahir;
    }

    public void setTmpLahir(String tmpLahir) {
        this.tmpLahir = tmpLahir;
    }

    public Date getTglLahir() {
        return tglLahir;
    }

    public void setTglLahir(Date tglLahir) {
        this.tglLahir = tglLahir;
    }

    public JenisKelamin getJk() {
        return jk;
    }

    public void setJk(JenisKelamin jk) {
        this.jk = jk;
    }

    public goldar getGoldar() {
        return goldar;
    }

    public void setGoldar(goldar goldar) {
        this.goldar = goldar;
    }

    public String getUsia() {
        return usia;
    }

    public void setUsia(String usia) {
        this.usia = usia;
    }

    public String getNoKTP() {
        return noKTP;
    }

    public void setNoKTP(String noKTP) {
        this.noKTP = noKTP;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public String getPekerjaan() {
        return pekerjaan;
    }

    public void setPekerjaan(String pekerjaan) {
        this.pekerjaan = pekerjaan;
    }

    public sttsNikah getSttsNikah() {
        return sttsNikah;
    }

    public void setSttsNikah(sttsNikah sttsNikah) {
        this.sttsNikah = sttsNikah;
    }

    public String getAgama() {
        return agama;
    }

    public void setAgama(String agama) {
        this.agama = agama;
    }

    public String getNoTelp() {
        return noTelp;
    }

    public void setNoTelp(String noTelp) {
        this.noTelp = noTelp;
    }

    public keluarga getKeluarga() {
        return keluarga;
    }

    public void setKeluarga(keluarga keluarga) {
        this.keluarga = keluarga;
    }

    public String getNmKeluarga() {
        return nmKeluarga;
    }

    public void setNmKeluarga(String nmKeluarga) {
        this.nmKeluarga = nmKeluarga;
    }

    public pnd getPnd() {
        return pnd;
    }

    public void setPnd(pnd pnd) {
        this.pnd = pnd;
    }
}
