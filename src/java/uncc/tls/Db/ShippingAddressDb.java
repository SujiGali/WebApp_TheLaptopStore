/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uncc.tls.Db;

/**
 *
 * @author Rashmi Gupta
 */

import uncc.tls.modals.ShippingAddressBean;
import uncc.tls.servlets.ShippingAddressServlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ShippingAddressDb {

    public void addShippingAddress(uncc.tls.modals.ShippingAddressBean sa) throws SQLException, ClassNotFoundException{
    
        try{
        System.out.println("We are inside Shipping Address DB class");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/thelaptopstore", "root", "root");   
        String query= "insert into shippingaddress values(?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps= con.prepareStatement(query);
        ps.setString(1, sa.getFirstname());
        ps.setString(2, sa.getLastname());
        ps.setString(3, sa.getLine1());
        ps.setString(4, sa.getLine2());
        ps.setString(5, sa.getCity());
        ps.setString(6, sa.getState());
        ps.setString(7, sa.getPincode());
        ps.setString(8, sa.getCountry());
        ps.setString(9, sa.getMobileNo());
        ps.executeUpdate();
        }
        catch(Exception e){

            e.printStackTrace();            
        }
    }   
}
    

