/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.accountDBcontext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.account;

/**
 *
 * @author Admin
 */
public class regis extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

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
        request.getRequestDispatcher("views/register.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    accountDBcontext dao;
    public void init() {
        dao = new accountDBcontext();
    }
    
    private account checkUsername(String username) {
        for (account list : dao.loadAccount()) {
            if(list.getUssername().trim().equals(username)) {
                return list;
            }
        }
        return null;
    }  // ki???m tra xem username n??y ???? t???n t???i ch??a
    
    private account checkEmail(String email) {
        for (account list : dao.loadAccount()) {
            if ((list.getEmail() + " ").trim().equals(email)) {
                return list;
            }
        }
        for (account object : dao.loadAccount()) {
            
        }
        return null;
    } // ki???m tra xem enail n??y ???? ???????c ????ng k?? ch??a
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String repassword = request.getParameter("repassword");
        String email = request.getParameter("email");
        accountDBcontext acc = new accountDBcontext();
        account account = new account();
        account.setUssername(username);
        account.setPassword(password);
        account.setEmail(email);
        account.setDeci("0");
        String alert;
        if(checkEmail(email)!=null) {
            request.setAttribute("alert", "Email ???? ???????c ????ng k??");
            doGet(request, response);
        } // email ???? ???????c ????ng k??
        if(!password.equals(repassword)) {
            alert = "sai m???t kh???u nh???p l???i";
            request.setAttribute("alert", alert);
            doGet(request, response);
        } // sai m??t kh???u nh???p l???i
        if(checkUsername(username) == null) {
            acc.register(account);
            request.getRequestDispatcher("views/login.jsp").forward(request, response);
        } // ????ng k?? th??nh c??ng
        else {
            alert = "t??n ????ng k?? ???? ???????c d??ng";
            request.setAttribute("alert", alert);
            doGet(request, response);
        } // username ???? t???n t???i
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
