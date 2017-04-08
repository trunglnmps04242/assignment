/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fpt.dao;


import fpt.entity.Customers;
import fpt.util.HibernateUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author HP
 */
public class CustomerDAO {
    public  CustomerDAO() {
    }
    
     public static List<Customers> layDanhSachKH(String name) {
        List<Customers> list = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        String sql = "from Customers where Name like '%"+name+"%'";
        Query query = session.createQuery(sql);
        list = query.list();
        return list;
    }
     
      public static Customers layThongTinKH(String username) {
         Session session = HibernateUtil.getSessionFactory().openSession();
         session.beginTransaction();
        Customers cus = (Customers) session.get(Customers.class, username);
         return cus;
    };
      
     public static boolean xoaKhachHang(String maKhachHang) {
      Customers kh =  CustomerDAO.layThongTinKH(maKhachHang);
        
        if (kh == null) {
            return false;
        }
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.getTransaction().begin();
            session.delete(kh);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            System.out.print(e);
            return false;
        }
    }
    public static boolean CapNhatKhachHang(Customers kh) {
        
        if (CustomerDAO.layThongTinKH(kh.getUsername()) == null) {
            return false;
        }
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.getTransaction().begin();
            session.update(kh);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            System.out.print(e);
            return false;
        }
    }
    
    public static boolean themKhachHang(Customers kh) {
        
        if (CustomerDAO.layThongTinKH(kh.getUsername()) != null) {
            return false;
        }
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            session.getTransaction().begin();
            session.save(kh);
            session.getTransaction().commit();
            return true;
        } catch (Exception e) {
            session.getTransaction().rollback();
            System.out.print(e);
            return false;
        } finally{
            session.close();
        }
    }
}
