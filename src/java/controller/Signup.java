/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.AccountDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Account;

/**
 *
 * @author Norttie
 */
@WebServlet(name = "Signup", urlPatterns = {"/signup"})
public class Signup extends HttpServlet {

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
        String email = request.getParameter("email");
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String comfirmpassword = request.getParameter("comfirmpassword");
        String permission = request.getParameter("permission");
        try {
            boolean isValidForm = true;
            boolean isNotValidEmail = !Validator.Validator.checkEmail(email);
            boolean isNotValidPassword = !Validator.Validator.checkPassWord(password);
            if (isNotValidEmail) {
                request.setAttribute("messE", "email không hợp lệ");
                isValidForm = false;
            }
            Account acc = new AccountDao().getAccountByEmail(email);
            if (acc != null) {
                request.setAttribute("messE", "email đã đăng ký tài khoản ");
                isValidForm = false;
            }
            if (isNotValidPassword) {
                request.setAttribute("messP",
                        "mật khẩu phải có ít nhất 8 ký tự bao gồm chữ hoa, chữ\n"
                        + "thường và số");
                isValidForm = false;
            }
            if (!password.equals(comfirmpassword)) {
                request.setAttribute("messCp",
                        "mật khẩu không khớp ");
                isValidForm = false;
            }

            if (!isValidForm) {
                request.setAttribute("email", email);
                request.setAttribute("pass", password);
                request.setAttribute("username", userName);
                request.setAttribute("cpass", comfirmpassword);
                request.getRequestDispatcher("signup.jsp").forward(request, response);

            } else {
                new dao.AccountDao().createAccount(email, userName, password, permission);
                response.sendRedirect("login.jsp");
            }

        } catch (Exception e) {

        }

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
