/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author STARLORD
 */
public class SignupDao {
    public static boolean validate(String email,String pwd,String rpwd,String ctn){  
boolean status=false;  
try{  
      Class.forName("com.mysql.cj.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/hostel?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true","root","qwASZX1@");  

PreparedStatement ps=con.prepareStatement(  
"select * from signup");  
ps.setString(1,email);  
ps.setString(2,pwd);  
ps.setString(3,rpwd);
ps.setString(4,ctn);
      
ResultSet rs=ps.executeQuery();  
status=rs.next();  
          
}catch(Exception e){System.out.println(e);}  
return status;  
}  
}  