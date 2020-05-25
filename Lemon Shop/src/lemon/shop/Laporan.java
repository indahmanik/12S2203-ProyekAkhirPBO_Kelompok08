/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lemon.shop;

/**
 *
 * @author ACER
 */

import java.util.Date;
public class Laporan {
    private String kodeLaporan;
    private String kategori;
    private Date awal;
    private Date akhir;
    
    public void Laporan(String kodeLaporan, String kategori, Date awal, Date akhir){
        this.kodeLaporan = kodeLaporan;
        this.kategori = kategori;
        this.awal = awal;
        this.akhir = akhir;
    }
    
    public void setAwal(){
        this.awal = null;
    }
    
    public void setAkhir(){
        this.akhir = null;
    }
    
    public void cetakLaporan(){
        this.kodeLaporan = null;
        this.kategori = null;
        this.awal = null;
        this.akhir = null;
    }
}

