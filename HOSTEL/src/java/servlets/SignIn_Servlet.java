/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.*;

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author VIVEK
 */
public class SignIn_Servlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
             Class.forName("com.mysql.cj.jdbc.Driver");   
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/mydb?useSSL=false","root","Vivekthakur1217@@");   
           
           Statement stmt = conn.createStatement();
           ResultSet rs = stmt.executeQuery("SELECT* FROM s_signup");
        String s1 = request.getParameter("email");
        String s2 = request.getParameter("password");
       int flag=0;
           while(rs.next())
           {
               if(s1.equals(rs.getString("a_email")))
               {
                   if(s2.equals(rs.getString("a_password")))
                   {
                       flag=1;
                   }
               }
           }
           if(flag==1)
           {
               HttpSession session=request.getSession();
            session.setAttribute("user",s1);
            session.setAttribute("pass",s2);
            // Set expiry time of the session to 30mins
            session.setMaxInactiveInterval(30*60);
            String url=response.encodeRedirectURL("Login_Success");
            response.sendRedirect(url);
           }
           else
           {
               request.getSession().invalidate();
            response.sendRedirect("Login_Success");
           }
        }
    catch(Exception e)
    {
        System.out.println(e);
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