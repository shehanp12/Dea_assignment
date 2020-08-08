<%-- 
    Document   : index
    Created on : Aug 4, 2020, 12:20:28 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        
        
         <div class="container">
            <div class="regbox box">
                <img class="avatar" src="image/im2.png">
                <h1>SIGN IN</h1>
<form action="RegisterServlet" method="post">
                   <p>Username</p>
<input type="text" placeholder="Username" name="name" required>
                   
                   <p>Password</p>
<input type="password" placeholder="Password" name="password" required>
                   <input type="submit" value="SIGN IN">
                   <a href="regisration.jsp">Registration here</a>
                </form>
</div>
</div>
        
    </body>
</html>
