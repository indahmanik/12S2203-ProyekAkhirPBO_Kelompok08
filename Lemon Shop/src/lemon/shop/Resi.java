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

public class Resi {
    
    Vector items;
    Vector Jumlah;
    Vector prices;
    Vector date;

    public static void main(String args[]){
        Resi myResi= new Resi();
        
        System.out.println("Welcome to Lemon Shop");
        myResi.receive();
        myResi.sort();
        myResi.print();    
     }
    
    public Resi(){
       items=new Vector();
       prices=new Vector();
       Jumlah=new Vector();
       date=new Vector();
        }

    private void receive() {
        String items=" ";
        Float price;
        Integer Jumlah;
        Date date = null;
        
        while (!items.equals("")){
            System.out.print("Enter Item: ");
            items=Keyboard.in.readString();
            if (!items.equals("")){
                this.items.addElement(items);
                System.out.print("Enter price: ");
                price=Keyboard.in.readFloat();
                this.prices.addElement(price);
                this.date.addElement(date);
                System.out.print("Enter Kode Transaksi: ");
                Jumlah=Keyboard.in.readInteger();
                this.Jumlah.addElement(Jumlah);
            }
        }
            }

    private void sort() {
        int i;
        int largeIndex;
            for (i=0; this.items.size(); i++){
                largeIndex = this.getLargest(i);
                this.exchange(i, largeIndex);
            }
        
    }
    
    private int getLargest(int index){
        int largestIndex;
        int i;
        Float price1, price2;
        
        largestIndex = index;
        for (i = index + 1; i < this.prices.size(); i++){
            price1=(Float)this.prices.elementAt(i);
	    price2=(Float)this.prices.elementAt(largestIndex);
	    if (price1.floatValue() > price2.floatValue())
		largestIndex = i;
        }
        return largestIndex;
    }

    private void exchange(int a, int b) {
        Float		tempF;
	Integer		tempI;
	String		tempS;
        Date            tempA;

		tempS = (String)this.items.elementAt(a);
		tempF = (Float)this.prices.elementAt(a);
		tempI = (Integer)this.Jumlah.elementAt(a);
                tempA = (Date)this.date.elementAt(a);
	
		this.items.setElementAt((String)this.items.elementAt(b),a);
		this.items.setElementAt(tempS,b);

		this.prices.setElementAt((Float)this.prices.elementAt(b),a);
		this.prices.setElementAt(tempF,b);

		this.Jumlah.setElementAt((Integer)this.Jumlah.elementAt(b),a);
		this.Jumlah.setElementAt(tempI,b);
                
                this.date.setElementAt((Date)this.date.elementAt(b),a);
                this.date.setElementAt(tempA,b);
    }
    
    private void print() {
        Date today=new Date();
        String item=" ";
        Float price;
        final float discount=100.0f;
        Integer Jumlah;
    
        float itemtotal;
        float subtotal;
        float tax;
        float getDiscount=0f;
        int i, j,maxSize;
        
        System.out.println("======================");
  	    System.out.println("LEMON SHOP");
  	    System.out.print(today.getDate()+"/");
  	    System.out.print((today.getMonth()+1)+"/");
  	    System.out.print((today.getYear()+1900)+" ");
  	    System.out.print(today.getHours()+":");
  	    System.out.println(today.getMinutes());
	    System.out.println("======================");
            
            item=(String)this.items.elementAt(0);
        maxSize=item.length();
	    for (i=1;i<this.items.size();i++){
	    	item=(String)this.items.elementAt(i);
	        if (maxSize<item.length()) {
	            maxSize=item.length();
       }
}

for (i=0;i<this.items.size();i++){
	    	item=(String)this.items.elementAt(i);
	    	price=(Float)this.prices.elementAt(i);
	    	Jumlah=(Integer)this.Jumlah.elementAt(i);
	    	System.out.print(item);
	    	
            for (j=item.length();j<maxSize;j++){
                System.out.print(" ");
            }
	    	System.out.print("  "+price+"  "+Jumlah+"  ");
	    	itemtotal=price.floatValue()*Jumlah.intValue();
	    	subtotal=subtotal+itemtotal;
	    	System.out.println(itemtotal);
	    }

System.out.println("======================");
	    tax= subtotal*0.07f;
	    System.out.println("SubTotal= $"+subtotal);
	    System.out.println("GST     = $"+tax);
	    if (subtotal>=discount) {
	    	getDiscount=subtotal*0.05f;
	        System.out.println("Discount= $"+getDiscount);
	    }
   	    System.out.println("Total   = $"+(subtotal+tax-getDiscount));

	    System.out.println("======================");
    }
}
