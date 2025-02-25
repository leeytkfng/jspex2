<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>블로그 소개</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .custom-card-img {
      width: 100%;
      height: auto;
      transition: transform 0.3s ease;
    }
    .custom-card-img:hover {
      transform: scale(1.1);
    }
    .card-body {
      transition: background-color 0.3s ease;
    }
    .card-body:hover {
      background-color: #f8f9fa;
    }
  </style>
</head>
<body>
<div class="container border p-4 mt-4 text-center">
  <!-- 큰제목칸 -->
  <h1 class="mb-3">블로그 소개</h1>
  <!-- 작은 소제목 칸 -->
  <h3 class="mb-4 text-muted">다양함 속에 개발자들의 마음을 Build 합니다.</h3>

  <div class="row g-4">
    <!-- 첫 번째 카드 -->
    <div class="col-md-4">
      <a href="https://github.com" target="_blank">
        <div class="p-3 shadow-sm">
          <div class="card-body">
            <h5 class="card-title">깃허브</h5>
            <img class="card-img-top custom-card-img" src="${pageContext.request.contextPath}/images/image.jpeg" alt="Image">
            <p class="card-text">내깃허브</p>
          </div>
        </div>
      </a>
    </div>

    <!-- 두 번째 카드 -->
    <div class="col-md-4">
      <a href="https://velog.io" target="_blank">
        <div class="p-3 shadow-sm">
          <div class="card-body">
            <h5 class="card-title">벨로그</h5>
            <img class="card-img-top custom-card-img" src="${pageContext.request.contextPath}/images/images-2.png" alt="Image">
            <p class="card-text">내 벨로그</p>
          </div>
        </div>
      </a>
    </div>

    <!-- 세 번째 카드 -->
    <div class="col-md-4">
      <a href="https://www.acmicpc.net" target="_blank">
        <div class="p-3 shadow-sm">
          <div class="card-body">
            <h5 class="card-title">백준</h5>
            <img class="card-img-top custom-card-img" src="${pageContext.request.contextPath}/images/images-3.png" alt="Image">
            <p class="card-text">코테 풀러가자</p>
          </div>
        </div>
      </a>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
