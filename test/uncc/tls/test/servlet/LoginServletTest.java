/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uncc.tls.test.servlet;

import uncc.tls.servlets.LoginServlet;
import uncc.tls.Db.UserLoginDB;
import java.sql.Connection;
import java.sql.DriverManager;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;
import org.junit.runners.Suite;
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
import java.io.IOException;  
import java.io.PrintWriter;
import static org.junit.Assert.assertEquals;

/**
 *
 * @author sourabh
 */
@RunWith(Suite.class)
@Suite.SuiteClasses({uncc.tls.test.servlet.LoginServletTest.class})
public class LoginServletTest {

    @BeforeClass
    public static void setUpClass() throws Exception {

        System.out.println("We are in TEST USer REGISTRATION");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/thelaptopstore", "root", "root");   

    }

    @AfterClass
    public static void tearDownClass() throws Exception {
    }

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }
    
    
    public void testUser(HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException{
        System.out.println("We are in Login test");
        String userName=request.getParameter("uname");
            String password=request.getParameter("userpass");
              
        UserLoginDB instance=new UserLoginDB();
        boolean expresult = true;
        boolean result=UserLoginDB.validate(userName,password);
        assertEquals(expresult,result);
        
        
    }
    }
    
