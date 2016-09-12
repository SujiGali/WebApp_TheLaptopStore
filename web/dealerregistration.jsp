<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <title>
        User Registration | The Laptop Store
    </title>
    
    <script type="text/javascript">
         
    function checkMail()
        {
            //Store the password field objects into variables ...
            var email1 = document.getElementById('email');
            var email2 = document.getElementById('reemail');
            //Store the Confimation Message Object ...
            var message = document.getElementById('confirmMessage');
            //Set the colors we will be using ...
            var goodColor = "#66cc66";
            var badColor = "#ff6666";
            //Compare the values in the email field 
            //and the confirmation field
            if(email1.value == email2.value){
                //The emails match. 
                //Set the color to the good color and inform
                //the user that they have entered the correct email 
                email2.style.backgroundColor = goodColor;
                message.style.color = goodColor;
                message.innerHTML = "Emails Match!";
            }
            else{
                //The emails do not match.
                //Set the color to the bad color and
                //notify the user.
                email2.style.backgroundColor = badColor;
                message.style.color = badColor;
                message.innerHTML = "Emails Do Not Match!";
            }
        }
    function checkPass()
    {
        //Store the password field objects into variables ...
        var pass1 = document.getElementById('password');
        var pass2 = document.getElementById('repassword');
        //Store the Confimation Message Object ...
        var message = document.getElementById('confirmMessage');
        //Set the colors we will be using ...
        var goodColor = "#66cc66";
        var badColor = "#ff6666";
        //Compare the values in the password field 
        //and the confirmation field
        if(pass1.value == pass2.value){
            //The passwords match. 
            //Set the color to the good color and inform
            //the user that they have entered the correct password 
            pass2.style.backgroundColor = goodColor;
            message.style.color = goodColor;
            message.innerHTML = "Passwords Match!";
        }
        else{
            //The passwords do not match.
            //Set the color to the bad color and
            //notify the user.
            pass2.style.backgroundColor = badColor;
            message.style.color = badColor;
            message.innerHTML = "Passwords Do Not Match!";
        }
    }
    function validateForm(){  
	var uname=document.getElementById("username");
        var fname=document.getElementById("firstname"); 
        var lname=document.getElementById("lastname"); 
        var email=document.getElementById("email"); 
        var reemail=document.getElementById("reemail");
        var phno=document.getElementById("phonenumber"); 
	var pass=document.getElementById("password");  
	var repass=document.getElementById("repassword");
        var r = document.getElementsByName("sex");
        var c = 0;

        for(var i=0; i < r.length; i++){
            if(c[i].checked) {
            c = i; }
        }

        alert("please select radio");
        
	if (uname.value.length<=0 || pass.value.length<=0 || fname.value.length<=0 || lname.value.length<=0 || email.value.length<=0 || reemail.value.length<=0 || phno.value.length<=0 ){  
            alert("Name/Password can't be blank");  
            return false;  
        }
    }  
    
    </script> 
     
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <style>
    </style>
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
                    <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span>User Login</a></li>
                    <li><a href="dealerlogin.jsp"><span class="glyphicon glyphicon-log-in"></span>Dealer Login</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <form id="registration-form" onsubmit="validateForm();" action="DealerRegistrationServlet" method="POST">
            <table style="margin-right:20px;">
                <tr>
                    <td><label>Username:</label></td>
                    <td><input type="text" name="username" id="username" class="form-control"  required></td>
                </tr>
                <tr> 
                    <td><label>First name:</label></td>
                    <td><input type="text" name="firstname" id="firstName" class="form-control"  required></td>
                </tr>
                <tr>
                    <td><label>Last name:</label></td>
                    <td><input type="text" name="lastname" id="lastName" class="form-control"  required></td>
                </tr>
                <tr>
                    <td><label>Email:</label></td>
                    <td><input type="email" name="email" id="email" class="form-control"  required></td>
                </tr>
                <tr>
                    <td><label>Re-enter Email:</label></td>
                    <td><input type="email" name="Re-enter Email" id="reemail" class="form-control" onkeyup="checkMail(); return false;" required ></td>
                </tr>
                <tr>
                    <td><label>Password:</label></td>
                    <td><input type="password" name="Password" id="password" class="form-control"  required></td>
                </tr>
                <tr>
                    <td><label>Re-enter Password:</label></td>
                    <td><input type="password" name="Re-enter Password" id="repassword" onkeyup="checkPass(); return false;" class="form-control"  required></td>
                </tr>
                <tr>
                    <td><label>Phone Number:(XXX-XXX-XXXX)</label></td>
                    <td><input name="phonenumber" id="phonenumber" class="form-control" required type="tel" ></td>
                </tr>
                <tr>  
                    <td><label>Gender:</label></td>
                    <td><input type="radio" name="sex" value="male" >Male <br/><input type="radio" name="sex" value="female">Female</td>
                </tr>
                <tr>
                    <td>
                        <a href="forgotpasswsord.jsp">Forgot Password?</a>
                    </td>
                    <td><input type="submit" value="Submit" class="btn btn-warning" onclick="validateForm();">
                    </td>
                </tr>

            </table>    
    
        </form>
    </div>
</body>
</html>
