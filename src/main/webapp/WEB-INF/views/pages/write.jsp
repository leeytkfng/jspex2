<%--
  Created by IntelliJ IDEA.
  User: iyongsu
  Date: 2/19/25
  Time: 11:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container">
    <h2>새 글 작성</h2>
 <form action="/write" method="post">
     <div class="mb-3">
         <label for="title" class="form-label">제목</label>
         <input type="text" class="form-control" id="title" name="title" required>
     </div>
     <div class="mb-3">
         <label for="content" class="form-label" >내용</label>
         <textarea class="form-control" id="content" name="content" required></textarea>
     </div>
     <div class="mb-3">
         <label for="name" class="form-label" >작성자</label>
         <input type="text" class="form-control" id="name" name="name">
         <button type="submit" class="btn btn-primary">등록</button>
         <a href="/index" class="btn btn-secondary">취소</a>
     </div>
 </form>

</body>
</html>
