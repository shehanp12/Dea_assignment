<%--
  Created by IntelliJ IDEA.
  User: binur
  Date: 9/21/2020
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%@page import="newpackage.mongoDb"%>
<%@page import=""%>

<jsp:useBean id="ad" class="newpackage.Ad" ></jsp:useBean>
<jsp:setProperty property="*" name="ad"/>

<%
    try{

       int i=mongoDb.save(ad);
        if(i>0){ response.sendRedirect("home.jsp");
        }else{
            response.sendRedirect("Error.jsp");
        }
    }catch (Exception e){
        out.print(e.getMessage());
    }

%>
</body>
</html>
