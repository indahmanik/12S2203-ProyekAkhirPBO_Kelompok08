package lemon.shop;

import java.util.Date;

/**
 *
 * @author Kelompok08
 */

public class Buah {
    private String kodeBuah;
    private int harga;
    private Date arrivalDate;
    private String expiredDate;
    private int jumlahStok;
    
    public void Buah(String kodeBuah, int harga, Date arrivalDate, String expiredDate, int jumlahStok){
        this.kodeBuah = kodeBuah;
        this.arrivalDate = arrivalDate;
        this.expiredDate = expiredDate;
        this.jumlahStok = jumlahStok;
    }
    
    public void getDiscount(){
        this.expiredDate = null;
        this.kodeBuah = null;
    }
    
    public void getHarga(int harga){
        this.harga = harga;
        this.kodeBuah = null;
    }
}
