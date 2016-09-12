/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uncc.tls.servlets;

import uncc.tls.modals.Dealer;
import uncc.tls.Db.DealerDB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author SaithKumar
 */
public class DealerRegistrationServlet extends HttpServlet{
    

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
        //processRequest(request, response);
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
        //processRequest(request, response);
        
        PrintWriter out=response.getWriter();
        String userName = request.getParameter("username");
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("Password");
        String phoneNumber = request.getParameter("phonenumber");
        String gender =request.getParameter("sex");
        
        Dealer u = new Dealer();
        u.setUserName(userName);
        out.println(userName);
        u.setFirstName(firstName);
        u.setLastName(lastName);
        u.setEmail(email);
        u.setPassword(password);
        u.setPhoneNumber(phoneNumber);
        u.setGender(gender);
        
      //  UserDB udb = new UserDB();
        
        try {
           // UserDB.addUser(u);
            out.println("alert");
            Class.forName("com.mysql.jdbc.Driver");
            Connection  con=DriverManager.getConnection
        ("jdbc:mysql://localhost:3306/thelaptopstore","root","root");
        out.println("connection established");
            //System.out.println("<script>alert(\" Registered Successfully\")</script>");
            //getServletContext().getRequestDispatcher("userlogin.jsp").forward(request, response);
            PreparedStatement ps=con.prepareStatement("insert into dealerinfo (userName,firstName,lastName,email,password,phoneNumber,gender) values ('" +userName+ "','" +firstName+ "','" +lastName+ "','" +email+ "','" +password+ "','" +phoneNumber+ "','" +gender+ "')");
            out.println("insert ho raha hai ka");
            response.sendRedirect("dealerlogin.jsp");
            
            //ps.setString(1,userName);
            out.println("ps.executeQuery(select * from dealerinfo)");
           int i=ps.executeUpdate();
           if(i>0);
           {
           out.println("registered");
            }
            
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(RegistrationServlet.class.getName()).log(Level.SEVERE, null, ex);
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
