package uncc.tls.Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.PreparedStatement;






import com.sun.scenario.effect.impl.prism.PrImage;

import uncc.tls.modals.CartBean;
import uncc.tls.modals.Product;

public class CartDB {
	CartBean product=new CartBean();
	private PreparedStatement ps1=null;
	private PreparedStatement ps2=null;
	private ResultSet rs=null;
	public void CartData(CartBean product)
	{
		int productID=0;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/thelaptopstore", "root", "root");
			ps1=con.prepareStatement("insert into cart (productName,price,discount,processor,ram,storagee) values (?,?,'0',?,?,?)");
			ps1.setString(5, product.getStorage());
			ps1.setString(4, product.getRam());
			ps1.setString(3, product.getProcessor());
			ps1.setString(2, product.getPrice());
			ps1.setString(1, product.getProductName());
			int i=ps1.executeUpdate();
			if(i==1)
			{
				System.out.println("success");
			}
			else
				System.out.println("failed");
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		catch(ClassNotFoundException c)
		{
			c.printStackTrace();
		}
		
	}
	public ArrayList fetchProducts() {
		// TODO Auto-generated method stub
		ArrayList<CartBean> al=new ArrayList<>();
		float tprice=0;

		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/thelaptopstore", "root", "root");
			ps1=con.prepareStatement("select * from cart");
			rs=ps1.executeQuery();
			while(rs.next())
			{
				CartBean product=new CartBean();
				product.setProductID(rs.getString("productID"));
				product.setProductName(rs.getString("productName"));
				product.setPrice(rs.getString("price"));
				product.setDiscount(rs.getString("discount"));
				product.setProcessor(rs.getString("processor"));
				product.setRam(rs.getString("ram"));
				product.setStorage(rs.getString("storagee"));
				tprice= tprice + Float.parseFloat(rs.getString("price"));
				//System.out.println(tprice);
				product.setTPrice(tprice);
				al.add(product);
			}

		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		catch(ClassNotFoundException f)
		{
			f.printStackTrace();
		}
		return al;
	}
	public String deleteItem(String id) {
		// TODO Auto-generated method stub
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/thelaptopstore", "root", "root");
			ps1=con.prepareStatement("delete from cart where productID=?");
			ps1.setString(1, id);
			int i=ps1.executeUpdate();
			if(i>0)
			{
				return "success";	
			}
			else
			{
				return "fail";

			}

		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		catch(ClassNotFoundException f)
		{
			f.printStackTrace();
		}
		return null;
	}
}