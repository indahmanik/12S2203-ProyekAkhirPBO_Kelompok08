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

import java.util.ArrayList;

public class Rak {
    private ArrayList<String> Buah = new ArrayList<>();
    private String kodeBuah;
    private String lokasi;
    
 public Rak(int kodeBuah) {
		if (kodeBuah > 0) {
			this.kodeBuah = kodeBuah;
		} else {
			throw new IllegalArgumentException("kode yang dimasukkan tidak valid");
		}
	}
    
    private synchronized boolean isFull() {
		return Buah.size() == this.kodeBuah;
	}

	private synchronized boolean isEmpty() {
		return Buah.isEmpty();
	}

	public synchronized void petugas_restock (String Buah) {
		if (isFull()) {
			System.out
					.println(" Buah tidak dapat ditambahkan!!");
			try {
				wait();
			} catch (InterruptedException e) {
				System.out.println("Interruption");
			}
		}
		Buah.add(Buah);
		System.out.printf("Buah : %s ditambahkan !!!%n", Buah);
	}

	public synchronized String pembeli() {

		if (isEmpty()) {
			System.out.println("Buah habis");
			try {
				wait();
			} catch (InterruptedException e) {
				System.out.println("interruption occure !!!");
			}
		}
		
		String currentFruitRecusted = Buah.remove(0);
		notifyAll();
		return currentFruitRecusted;
	}

}

public class Main {
	public static void main(String[] args) {
		Rak superRak = new Rak(10);
		
		
		
	}
}
