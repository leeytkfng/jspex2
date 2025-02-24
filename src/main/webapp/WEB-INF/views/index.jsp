<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: iyongsu
  Date: 2/13/25
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>
<html>
<head>
    <style>
        .container-fluid{
            background: #f1f1f1;
        }
    </style>
    <title>Title</title>
</head>
<body class="container-fluid">
<%@ include file="Components/header.jsp"%> <!--header 포함 -->
<%@ include file="Components/List.jsp"%>
<%@ include file="Components/footer.jsp"%> <!--footer 포함 -->

</body>
</html>
