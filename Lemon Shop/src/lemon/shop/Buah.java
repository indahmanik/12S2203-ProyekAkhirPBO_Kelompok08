/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lemon.shop;

import java.util.Date;

/**
 *
 * @author ACER
 */

public class Buah {
    String kodeBuah;
    int harga;
    Date arrivalDate;
    String expiredDate;
    int jumlahStok;
    
    public Buah(String kodeBuah, int harga, Date arrivalDate, String expiredDate, int jumlahStok){
        this.kodeBuah = kodeBuah;
        this.arrivalDate = arrivalDate;
        this.expiredDate = expiredDate;
        this.jumlahStok = jumlahStok;
    }
    
    public void getDiscount(){
        this.expiredDate = null;
        this.kodeBuah = null;
    }
    
    public void getHarga(){
        this.harga = harga;
        this.kodeBuah = null;
    }
}
