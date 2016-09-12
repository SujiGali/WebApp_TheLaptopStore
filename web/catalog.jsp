<%-- 
   Document   : template
   Created on : Nov 8, 2015, 5:32:11 PM
   Author     : Rashmi Gupta
   --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      <style>
         #header {
         background-color:black;
         color:white;
         text-align:center;
         padding:5px;
         }
         #nav {
         line-height:30px;
         background-color:white;
         height:300px;
         width:20%;
         float:left;
         padding:5px;	      
         }
         #section {
         width:60%;
         float:left;
         padding:10px;	 	 
         }
         #footer {
         background-color:black;
         color:white;
         clear:both;
         text-align:center;
         padding:5px;	 	 
         }
         .catalogImage{
         width: 330px;
         height: 400px;
         //    border: 5px solid #D8D8D8;
         }
      </style>
   </head>
   <body style="background-image: url('images/bgimg2.jpg'); background-size:100%">
      <nav class="navbar navbar-inverse fixed">
         <div class="container-fluid">
            <div class="navbar-header">
<div class="navbar-header">
               <a class="navbar-brand" href="index.jsp">The Laptop Store</a>
            </div>
            <div>
               <ul class="nav navbar-nav">
                  <li class="active"><a href="index.jsp">Home</a></li>
             <li class="active"><a href="ProductServlet">Show Products</a></li>				  
                  <li><a href="customOffers.jsp">Today's Best Deals</a></li>
                  <li><a href="#">About Us</a></li>
                  <li><a href="#">Contact Us</a></li>
               </ul>
               <ul class="nav navbar-nav navbar-right">
					<li><a href="dealerregistration.jsp"><span
							class="glyphicon glyphicon-briefcase"></span> Dealer Sign Up</a></li>
					<li><a href="registration.jsp"><span
							class="glyphicon glyphicon-user"></span> User Sign Up</a></li>
					<li><a href="login.jsp"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="dealerlogin.jsp"><span class="glyphicon glyphicon-log-in"></span>Dealer Login</a></li>
	<%-- <li><a href="${pageContext.request.contextPath}/CartServlet"><span
							class="glyphicon glyphicon-log-in"></span> Cart</a></li> --%>               
               </ul>
            </div>
         </div>
      </nav>
      <div class="nav" id="nav">
         <form action="FilterSearchServlet" method="GET">
            <table>
               <td>
               <tr>
                  <br><strong> Operating System</strong><br>
                  <input type="checkbox" name="OS" value="windows 7">Windows 7<br>
                  <input type="checkbox" name="OS" value="windows 8">Windows 8<br>
                  <input type="checkbox" name="OS" value="windows 10">Windows 10<br>
                  <input type="checkbox" name="OS" value="macos">MAC OS<br>
                  <input type="checkbox" name="OS" value="chrome">Chrome OS<br>
                  <input type="checkbox" name="OS" value="windowsxp">Windows XP<br> 
               </tr>
               <tr>
                  <br><strong>Processor Type</strong><br>
                  <input type="checkbox" name="PT" value="Intel Core i3 5th Gen">i3 5th Generation<br>
                  <input type="checkbox" name="PT" value="Intel Core i5 5th Gen">i5 5th Generation<br>
                  <input type="checkbox" name="PT" value="Intel Core i7 5th Gen">i7 5th Generation<br>
                  <input type="checkbox" name="PT" value="Intel Core i3 6th Gen">i3 6th Generation<br>
                  <input type="checkbox" name="PT" value="Intel Core i5 6th Gen">i5 6th Generation<br>
                  <input type="checkbox" name="PT" value="Intel Core i7 6th Gen">i7 6th Generation<br> 
               </tr>
               <tr>
                  <br><strong>RAM SIZE</strong><br>
                  <input type="checkbox" name="RS" value="12 GB">12 GB<br>
                  <input type="checkbox" name="RS" value="8 GB">8 GB<br>
                  <input type="checkbox" name="RS" value="4 GB">4 GB<br>
                  <input type="checkbox" name="RS" value="2 GB">2 GB<br>
               </tr>
               <tr>
                  <br><strong>Hard Drive</strong><br> 
                  <input type="checkbox" name="HD" value="2 TB">2 TB<br>
                  <input type="checkbox" name="HD" value="1 TB">1 TB<br>
                  <input type="checkbox" name="HD" value="750 GB">750 GB<br>            
                  <input type="checkbox" name="HD" value="500 GB">500 GB<br>
                  <input type="checkbox" name="HD" value="256 GB">256 GB<br>
               </tr>
               <input type="submit" name="submit"> 
               <button OnClick=" location.href='ProductServlet'">Reset</button> 
               </tr>
            </table>
         </form>
      </div>
      <div class="container">
         <div class="row text-center">
            <c:forEach var="product" items="${ProductInfo}">
               <div class="col-sm-4">
                  <div class="thumbnail">
                     <div class="catalogImage">    
                        <img  width="230" height="350" src="${product.url}" alt="${product.productName}">
                     </div>
                     <p><strong>${product.productName}</strong></p>
                     <p>Price:$ ${product.price}</p>
                     <p>Operating System: ${product.os}</p>
                     <button class="btn" data-toggle="modal" data-target="#${product.productID}" >Preview</button>
                  </div>
               </div>
            </c:forEach>
         </div>
         <div>
            <c:forEach var="product" items="${ProductInfo}">
               <div class="modal fade" id="${product.productID}" role="dialog">
                  <div class="modal-dialog">
                     <!-- Modal content-->
                     <div class="modal-content">
                        <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal">&times;</button>
                           <h4><span class="glyphicon glyphicon-lock"></span>Preview</h4>
                        </div>
                        <div class="modal-body">
                           <form role="form">
                              <div class="form-group image_preview">
                                 <img src="${product.url}" alt="Laptop Image" width="375" height="300">
                              </div>
                              <p><strong>Name : ${product.productName}</strong></p>
                              <p>Price : $ ${product.price}</p>
                              <p>Processor: ${product.processor}</p>
                              <p>RAM: ${product.ram}</p>
                              <p>Hard Disk: ${product.storage}</p>
                              <p>Discount: ${product.discount}</p>
                              <p>OS : ${product.os}</p>
                              <button type="submit" class="btn btn-block"><a href="viewCart.jsp">Add to Cart</a>
                              <span class="glyphicon glyphicon-ok"></span>
                              </button>
                           </form>
                        </div>
                        <div class="modal-footer">
                           <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
                           <span class="glyphicon glyphicon-remove"></span> Cancel
                           </button>
                        </div>
                     </div>
                  </div>
               </div>
            </c:forEach>
         </div>
      </div>
      </div>
   </body>
</html>