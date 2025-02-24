<%--
  Created by IntelliJ IDEA.
  User: iyongsu
  Date: 2/19/25
  Time: 10:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
   <meta charset="UTF-8">
    <style>
        .header{
            padding: 10px 10px;
            display: flex; /* flex로 하기*/
            justify-content: space-between; /* 좌우 정렬*/
            align-items: center;
        }
        .logo{
            margin-top : 5px;
            font-family: "Al Bayan", serif;
            font-size: 24px;
            font-weight: bold;
        }
        .nav a {
            color: #f1f1f1;
            text-decoration: none;
            font-size: 16px;
        }
        .nav a:hover{
            text-decoration: underline;
        }
    </style>
    <title>공통 헤더</title>
</head>
<body class="container-fluid">
<div class="header">
  <h1 class="logo"> My Web</h1>
</div>

</body>
</html>
