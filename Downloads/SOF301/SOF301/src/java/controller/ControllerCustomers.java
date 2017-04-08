/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import fpt.dao.CustomerDAO;
import fpt.entity.Customers;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import model.Customers;

/**
 *
 * @author HP
 */
@WebServlet(name = "ControllerCustomers", urlPatterns = {"/ControllerCustomers"})
public class ControllerCustomers extends HttpServlet {
    private List<Customers> list = CustomerDAO.layDanhSachKH("");
    private String username;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String action = request.getParameter("action");
             if (action.equals("Login")) {
                String user = request.getParameter("txtUser");
                String pass = request.getParameter("txtPass");
                Customers cus = new Customers();
                 if (user.isEmpty() || pass.isEmpty()) {
                     out.print("<p style='font-size: 250%; color: red;'><b>Đăng nhập thất bại</b></p>");
                       return;
                 }
                 for (int i = 0; i < list.size(); i++) {
                     if ((user.equals(list.get(i).getUsername())) && pass.equals(list.get(i).getPassword())) {
                        String url = "customers2.jsp";
                        HttpSession session= request.getSession(true);
                        session.setAttribute("Username", user);
                        RequestDispatcher rd = request.getRequestDispatcher(url);
                        rd.forward(request, response);
                     }else{
                         out.print("<p style='font-size: 250%; color: red;'><b>Đăng nhập thất bại</b></p>");
                         return; 
                     }
                 }

                
            }
            
            
            if (action.equals("Search")) {
                String tenkh = request.getParameter("txtTenKH");
                list = CustomerDAO.layDanhSachKH(tenkh);
                request.setAttribute("listKH", list);
                String url = "customers2.jsp";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            } 
            else if (action.equals("Delete")) {
                String makh = request.getParameter("txtMaKH");
                 boolean daxoa = CustomerDAO.xoaKhachHang(makh);
               if (daxoa) {
                    String url = "ControllerCustomers?txtTenKH=&action=Search";
                   RequestDispatcher rd = request.getRequestDispatcher(url);
                   rd.forward(request, response);
               }

            } 
            else if (action.equals("Insert")) {
                String username = request.getParameter("txtMaKHin");
                String name = request.getParameter("txtTenKHin");
                String matkhau = request.getParameter("txtMatKhauin");
                String email = request.getParameter("txtEmailin");
                String gender = request.getParameter("txtGenderin");
                String role = request.getParameter("txtRolein");
                if (username.isEmpty() || name.isEmpty() || matkhau.isEmpty() || email.isEmpty() || gender.isEmpty()) {
                    return;
                } else {
                     list = CustomerDAO.layDanhSachKH("");
                    
                    for (int i = 0; i < list.size(); i++) {
                        if (list.get(i).getUsername().equalsIgnoreCase(username)) {
                            out.print("<p style='font-size: 250%; color: red;'><b>Trùng username</b></p>");
                            return;
                        }
                    }
                    
                    Customers kh = new Customers(username, matkhau, name, gender, email, role);
                    boolean dathem = CustomerDAO.themKhachHang(kh);
                    if (dathem) {
                        String url = "ControllerCustomers";
                        RequestDispatcher rd = request.getRequestDispatcher(url);
                        rd.forward(request, response);
                        
                    }
                    list = CustomerDAO.layDanhSachKH("");
                    request.setAttribute("listKH", list);
                    String url = "customers2.jsp";
                    RequestDispatcher rd = request.getRequestDispatcher(url);
                    rd.forward(request, response);
                }
            } 
            else if (action.equals("Edit")) {
                String txtusernameE = request.getParameter("txtusernameE");
                String txtpasswordE = request.getParameter("txtpasswordE");
                String txtnameE = request.getParameter("txtnameE");
                String txtgenderE = request.getParameter("txtgenderE");
                String txtemailE = request.getParameter("txtemailE");
                String txtroleE = request.getParameter("txtroleE");
                
                Customers kh = new Customers(txtusernameE, txtpasswordE, txtnameE, txtgenderE, txtemailE, txtroleE);
                request.setAttribute("kh", kh);
                username = txtusernameE;
                String url = "update.jsp"; 
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);

            } 
            else if (action.equals("Update")) {
                // Id ko can lay lai,  cho bang luon cai id push sang update.jsp
                String txtpasswordE = request.getParameter("txtPassword");
                String txtnameE = request.getParameter("txtName");
                String txtgenderE = request.getParameter("txtGender");
                String txtemailE = request.getParameter("txtEmail");
                String txtroleE = request.getParameter("txtRole");

                
                Customers kh = new Customers(username, txtpasswordE, txtnameE, txtgenderE, txtemailE, txtroleE);

                CustomerDAO.CapNhatKhachHang(kh);
                /*if (dacapnhat) {  
                    String url = "ControllerKhachhang";
                    RequestDispatcher rd = request.getRequestDispatcher(url);
                    rd.forward(request, response);
                }*/
                List<Customers> list = CustomerDAO.layDanhSachKH("");
                request.setAttribute("listKH", list);
                String url = "customers2.jsp";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            }
        
        } catch (Exception e) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
