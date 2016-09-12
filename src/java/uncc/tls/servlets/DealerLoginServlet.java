/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uncc.tls.servlets;


  
import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
  
import uncc.tls.Db.DealerLoginDB;  
  
public class DealerLoginServlet extends HttpServlet{  
  
    private static final long serialVersionUID = 1L;  
  
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)    
            throws ServletException, IOException {    
  
        response.setContentType("text/html");    
        try (PrintWriter out = response.getWriter()) {
            String n=request.getParameter("uname");
            String p=request.getParameter("userpass");
            
            HttpSession session = request.getSession(false);
            if(session!=null)
                session.setAttribute("name", n);
            
            if(DealerLoginDB.validate(n, p)){
                RequestDispatcher rd=request.getRequestDispatcher("dealerhome.jsp");
                rd.forward(request,response);
            }
            else{
                out.print("<p style=\"color:red\">Sorry username or password error</p>");
                out.println(n);
                out.println(p);
                RequestDispatcher rd=request.getRequestDispatcher("dealerlogin.jsp");
                rd.include(request,response);
            }
        }    
    }    
} 
