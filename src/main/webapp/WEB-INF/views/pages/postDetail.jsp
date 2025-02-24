<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Post Details</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container-sm">
<h3 class="mt-5">Post Details</h3>
<table class="table">
  <tr>
    <th>번호</th>
    <td>${post.p_num}</td>
  </tr>
  <tr>
    <th>제목</th>
    <td>${post.title}</td>
  </tr>
  <tr>
    <th>내용</th>
    <td>${post.content}</td>
  </tr>
  <tr>
    <th>작성자</th>
    <td>${post.name}</td>
  </tr>
  <tr>
    <th>날짜</th>
    <td>${post.createdAt}</td>
  </tr>
</table>
<a href="/post/edit?id=${post.p_num}" class="btn btn-warning">수정</a>
<a href="/post/delete?id=${post.p_num}" class="btn btn-danger">삭제</a>
<a href="/index" class="btn btn-secondary">목록</a>
</body>
</html>
