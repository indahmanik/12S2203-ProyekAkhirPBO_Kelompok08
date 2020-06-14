/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lemon.shop;

import java.util.Date;

/**
 *
 * @author kelompok08
 */

public class Buah {
   private int kodeBuah = 0;
   private String namaBuah;
   private double harga;
   private Date arrivalDate;
   private String expiredDate;
   private int lokasi;
    
    public Buah(){
        this(0,"Unknown",0,0.00);
    }
    
    public Buah(int kodeBuah, String namaBuah, int harga, Date arrivalDate, String expiredDate, int jumlahStok){
        kodeBuah = kodeBuah;
        setNamaBuah(namaBuah);
        setlokasi(lokasi);
        setArrivalDate(arrivalDate);
        setExpiredDate(expiredDate);
        setHarga(harga);
    }
    
public void setNamaBuah(String namaBuah){
    namaBuah = namaBuah;
}

public int getlokasi(){
   return lokasi;
}

public void setHarga(double harga){
    if(harga > 0.00){
        harga = harga;
    }
    else{harga = 0.00;}
}

public setArrivalDate(Date arrivalDate){
    today.getDate();
}
    
public setExpiredDate(String expiredDate){
    expiredDate = expiredDate;
}

public String getNamaBuah(){
    return namaBuah;
}

public double getHarga(){
    return harga;
}

public Date arrivalDate(){
    return arrivalDate;
}

public String expiredDate(){
    return expiredDate;
}

public double getItemValue(){
    return (harga * (double)jumlah);
}

public String toString(){
    return namaBuah + " - " + harga;
}
}

