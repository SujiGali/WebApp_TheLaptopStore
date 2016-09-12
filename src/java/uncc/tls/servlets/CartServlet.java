package uncc.tls.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import uncc.tls.Db.CartDB;
import uncc.tls.modals.CartBean;

/**
 * Servlet implementation class CartServlet
 */
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ArrayList<CartBean> cb=new ArrayList<CartBean>();
		String act=request.getParameter("action");
		System.out.println(act);
		CartDB cd=new CartDB();
		cb=cd.fetchProducts();
		request.setAttribute("cb", cb);
		if(act.equals("delete"))
		{
		    String id=request.getParameter("id");
			String res=cd.deleteItem(id);
			if(res=="null")
			{
				RequestDispatcher rd=request.getRequestDispatcher("emptycart.jsp");
				rd.forward(request, response);
			}
			cb=cd.fetchProducts();
			request.setAttribute("cb", cb);
		    
		}
		RequestDispatcher rd=request.getRequestDispatcher("viewCart.jsp");
		rd.forward(request, response);
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("I am in CartServlet");
		String act=request.getParameter("action");
		System.out.println(act);
		CartDB cd=new CartDB();
		CartBean product=new CartBean();
		if(act.equals("add"))
		{
		System.out.println("in add function");
		String name=request.getParameter("name");
		String price=request.getParameter("price");
		String processor=request.getParameter("processor");
		String ram=request.getParameter("ram");
		String hdd=request.getParameter("hdd");
		

		product.setProductName(name);
		product.setPrice(price);
		product.setProcessor(processor);
		product.setRam(ram);
		product.setStorage(hdd);
		cd.CartData(product);
		doGet(request, response);
		}
		
		//processRequest(request, response);
	}

}
