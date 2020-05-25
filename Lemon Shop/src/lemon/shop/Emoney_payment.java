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
public class Emoney_payment {
  String kodePembayaran;
  String JenisEmoney;
  
  public Emoney_payment(String kodePembayaran, String JenisEmoney){
      this.kodePembayaran = kodePembayaran;
      this.JenisEmoney = JenisEmoney;
  }
  
  public void getKodeTransaksi(){
      this.kodePembayaran = null;
  }
}
