<%-- 
    Document   : viewCart.jsp
    Created on : Nov 6, 2015, 5:42 PM
    Author     : Sujitha Gali
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="uncc.tls.modals.CartBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>HOME | The Laptop Store</title>
<link rel="stylesheet" href="custom.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body style="background-image: url('images/bgimg2.jpg'); background-size:100%">
	<% ArrayList<CartBean> al=(ArrayList<CartBean>)request.getAttribute("cb"); 
	
if(al.size()>0){
%>
	<nav class="navbar navbar-inverse fixed">
		<div class="container-fluid">
<div class="navbar-header">
               <a class="navbar-brand" href="index.jsp">The Laptop Store</a>
            </div>
            <div>
               <ul class="nav navbar-nav">
                  <li class="active"><a href="index.jsp">Home</a></li>
                  <li class="active"><a href="ProductServlet">Show Products</a></li>				  
                  <li><a href="customOffers.jsp">Today's Best Deals</a></li>
                  <li><a href="aboutUs.jsp">About Us</a></li>
                  <li><a href="contactUs.jsp">Contact Us</a></li>
               </ul>
               <ul class="nav navbar-nav navbar-right">
                <li style="color:white; margin-top: 15px; position:relative"><font size="3px" color="#B0B0B0">Welcome, <%=session.getAttribute("name")%></font></li>
               <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span>Log Out</a></li>

	<%-- <li><a href="${pageContext.request.contextPath}/CartServlet"><span
							class="glyphicon glyphicon-log-in"></span> Cart</a></li> --%>               
               </ul>
			</div>
		</div>
	</nav>
	<div class="container">

		<h3>Shopping Cart</h3>
		<table width="100%" height="100%" cellspacing="50">
			

			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>Price</td>
			</tr>
			<%float i=1; %>
			<%for(CartBean cb:al) {%>
			<tr>
				
				<td><img src="images/AC1_l.jpg" alt="Laptop Image" width="50"
					height="50"></td>
				<td>
					<h4><%=cb.getProductName()%></h4> <br>
				<a href="CartServlet?id=<%=cb.getProductID()%>&action=delete">Delete</a>
				</td>
				<td>
					<h4><%=cb.getPrice()%></h4>
				</td>
				<!-- <td><select><option>1</option>
						<option>2</option>
						<option>3</option>
						option>4</option></select></td> -->
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			
			<%if(i==al.size()){ %>
			<tr>
			<td>&nbsp;</td>
			<td><h3>TOTAL PRICE =</h3></td>
			<td><h3><b><%=cb.getTPrice()%></b></h3></td>
			</tr>
			<%}else{i++;} %>
			
			<%} %>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td><button>
						<a href="index.jsp">Continue Shopping</a>
					</button></td>                                
                                <br/>
			<tr/>
                        <tr>
                            				<td>&nbsp;</td>
				<td>&nbsp;</td>
                                <td><button>
						<a href="Address.jsp">Proceed to checkout</a>
					</button></td>
			</tr>
			
		</table>
	</div>
	<%}else{ %>Failed<%} %>
</body>
</html>