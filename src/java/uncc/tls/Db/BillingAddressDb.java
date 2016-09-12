/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uncc.tls.Db;

import uncc.tls.modals.BillingAddressBean;
import uncc.tls.servlets.BillingAddressServlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Rashmi Gupta
 */
public class BillingAddressDb {

     public void addBillingAddress(uncc.tls.modals.BillingAddressBean ba) throws ClassNotFoundException, SQLException
    {
        try{
        System.out.println("We are in add Billing Address Adding");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/thelaptopstore", "root", "root");   
        String query= "insert into billingAddress values(?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps= con.prepareStatement(query);
        ps.setString(1, ba.getFirstname());
        ps.setString(2, ba.getLastname());
        ps.setString(3, ba.getLine1());
        ps.setString(4, ba.getLine2());
        ps.setString(5, ba.getCity());
        ps.setString(6, ba.getState());
        ps.setString(7, ba.getPincode());
        ps.setString(8, ba.getCountry());
        ps.setString(9, ba.getMobileNo());
        ps.executeUpdate(); 
        }
        catch(Exception e){
            e.printStackTrace();        
        }    
    }
     
}
