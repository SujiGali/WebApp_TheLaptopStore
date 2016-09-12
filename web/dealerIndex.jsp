<%-- 
    Document   : index.jsp
    Created on : Oct 27, 2015, 8:06:37 PM
    Author     : Rashmi Gupta
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
               <li class="active"><a href="index.jsp">Home</a></li>
               <li><a href="todaysbestdeals.jsp">Today's Best Deals</a></li>
               <li><a href="aboutUs.jsp">About Us</a></li>
               <li><a href="dealerOffers.jsp">Dealer Offers</a></li>
               <li><a href="contactUs.jsp">Contact Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
               <li><a href="dealerregistration.jsp"><span class="glyphicon glyphicon-briefcase"></span> Dealer Sign Up</a></li>
               <li><a href="registration.jsp"><span class="glyphicon glyphicon-user"></span> User Sign Up</a></li>
               <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
            </ul>
         </div>
      </div>
   </nav>
   <div class="container">
      <div class="row text-center">
         <div class="col-sm-4">
            <div class="thumbnail">
               <img src="images/H1_l.jpg" alt="Laptop Image" width="250" height="200">
               <p><strong>HP 15-ac120nr</strong></p>
               <p>Price:$454.28 </p>
               <button class="btn" data-toggle="modal" data-target="#myModal1">Preview</button>
            </div>
         </div>
         <div class="col-sm-4">
            <div class="thumbnail">
               <img src="images/D12_l.jpg" alt="Laptop Image" width="250" height="200">
               <p><strong>Dell Inspiron i7359-1145SLV</strong></p>
               <p>Price:$549.99</p>
               <button class="btn" data-toggle="modal" data-target="#myModal2">Preview</button>
            </div>
         </div>
         <div class="col-sm-4">
            <div class="thumbnail">
               <img src="images/L1_l.jpg" alt="Laptop Image" width="250" height="200">
               <p><strong>Lenovo Ideapad 100</strong></p>
               <p>Price:$326.90</p>
               <button class="btn" data-toggle="modal" data-target="#myModal3">Preview</button>
            </div>
         </div>
      </div>
	  <br/><br/>
	  
	     <div class="row text-center">
         <div class="col-sm-4">
            <div class="thumbnail">
               <img src="images/A1_l.jpg" alt="Laptop Image" width="250" height="200">
               <p><strong>ASUS F555LA-AB31</strong></p>
               <p>Price:$349.99</p>
               <button class="btn" data-toggle="modal" data-target="#myModal4">Preview</button>
            </div>
         </div>
         <div class="col-sm-4">
            <div class="thumbnail">
               <img src="images/T2_l.jpg" alt="Laptop Image" width="250" height="200">
               <p><strong>Toshiba Satellite Fusion 15 L55W-C5257</strong></p>
               <p>Price:$579.89</p>
               <button class="btn" data-toggle="modal" data-target="#myModal5">Preview</button>
            </div>
         </div>
         <div class="col-sm-4">
            <div class="thumbnail">
               <img src="images/AC1_l.jpg" alt="Laptop Image" width="250" height="200">
               <p><strong>Acer Aspire Ultrabook NX.G0YAA.014;R3-131T-C0B1</strong></p>
               <p>Price:$359.99</p>
               <button class="btn" data-toggle="modal" data-target="#myModal6">Preview</button>
            </div>
         </div>
      </div>
	  
	  
<div>
         <div class="modal fade" id="myModal1" role="dialog">
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
						<img src="images/H1_l.jpg" alt="Laptop Image" width="325" height="200">
                        </div>
                        <div class="form-group">

						<p><strong>Name : HP 15-ac120nr</strong></p>
						<p>Price : $454.28</p>
						<p>Intel Core i3 Processor</p>
						<p>4 GB DDR3L SDRAM</p>
						<p>750 GB HDD; No Optical Drive</p>
						<p>15.6-Inch Laptop</p>
							
						
                        </div>
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
      </div>
   </div>
     <div>
         <div class="modal fade" id="myModal2" role="dialog">
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
						<img src="images/D12_l.jpg" alt="Laptop Image" width="270" height="200">
                        </div>
                        <div class="form-group">

						<p><strong>Name : Dell Inspiron i7359-1145SLV</strong></p>
						<p>Price : $549.99</p>
						<p>6th Generation Intel Core i3 Processor</p>
						<p>4 GB DDR3L SDRAM</p>
						<p>500 GB HDD; No Optical Drive</p>
						<p>13.3 Inch 2-in-1 Touchscreen</p>
						
                        </div>
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
      </div>
   </div>
</div>
     <div>
         <div class="modal fade" id="myModal3" role="dialog">
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
						<img src="images/L1_l.jpg" alt="Laptop Image" width="270" height="200">
                        </div>
                        <div class="form-group">

						<p><strong>Name : Lenovo Ideapad 100</strong></p>
						<p>Price : $326.90</p>
						<p>Pentium D Processor</p>
						<p>4 GB DDR3L SDRAM</p>
						<p>500 GB HDD</p>
						<p>15.6-Inch Laptop Non-touchscreen</p>
						
                        </div>
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
      </div>
   </div>
</div>
     <div>
         <div class="modal fade" id="myModal4" role="dialog">
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
						<img src="images/A1_l.jpg" alt="Laptop Image" width="270" height="200">
                        </div>
                        <div class="form-group">

						<p><strong>Name : ASUS F555LA-AB31</strong></p>
						<p>Price : $349.99</p>
						<p>Intel Core i3 Processor</p>
						<p>4 GB DDR3L SDRAM</p>
						<p>500 GB HDD</p>
						<p>15.6-Inch Full HD  Non-touchscreen Laptop With Windows 10</p>
						
                        </div>
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
      </div>
   </div>
</div>
     <div>
         <div class="modal fade" id="myModal5" role="dialog">
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
						<img src="images/T2_l.jpg" alt="Laptop Image" width="270" height="200">
                        </div>
                        <div class="form-group">

						<p><strong>Name : Toshiba Satellite Fusion 15 L55W-C5257</strong></p>
						<p>Price : $579.89</p>
						<p>Intel Core i3 Processor</p>
						<p>6 GB DDR3L SDRAM</p>
						<p>128 GB SSD</p>
						<p>15.6-Inch Convertible 2 in 1 Touchscreen Laptop With Windows 10</p>
						
                        </div>
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
      </div>
   </div>
</div>
     <div>
         <div class="modal fade" id="myModal6" role="dialog">
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
						<img src="images/AC1_l.jpg" alt="Laptop Image" width="270" height="200">
                        </div>
                        <div class="form-group">

						<p><strong>Name : Acer Aspire Ultrabook NX.G0YAA.014;R3-131T-C0B1 </strong></p>
						<p>Price : $359.99</p>
						<p>Intel Core i5 Processor</p>
						<p>4 GB DDR3L SDRAM</p>
						<p>500 GB SSD</p>
						
						
                        </div>
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
      </div>
   </div>
</body>
</html>