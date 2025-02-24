<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit Post</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container-sm">
<h3 class="mt-5">Edit Post</h3>
<form action="/post/update" method="POST">
  <input type="hidden" name="id" value="${post.p_num}">
  <div class="mb-3">
    <label for="title" class="form-label">제목</label>
    <input type="text" class="form-control" id="title" name="title" value="${post.title}">
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">내용</label>
    <textarea class="form-control" id="content" name="content">${post.content}</textarea>
  </div>
  <div class="mb-3">
    <label for="name" class="form-label">이름</label>
    <input type="text" class="form-control" id="name" name="name" value="${post.name}">
  </div>
  <button type="submit" class="btn btn-primary">수정완료</button>
</form>
<a href="/post?id=${post.p_num}" class="btn btn-secondary mt-3">취소</a>
</body>
</html>
