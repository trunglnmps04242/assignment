/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fpt.entity;

import fpt.dao.CustomerDAO;
import java.util.List;

/**
 *
 * @author HP
 */
public class NewClass {
    public static void main(String[] args) {
        CustomerDAO a = new CustomerDAO();
        List<Customers> av = a.layDanhSachKH("");
        
        for (int i = 0; i < 10; i++) {
            System.out.println(av.get(i).getName());
        }
        
        
    }
}
