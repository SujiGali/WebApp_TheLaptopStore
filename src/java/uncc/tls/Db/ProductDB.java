/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uncc.tls.Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import uncc.tls.modals.Product;

/**
 *
 * @author Rashmi
 */
public class ProductDB {
    
    public ArrayList<Product> productData() throws ClassNotFoundException, SQLException
    {
        ArrayList<Product> pall= new ArrayList();
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/thelaptopstore", "root", "root");
        String query= "SELECT * FROM products;";
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery(query);
        while(rs.next())
        {
            Product p = new Product();
            p.setProductID(rs.getString("productID"));
            p.setProductName(rs.getString("productName"));
            p.setPrice(rs.getString("price"));
            p.setDiscount(rs.getString("discount"));
            p.setProcessor(rs.getString("processor"));
            p.setRam(rs.getString("ram"));
            p.setStorage(rs.getString("storagee"));
            p.setOs(rs.getString("os"));
            p.setUrl(rs.getString("url"));
            pall.add(p);
        }
        return pall;
    }
    
    
    
}
