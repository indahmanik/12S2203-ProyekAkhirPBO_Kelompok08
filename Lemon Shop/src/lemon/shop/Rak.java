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
public class Rak {
    String kodeRak;
    String lokasi;
    
    public Rak(String kodeRak, String lokasi){
        this.kodeRak = kodeRak;
        this.lokasi = lokasi;
    }
    
    public void getLocation(){
        this.kodeRak = null;
        this.lokasi = null;
    }
}
