<%-- 
    Document   : addressPage.jsp
    Created on : Nov 6, 2015, 8:20 PM
    Author     : Sujitha Gali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <title> Address | The Laptop Store</title>
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
               <li class="active"><a href="userhome.jsp">Home</a></li>
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
   
   <h2>Enter Shipping Address</h2>
      	
   <form name="ship_address" action="ShippingAddressServlet" method="POST">
      	 <table>
      	 		<tr>
      	 			<td><label>First Name:</label></td>
      	 		</tr>
      	 	
      	 		<tr><td><input type="text" name="firstname" size="36"></td></tr>
      	 		<tr>
      	 			<td><label>Last Name:</label></td>
      	 		</tr>
      	 	
      	 		<tr><td><input type="text" name="lastname" size="36"></td></tr>

                        <tr>
      	 			<td><label>Address Line1:</label></td>
      	 		</tr>
      	 		<tr><td><input type="text" name="address1"  placeholder="Street Name" size="36"></td></tr>
      	 		<tr>
      	 		<tr>
      	 			<td><label>Address Line2:</label></td>
      	 		</tr>
      	 		<tr><td><input type="text" name="address2"  placeholder="Apt No" size="36"></td></tr>
      	 		<tr>
      	 			<td><label>Town/City:</label></td>
      	 		</tr>
      	 		<tr><td><input type="text" name="city"  size="36"></td></tr>
      	 		<tr>
      	 			<td><label>State:</label></td>
      	 		</tr>
      	 		<tr><td><input type="text" name="state"  size="36"></td></tr>
      	 		<tr>
      	 			<td><label>Pincode:</label></td>
      	 		</tr>
      	 		<tr><td><input type="text" name="pincode"  size="36"></td></tr>
      	 		<tr>
      	 			<td><label>Country:</label></td>
      	 		</tr>
      	 		<tr><td>
                                <input type="text" name="country"  size="36">
<!--                                <select name="country" style="width:200px;"><option value="-1">--select--</option><option value="India">India</option><option value="USA">USA</option><option value="Africa">Africa</option><option value="Australia">Australia</option></select>
-->
                            </td></tr>
      	 		<tr>
      	 			<td><label>Mobile Number:</label></td>
      	 		</tr>
      	 		<tr><td><input type="text" name="mobile_number" size="36"></td></tr>
      	 <tr><td>&nbsp;</td></tr>
      	 <tr><td><input type="submit" value="Ship to this address" class="btn btn-warning" onclick="submitForm();"></td></tr>
      	 
      	 </table>
      	 </form>                              
   
       </div>
</body>
</html>
