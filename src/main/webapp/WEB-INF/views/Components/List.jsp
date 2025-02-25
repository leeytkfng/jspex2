<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: iyongsu
  Date: 2/19/25
  Time: 11:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>

    </style>
</head>
<div class="container-sm d-flex justify-content-center align-items-center">
    <img src="${pageContext.request.contextPath}/images/post1.jpg" alt="Image" style="width: 700px; height: 350px" class="img-fluid"/>
</div>

<body class="container-sm">
<h3 class="mt-5 text-center" style="font-weight:bold">BLog List</h3>
<table class="table table-striped table-bordered table-hover">
     <thead>
         <tr style="text-align: center">
             <th style="width: 15%">번호</th>
             <th style="width: 35%">제목</th>
             <th style="width: 25%">내용</th>
             <th style="width: 10%">작성자</th>
             <th style="width: 15%">날짜</th>
         </tr>
     </thead>
    <tbody>
        <c:forEach var="post" items="${postList}">
            <tr class="clickable-row" data-href = "/post?id=${post.p_num}">
                <td>${post.p_num}</td>
                <td>${post.title}</td>
                <td>${post.content}</td>
                <td>${post.name}</td>
                <td>${post.createdAt}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<a href="/write" class="btn btn-primary mb-3">글쓰기</a>

</body>
</html>

<script>
     document.querySelectorAll('.clickable-row').forEach(function(row) {
         row.addEventListener('click',function () {
             window.location = row.getAttribute('data-href');
         })
     })
</script>