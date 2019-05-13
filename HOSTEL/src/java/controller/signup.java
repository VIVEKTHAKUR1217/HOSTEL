/*


* To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modal.SignupDao;

/**
 *
 * @author STARLORD
 */
public class signup extends HttpServlet {

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
            /* TODO output your page here. You may use 
            following sample code. */
            String n=request.getParameter("email");  
String p=request.getParameter("pwd");  
String e=request.getParameter("rpwd");
String c=request.getParameter("ctn");
if(SignupDao.validate(n, p,e,c)){  
        HttpSession session=request.getSession();
        session.setAttribute("u",n);
        session.setAttribute("x",p);
        session.setAttribute("y",e);
        session.setAttribute("z",c);
}
          
try{  
Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/hostel?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true","root","qwASZX1@");  
    
PreparedStatement ps=con.prepareStatement(  
"insert into signup values(?,?,?,?)");  
  
ps.setString(1,n);  
ps.setString(2,p);  
ps.setString(3,e); 
ps.setString(4,c); 
          
int i=ps.executeUpdate();  
if(i>0)  
request.getRequestDispatcher("login.jsp").forward(request, response); 
      
          
}catch (Exception e2) {System.out.println(e2);}  
          
out.close();  
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
