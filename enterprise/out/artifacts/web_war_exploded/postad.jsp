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

<%@page import=""%>
<%@page import=""%>

<jsp:useBean id="ad" class="" ></jsp:useBean>
<jsp:setProperty property="*" name="ad"/>

<%
    try{

     d   int i=mongoDb2.save(ad);
        if(i>0){ response.sendRedirect("adduser-success.jsp");
        }else{
            response.sendRedirect("adduser-error.jsp");
        }
    }catch (Exception e){
        out.print(e.getMessage());
    }

%>
</body>
</html>
