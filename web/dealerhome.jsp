<%-- 
    Document   : dealerhome
    Created on : Dec 12, 2015, 4:30:09 PM
    Author     : SaithKumar
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
               <a class="navbar-brand" href="index.jsp">The Laptop Store</a>
            </div>
            <div>
               <ul class="nav navbar-nav">
                  <li class="active"><a href="index.jsp">Home</a></li>
             <li class="active"><a href="ProductServlet">Show Products</a></li>				  
                  <li><a href="dealerOffers.jsp">Today's Best Deals</a></li>
                  <li><a href="aboutUs">About Us</a></li>
                  <li><a href="contactUs">Contact Us</a></li>
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
      <img src="images/main.jpg" alt="Main Image" width="1350" height="720">
      
      <div class="container catalogImage">
         <div class="row text-center">
            <div class="col-sm-4">
               <div class="thumbnail">
                  <img src="images/H1_l.jpg" alt="Laptop Image" width="250"
                     height="200">
                  <p>
                     <strong>HP 15-ac120nr</strong>
                  </p>
                  <p>Price:$454.28</p>
                  <button class="btn" data-toggle="modal" data-target="#myModal1">Preview</button>
               </div>
            </div>
            <div class="col-sm-4">
               <div class="thumbnail">
                  <img src="images/D12_l.jpg" alt="Laptop Image" width="250"
                     height="200">
                  <p>
                     <strong>Dell Inspiron i7359-1145SLV</strong>
                  </p>
                  <p>Price:$549.99</p>
                  <button class="btn" data-toggle="modal" data-target="#myModal2">Preview</button>
               </div>
            </div>
            <div class="col-sm-4">
               <div class="thumbnail">
                  <img src="images/L1_l.jpg" alt="Laptop Image" width="250"
                     height="200">
                  <p>
                     <strong>Lenovo Ideapad 100</strong>
                  </p>
                  <p>Price:$326.90</p>
                  <button class="btn" data-toggle="modal" data-target="#myModal3">Preview</button>
               </div>
            </div>
         </div>
         <br />
         <br />
         <div class="row text-center">
            <div class="col-sm-4">
               <div class="thumbnail">
                  <img src="images/A1_l.jpg" alt="Laptop Image" width="250"
                     height="200">
                  <p>
                     <strong>ASUS F555LA-AB31</strong>
                  </p>
                  <p>Price:$349.99</p>
                  <button class="btn" data-toggle="modal" data-target="#myModal4">Preview</button>
               </div>
            </div>
            <div class="col-sm-4">
               <div class="thumbnail">
                  <img src="images/T2_l.jpg" alt="Laptop Image" width="250"
                     height="200">
                  <p>
                     <strong>Toshiba Satellite Fusion 15 L55W-C5257</strong>
                  </p>
                  <p>Price:$579.89</p>
                  <button class="btn" data-toggle="modal" data-target="#myModal5">Preview</button>
               </div>
            </div>
            <div class="col-sm-4">
               <div class="thumbnail">
                  <img src="images/AC1_l.jpg" alt="Laptop Image" width="250"
                     height="200">
                  <p>
                     <strong>Acer Aspire Ultrabook NX.G0YAA.014;R3-131T-C0B1</strong>
                  </p>
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
                        <h4>
                           <span class="glyphicon glyphicon-lock"></span>Preview
                        </h4>
                     </div>
                     <div class="modal-body">
                        <form role="form"
                           action="${pageContext.request.contextPath}/CartServlet"
                           method="POST">
                           <div class="form-group image_preview">
                              <img src="images/H1_l.jpg" alt="Laptop Image" width="325"
                                 height="200">
                           </div>
                           <div class="form-group">
                              <table>
                                 <tr>
                                    <td><label>Name:</label></td>
                                    <td><input type="text" name="name"
                                       value="HP 15-ac120nr" readonly></td>
                                 </tr>
                                 <tr>
                                    <td><label>Price:</label></td>
                                    <td><input type="text" name="price" value="454.28"
                                       readonly></td>
                                 </tr>
                                 <tr>
                                    <td><label>Processor:</label></td>
                                    <td><input type="text" name="processor"
                                       value="Intel Core i3 Processor" readonly></td>
                                 </tr>
                                 <tr>
                                    <td><label>Ram:</label></td>
                                    <td><input type="text" name="ram"
                                       value="4 GB DDR3L SDRAM" readonly></td>
                                 </tr>
                                 <tr>
                                    <td><label>Storage:</label></td>
                                    <td><input type="text" name="hdd"
                                       value="750 GB HDD" readonly></td>
                                 </tr>
                                 <tr>
                                    <td><label>Size:</label></td>
                                    <td><input type="text" name="size"
                                       value="15.6-Inch Laptop" readonly></td>
                                 </tr>
                              </table>
                              <input type="hidden" value="add" name="action"/>
                              <center>
                                 <input type="submit" value="Add to cart"
                                    class="btn btn-warning" onclick="submitForm();">
                              </center>
                              <!-- <input type="hidden" action="add"> -->
                           </div>
                           <!-- <button type="Add to cart" class="btn btn-block">
                              <span class="glyphicon glyphicon-ok"></span>
                              </button> -->
                        </form>
                     </div>
                     <div class="modal-footer">
                        <button type="submit"
                           class="btn btn-danger btn-default pull-left"
                           data-dismiss="modal">
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
                     <h4>
                        <span class="glyphicon glyphicon-lock"></span>Preview
                     </h4>
                  </div>
                  <div class="modal-body">
                     <form role="form"
                        action="${pageContext.request.contextPath}/CartServlet"
                        method="POST">
                        <div class="form-group image_preview">
                           <img src="images/D12_l.jpg" alt="Laptop Image" width="325"
                              height="200">
                        </div>
                        <div class="form-group">
                           <table>
                              <tr>
                                 <td><label>Name:</label></td>
                                 <td><input type="text" name="name"
                                    value="Dell Inspiron i7359" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Price:</label></td>
                                 <td><input type="text" name="price" value="549.99"
                                    readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Processor:</label></td>
                                 <td><input type="text" name="processor"
                                    value="6th Gen Intel Core i3" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Ram:</label></td>
                                 <td><input type="text" name="ram"
                                    value="4 GB DDR3L SDRAM" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Storage:</label></td>
                                 <td><input type="text" name="hdd"
                                    value="500 GB HDD" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Size:</label></td>
                                 <td><input type="text" name="size"
                                    value="13.3 Inch 2-in-1 Touch" readonly></td>
                              </tr>
                           </table>
                           <input type="hidden" value="add" name="action"/>
                           <center>
                              <input type="submit" value="Add to cart"
                                 class="btn btn-warning" onclick="submitForm();">
                           </center>
                           <!-- <input type="hidden" action="add"> -->
                        </div>
                        <!-- <button type="Add to cart" class="btn btn-block">
                           <span class="glyphicon glyphicon-ok"></span>
                           </button> -->
                     </form>
                  </div>
                  <div class="modal-footer">
                     <button type="submit" class="btn btn-danger btn-default pull-left"
                        data-dismiss="modal">
                     <span class="glyphicon glyphicon-remove"></span> Cancel
                     </button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>
      <div>
      <div>
         <div class="modal fade" id="myModal3" role="dialog">
            <div class="modal-dialog">
               <!-- Modal content-->
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                     <h4>
                        <span class="glyphicon glyphicon-lock"></span>Preview
                     </h4>
                  </div>
                  <div class="modal-body">
                     <form role="form"
                        action="${pageContext.request.contextPath}/CartServlet"
                        method="POST">
                        <div class="form-group image_preview">
                           <img src="images/L1_l.jpg" alt="Laptop Image" width="325"
                              height="200">
                        </div>
                        <div class="form-group">
                           <table>
                              <tr>
                                 <td><label>Name:</label></td>
                                 <td><input type="text" name="name"
                                    value="Lenovo Ideapad 100" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Price:</label></td>
                                 <td><input type="text" name="price" value="326.90"
                                    readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Processor:</label></td>
                                 <td><input type="text" name="processor"
                                    value="Pentium D Processor" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Ram:</label></td>
                                 <td><input type="text" name="ram"
                                    value="4 GB DDR3L SDRAM" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Storage:</label></td>
                                 <td><input type="text" name="hdd"
                                    value="500 GB HDD" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Size:</label></td>
                                 <td><input type="text" name="size"
                                    value="15.6-Inch Non-touch" readonly></td>
                              </tr>
                           </table>
                           <input type="hidden" value="add" name="action"/>
                           <center>
                              <input type="submit" value="Add to cart"
                                 class="btn btn-warning" onclick="submitForm();">
                           </center>
                           <!-- <input type="hidden" action="add"> -->
                        </div>
                        <!-- <button type="Add to cart" class="btn btn-block">
                           <span class="glyphicon glyphicon-ok"></span>
                           </button> -->
                     </form>
                  </div>
                  <div class="modal-footer">
                     <button type="submit" class="btn btn-danger btn-default pull-left"
                        data-dismiss="modal">
                     <span class="glyphicon glyphicon-remove"></span> Cancel
                     </button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>
      <div>
      <div>
         <div class="modal fade" id="myModal4" role="dialog">
            <div class="modal-dialog">
               <!-- Modal content-->
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                     <h4>
                        <span class="glyphicon glyphicon-lock"></span>Preview
                     </h4>
                  </div>
                  <div class="modal-body">
                     <form role="form"
                        action="${pageContext.request.contextPath}/CartServlet"
                        method="POST">
                        <div class="form-group image_preview">
                           <img src="images/A1_l.jpg" alt="Laptop Image" width="325"
                              height="200">
                        </div>
                        <div class="form-group">
                           <table>
                              <tr>
                                 <td><label>Name:</label></td>
                                 <td><input type="text" name="name"
                                    value="ASUS F555LA-AB31" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Price:</label></td>
                                 <td><input type="text" name="price" value="349.99"
                                    readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Processor:</label></td>
                                 <td><input type="text" name="processor"
                                    value="Intel i3 Processor" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Ram:</label></td>
                                 <td><input type="text" name="ram"
                                    value="4 GB DDR3L SDRAM" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Storage:</label></td>
                                 <td><input type="text" name="hdd"
                                    value="500 GB HDD" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Size:</label></td>
                                 <td><input type="text" name="size"
                                    value="15.6-Inch HD Non-touch" readonly></td>
                              </tr>
                           </table>
                           <input type="hidden" value="add" name="action"/>
                           <center>
                              <input type="submit" value="Add to cart"
                                 class="btn btn-warning" onclick="submitForm();">
                           </center>
                           <!-- <input type="hidden" action="add"> -->
                        </div>
                        <!-- <button type="Add to cart" class="btn btn-block">
                           <span class="glyphicon glyphicon-ok"></span>
                           </button> -->
                     </form>
                  </div>
                  <div class="modal-footer">
                     <button type="submit" class="btn btn-danger btn-default pull-left"
                        data-dismiss="modal">
                     <span class="glyphicon glyphicon-remove"></span> Cancel
                     </button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>
      <div>
      <div>
         <div class="modal fade" id="myModal5" role="dialog">
            <div class="modal-dialog">
               <!-- Modal content-->
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                     <h4>
                        <span class="glyphicon glyphicon-lock"></span>Preview
                     </h4>
                  </div>
                  <div class="modal-body">
                     <form role="form"
                        action="${pageContext.request.contextPath}/CartServlet"
                        method="POST">
                        <div class="form-group image_preview">
                           <img src="images/T2_l.jpg" alt="Laptop Image" width="325"
                              height="200">
                        </div>
                        <div class="form-group">
                           <table>
                              <tr>
                                 <td><label>Name:</label></td>
                                 <td><input type="text" name="name"
                                    value="Toshiba Satellite Fusion" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Price:</label></td>
                                 <td><input type="text" name="price" value="579.89"
                                    readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Processor:</label></td>
                                 <td><input type="text" name="processor"
                                    value="Intel Core i3 Processor" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Ram:</label></td>
                                 <td><input type="text" name="ram"
                                    value="6 GB DDR3L SDRAM" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Storage:</label></td>
                                 <td><input type="text" name="hdd"
                                    value="128 GB SSD" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Size:</label></td>
                                 <td><input type="text" name="size"
                                    value="15.6-Inch 2 in 1 Touch" readonly></td>
                              </tr>
                           </table>
                           <input type="hidden" value="add" name="action"/>
                           <center>
                              <input type="submit" value="Add to cart"
                                 class="btn btn-warning" onclick="submitForm();">
                           </center>
                           <!-- <input type="hidden" action="add"> -->
                        </div>
                        <!-- <button type="Add to cart" class="btn btn-block">
                           <span class="glyphicon glyphicon-ok"></span>
                           </button> -->
                     </form>
                  </div>
                  <div class="modal-footer">
                     <button type="submit" class="btn btn-danger btn-default pull-left"
                        data-dismiss="modal">
                     <span class="glyphicon glyphicon-remove"></span> Cancel
                     </button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>
      <div>
      <div>
         <div class="modal fade" id="myModal6" role="dialog">
            <div class="modal-dialog">
               <!-- Modal content-->
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal">&times;</button>
                     <h4>
                        <span class="glyphicon glyphicon-lock"></span>Preview
                     </h4>
                  </div>
                  <div class="modal-body">
                     <form role="form"
                        action="${pageContext.request.contextPath}/CartServlet"
                        method="POST">
                        <div class="form-group image_preview">
                           <img src="images/AC1_l.jpg" alt="Laptop Image" width="325"
                              height="200">
                        </div>
                        <div class="form-group">
                           <table>
                              <tr>
                                 <td><label>Name:</label></td>
                                 <td><input type="text" name="name"
                                    value="Acer Aspire Ultrabook" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Price:</label></td>
                                 <td><input type="text" name="price" value="359.99"
                                    readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Processor:</label></td>
                                 <td><input type="text" name="processor"
                                    value="Intel Core i5 Processor" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Ram:</label></td>
                                 <td><input type="text" name="ram"
                                    value="4 GB DDR3L SDRAM" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Storage:</label></td>
                                 <td><input type="text" name="hdd"
                                    value="500 GB SSD" readonly></td>
                              </tr>
                              <tr>
                                 <td><label>Size:</label></td>
                                 <td><input type="text" name="size"
                                    value="15.6-Inch 2 in 1 Touch" readonly></td>
                              </tr>
                           </table>
                           <input type="hidden" value="add" name="action"/>
                           <center>
                              <input type="submit" value="Add to cart"
                                 class="btn btn-warning" onclick="submitForm();">
                           </center>
                           <!-- <input type="hidden" action="add"> -->
                        </div>
                        <!-- <button type="Add to cart" class="btn btn-block">
                           <span class="glyphicon glyphicon-ok"></span>
                           </button> -->
                     </form>
                  </div>
                  <div class="modal-footer">
                     <button type="submit" class="btn btn-danger btn-default pull-left"
                        data-dismiss="modal">
                     <span class="glyphicon glyphicon-remove"></span> Cancel
                     </button>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>
   </body>
</html>>