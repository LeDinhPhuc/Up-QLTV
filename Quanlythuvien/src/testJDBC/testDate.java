/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testJDBC;

import quanlythuvien.CountDate;

/**
 *
 * @author Đình Phúc
 */
public class testDate {
    public static void main(String []args){
        CountDate cd = new CountDate();
        long cd1 = cd.soNgay("2018-01-01","2018-01-02");
        System.out.println(cd1);        
    }
           
}
