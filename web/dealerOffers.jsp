<%-- 
    Document   : offers_customers.jsp
    Created on : Nov 8, 2015, 11:36 AM
    Author     : Sujitha Gali
--%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
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
      <div class="row text-center">
          <h1><font face='verdana' color='red'>OFFERS!!!</font></h1>
         <div class="col-sm-4">
            <div class="thumbnail">
               <img src="images/H1_l.jpg" alt="Laptop Image" width="250" height="200">
               <p><strong>HP 15-ac120nr</strong></p>
               <p><font color='red'>Buy 5 get 30% discount</font></p>
               <p><del>$2271.4</del>&nbsp;<font color='red'>$1589.98</font></p>
               
            </div>
         </div>
         <div class="col-sm-4">
            <div class="thumbnail">
               <img src="images/H2_l.jpg" alt="Laptop Image" width="250" height="200">
               <p><strong>HP Pavilion 13-s120nr</strong></p>
               <p><font color='red'>Buy 3 get 15% discount</font></p>
               <p><del>$1377.00</del>&nbsp;<font color='red'>$1170.45</font></p>
               
            </div>
         </div>
         <div class="col-sm-4">
            <div class="thumbnail">
               <img src="images/D12_l.jpg" alt="Laptop Image" width="250" height="200">
               <p><strong>Dell Inspiron i7359-1145SLV</strong></p>
               <p><font color='red'>Buy 6 get 25% discount</font></p>
               <p><del>$3299.94</del>&nbsp;<font color='red'>$2474.95</font></p>
               
            </div>
         </div>
      </div>
	  <br/><br/>
	  
	     <div class="row text-center">
         <div class="col-sm-4">
            <div class="thumbnail">
               <img src="images/D5_l.jpg" alt="Laptop Image" width="250" height="200">
               <p><strong>Dell Inspiron 15 5000 Series</strong></p>
               <p><font color='red'>Buy 3 get 20% discount</font></p>
               <p><del>$2247</del>&nbsp;<font color='red'>$1797.60</font></p>               
            </div>
         </div>
         <div class="col-sm-4">
            <div class="thumbnail">
               <img src="images/L1_l.jpg" alt="Laptop Image" width="250" height="200">
               <p><strong>Lenovo Ideapad 100</strong></p>
               <p><font color='red'>Buy 10 get 35% discount</font></p>
               <p><del>$3269.00</del>&nbsp;<font color='red'>$2124.85</font></p>               
            </div>
         </div>
         <div class="col-sm-4">
            <div class="thumbnail">
               <img src="images/L2_l.jpg" alt="Laptop Image" width="250" height="200">
               <p><strong>Lenovo G50</strong></p>
               <p><font color='red'>Buy 4 get 25% discount</font></p>
               <p><del>$1595.40</del>&nbsp;<font color='red'>$1196.55</font></p>               
            </div>
         </div>
         </div>
       </div>      
</body>
</html>
