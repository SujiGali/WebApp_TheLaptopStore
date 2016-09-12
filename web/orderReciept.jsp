<%-- 
    Document   : orderReciept
    Created on : Dec 13, 2015, 5:50:35 PM
    Author     : SaithKumar
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
   <nav class="navbar navbar-inverse fixed">
      <div class="container-fluid">
         <div class="navbar-header">
            <a class="navbar-brand" href="#">The Laptop Store</a>
         </div>
         <div>
            <ul class="nav navbar-nav">
               <li class="active"><a href="index.jsp">Home</a></li>
               <li><a href="ProductServlet">Show Products</a></li>	
               <li><a href="customerOffers.jsp">Today's Best Deals</a></li>
               <li><a href="aboutUs.jsp">About Us</a></li>
               <li><a href="contactUs.jsp">Contact Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li style="color:white; margin-top: 15px; position:relative"><font size="3px" color="#B0B0B0">Welcome, <%=session.getAttribute("name")%></font></li>
               <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span>Log Out</a></li>
            </ul>
         </div>
      </div>
   </nav>
   <div class="container">
       <form id="login-form" method="POST" action="LoginServlet">
       <center style="margin-top:10%;">
            <table>
                <tr><td><b><font color="yellow" size="50x">Congratulations your order has been placed successfully</font> </b></td></tr>
                   <!-- <tr><td>Click <a href="orderdetails.jsp">here</a> to view order details</td></tr> -->
                    <tr><td>Click <a href="userhome.jsp">here </a> to go to home page</td></tr>
            </table>      
       </center>
       </form>
    </div>
</body>
</html>
