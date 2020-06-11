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
    private String name; 
    private int accountNumber; 
    private double transactionCode; 
    private String paymentType; 
    private double beginningBalance; 
    private double endBalance; 
    private double creditLimit; 
    private int numberPurchases; 
    private int numberTransactions; 
    private double costOfPurchase; 
    private double totalPurchaseSum; 
    private double totalPaymentAmount;
    private double totalPayments; 

        public double getTransaction()
{
    if (transactionCode.equals("1")) //if a purchase is being made
    {
        if (paymentType.equals("cash")) 
            return endBalance = ;
        else if (paymentType.equals("credit")) 
            return creditLimit = getCreditLimit(creditLimit);
    }
    if (transactionCode = 2) 
    {
        if (paymentType.equals("cash") //
            return endBalance = getEndBalance();        
        else if (paymentType.equals("credit")) 
    }
    if (transactionCode = 0) 
    {   
        System.out.println("TRANSACTION COMPLETED. THANK YOU.")
        return;
    }
}
