<%-- 
    Document   : contactUs
    Created on : Nov 16, 2015, 7:09:56 PM
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
            <a class="navbar-brand" href="index.jsp">The Laptop Store</a>
         </div>
         <div>
            <ul class="nav navbar-nav">
               <li class="active"><a href="index.jsp">Home</a></li>
               <li><a href="todaysbestdeals.jsp">Today's Best Deals</a></li>
               <li><a href="aboutUs.jsp">About Us</a></li>
               <li><a href="contactUs.jsp">Contact Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
               <li><a href="dealerregistration.jsp"><span class="glyphicon glyphicon-briefcase"></span> Dealer Sign Up</a></li>
               <li><a href="registration.jsp"><span class="glyphicon glyphicon-user"></span> User Sign Up</a></li>
               <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
               <li><a href="dealerlogin.jsp"><span class="glyphicon glyphicon-log-in"></span>Dealer Login</a></li>
            </ul>
         </div>
      </div>
   </nav>
   <div class="container">
       <center style="margin-top:10%;">
            <table>
                    <tr><td><b>Email ID: customercare@tls.com</b></td>
                    <tr><td><b>Phone: +1(980)242-6275</b></td>
                    <tr><td></td><td><input type="button" value="Login" class="btn btn-primary" onclick="loginconfirmAlertbox()"/></td></tr>
            </table>      
       </center>
    </div>
</body>
</html>
