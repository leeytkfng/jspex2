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
        /* 전체 페이지를 Flexbox로 설정 */
        .container-fluid {
            display: flex;
            flex-direction: column;
            height: 100vh; /* 화면 전체 높이를 차지하도록 설정 */
        }

        /* 페이지의 본문 (컨텐츠 영역) */
        .main-content {
            flex: 1; /* 풋터를 제외한 나머지 공간을 차지하도록 설정 */
            overflow-y: auto; /* 세로 스크롤 가능 */
            padding: 20px;
            margin-bottom: 60px;
        }

        /* 풋터 스타일 */
        footer {
            margin-top: auto; /* 풋터를 페이지 맨 아래로 고정 */
            text-align: center;
            padding: 10px 0;
            background-color: #f8f9fa;
            border-top: 1px solid #ddd;
        }
    </style>
    <title>Title</title>
</head>
<body class="container-fluid">
<header>
    <%@ include file="Components/header.jsp"%> <!--header 포함 -->
</header>
<div class="main-content">
    <%@ include file="Components/List.jsp"%>
    <%@ include file="pages/show.jsp"%>
</div>

<footer>
    <%@ include file="Components/footer.jsp"%> <!--footer 포함 -->
</footer>


</body>
</html>
