<%--
  Created by IntelliJ IDEA.
  User: binur
  Date: 9/23/2020
  Time: 10:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="newpackage.mongoDb"%>
<%@page import="newpackage.UserDao"%>
<jsp:useBean id="news" class="newpackage.News" ></jsp:useBean>
<jsp:setProperty property="*" name="news"/>

<%
    try{

        int i= mongoDb.news(news);
        if(i>0){
            response.sendRedirect("news.jsp");
        }else{
            response.sendRedirect("error.jsp");
        }
    }catch (Exception e){
        out.print(e.getMessage());
    }

%>
</body>
</html>
