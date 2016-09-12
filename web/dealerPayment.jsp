<%-- 
    Document   : dealerPayment
    Created on : Dec 13, 2015, 5:08:44 PM
    Author     : SaithKumar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <title>HOME | The Laptop Store</title>
   <link rel="stylesheet" href="custom.css">
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
   <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body style="background-image: url('images/bgimg2.jpg'); background-size:100%">
   <nav class="navbar navbar-inverse fixed">
      <div class="container-fluid">
         <div class="navbar-header">
            <a class="navbar-brand" href="#">The Laptop Store</a>
         </div>
         <div>
            <ul class="nav navbar-nav">
               <li class="active"><a href="dealerhome.jsp">Home</a></li>
               <li><a href="dealerOffers.jsp">Today's Best Deals</a></li>
               <li><a href="aboutUs.jsp">About Us</a></li>
               <li><a href="contactUs.jsp">Contact Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li style="color:white; margin-top: 5px"><font size="5px">Welcome, <%=session.getAttribute("name")%></font></li>
               <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span>Log Out</a></li>
            </ul>
         </div>
      </div>
   </nav>
   <div class="container">
   
   <h1>Enter Card Details</h1>
      	
      	<form name="payment_details" method="POST" action="PaymentServlet">
      	 <table>
      	 		<tr>
      	 			<td><label>Name on card:</label></td>
      	 		</tr>
      	 		<tr>
      	 		 	<td><input type="text" name="card_name" size="36"></td>
      	 		 </tr>
      	 		<tr>
      	 			<td><label>Card Number:</label></td>
      	 		</tr>
      	 		<tr>
      	 		    <td><input type="text" name="card_number" size="36"></td>
      	 		</tr>
      	 		<tr>
      	 			<td><label>Expiration Date:</label></td>
      	 		</tr>
      	 		<tr>
        	 		<td>
                                    <select name="month"  ><option value="-1">--select--</option><option value="1">01</option><option value="2">02</option><option value="3">03</option><option value="4">04</option><option value="5">05</option><option value="6">06</option><option value="7">07</option><option value="8">08</option><option value="9">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>
                                    <select name="year"  ><option value="-1">--select--</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023">2023</option><option value="2024">2024</option><option value="2025">2025</option></select>
                                </td>
        	 	</tr>
      	 		<tr>
      	 			<td><label>Security code:</label></td>
      	 		</tr>
      	 		<tr>
      	 		    <td><input type="text" name="security_code"  size="36"></td>
      	 		</tr>
      	 <tr><td>&nbsp;</td></tr>		
      	 <tr><td>&emsp;&emsp;&emsp;&emsp;&emsp;<input type="submit" value="Submit" style="width:100px" ></td></tr>
      	      	 
      	 </table>
      	 </form>                              
    </div>
</body>
</html>