<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Shehan
  Date: 8/22/2020
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error</title>
</head>

<body>

<style>
    .a{
        position:center;
        alignment: center;
        display: block;
        margin-left: auto;
        margin-right: auto;
        width: 60%;

    }

    .b{
        text-align: center;
        font-size: 60px;
    }
</style>

    <%
        HttpSession session1 = request.getSession();
        String err= (String) session1.getAttribute("err");
//        try (PrintWriter printWriter = response.getWriter()) {
//            printWriter.println(err);
//        }
    %>


    <img src="images/Capture.PNG" class="a">
    <h1 style="color: red" class="b"><%=err%></h1>

<div class="modal-footer d-flex justify-content-center">
    <button class="btn btn-danger" onclick="location.href='home.jsp';">Go To HomePage</button>





<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript" src="js/startstop-slider.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>