<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Shehan
  Date: 8/22/2020
  Time: 10:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/startstop-slider.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<html>
<head>
    <title>Account</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/slider.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
<div class="wrap">
    <div class="header">

        <div class="headertop_desc">
            <div class="call">
                <p><span>Need help?</span> call us <span class="number">+94778342720&nbsp;</span></span></p>
            </div>



    </div>
</div>

<style>


.b{
text-align: center;
font-size: 30px;
    position:center;
    alignment: center;
    display: block;
}
</style>


<%
    String name= null;
    HttpSession httpSession =request.getSession();
    Cookie[] cookies=request.getCookies();


    for(Cookie cookie:cookies){
        if(cookie.getName().equals("Name")){
             name = cookie.getValue();
        }

    }
%>
    <br><br>

  <h1 style="color: red" class="b"> <%
      if(name==null){%>
      <h1 style="color: red" class="b">Please Log in to your account</h1>
<%
}
else{%>
      <h1 style="color: red" class="b">Welcome <%=name%></h1>
    <%  }%>



    <div class="header_top">
        <div class="row">
            <div class="column" >
               <p class="aligncenter">
                <img src="images/man.jpg" class="center" alt="" />
            </p>
            </div>
        </div>

<style>

    .a{
        position:center;
        alignment: center;
        display: block;
        margin-left: auto;
        margin-right: auto;
        width: 60%;

    }

    .center{
        display: block;
        margin-left: auto;
        margin-right: auto;
        width: 100%;
    }
    .aligncenter{
        text-align: center;
    }

</style>





  </h1><br><br>
<%--<button type="submit" class="Button">Post Your Ads</button>--%>
<form action="<%= request.getContextPath() %>/logout" method="post" id="account-logout" >
<button class="btn btn-danger">Logout</button>
</form>

    <div class="footer">
        <div class="wrap">
            <div class="section group">
                <div class="col_1_of_4 span_1_of_4">
                    <h4>Information</h4>
                    <ul>
                        <li><a href="other/about.jsp">About Us</a></li>
                        <li><a href="other/contact.jsp">Customer Service</a></li>
                        <li><a href="#">Advanced Search</a></li>
                        <li><a href="other/delivery.jsp">Orders and Returns</a></li>
                        <li><a href="other/contact.jsp">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h4>ABout us</h4>
                    <ul>
                        <li><a href="other/about.jsp">About Us</a></li>
                        <li><a href="other/contact.jsp">Customer Service</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="other/contact.jsp">Site Map</a></li>
                        <li><a href="#">Search Terms</a></li>
                    </ul>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h4>My account</h4>
                    <ul>
                        <li><a href="other/contact.jsp">Sign In</a></li>
                        <li><a href="home.jsp">View Cart</a></li>
                        <li><a href="#">My Wishlist</a></li>
                        <li><a href="#">Track My Order</a></li>
                        <li><a href="other/contact.jsp">Help</a></li>
                    </ul>
                </div>
                <div class="col_1_of_4 span_1_of_4">
                    <h4>Contact</h4>
                    <ul>
                        <li><span>+91-123-456789</span></li>
                        <li><span>+00-123-000000</span></li>
                    </ul>
                    <div class="social-icons">
                        <h4>Follow Us</h4>
                        <ul>
                            <li><a href="#" target="_blank"><img src="images/facebook.png" alt="" /></a></li>
                            <li><a href="#" target="_blank"><img src="images/twitter.png" alt="" /></a></li>
                            <li><a href="#" target="_blank"><img src="images/skype.png" alt="" /> </a></li>
                            <li><a href="#" target="_blank"> <img src="images/dribbble.png" alt="" /></a></li>
                            <li><a href="#" target="_blank"> <img src="images/linkedin.png" alt="" /></a></li>
                            <div class="clear"></div>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy_right">
            <p>&copy; 2020 home_shoppe. All rights reserved | Design by Codeboys&nbsp; <a href="">&nbsp;</a></p>
        </div>
    </div>

</body>
</html>
