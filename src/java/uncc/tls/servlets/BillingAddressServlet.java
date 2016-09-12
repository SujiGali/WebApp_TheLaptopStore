/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uncc.tls.servlets;

import uncc.tls.Db.BillingAddressDb;
import uncc.tls.modals.BillingAddressBean;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rashmi Gupta
 */
public class BillingAddressServlet extends HttpServlet {

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
//        processRequest(request, response);
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
        BillingAddressBean ba = new BillingAddressBean();
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String line1 = request.getParameter("address1");        
        String line2 = request.getParameter("address2");
        String city =  request.getParameter("city");
        String state = request.getParameter("state");
        String pincode = request.getParameter("pincode");
        String country  = request.getParameter("country");
        String mobileNo  = request.getParameter("mobile_number");
        ba.setFirstname(firstname);
        ba.setLastname(lastname);
        ba.setLine1(line1);
        ba.setLine2(line2);
        ba.setCity(city);
        ba.setState(state);
        ba.setPincode(pincode);
        ba.setCountry(country);
        ba.setMobileNo(mobileNo);

        try{
            BillingAddressDb badb = new BillingAddressDb();
            badb.addBillingAddress(ba);
            getServletContext().getRequestDispatcher("/payment.jsp").forward(request, response);            
        }
        catch(ClassNotFoundException | SQLException ex){
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