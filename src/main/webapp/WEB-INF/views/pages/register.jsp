<%--
  Created by IntelliJ IDEA.
  User: iyongsu
  Date: 2/19/25
  Time: 11:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .flex-box{
           display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background: white;
            padding: 10px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px; /* 폼 크기 조절 */
        }
        .form-group {
            display: flex;
            align-items: center; /* 수직 정렬 */
            justify-content: space-between; /* 가로 간격 균등 정렬 */
            margin-bottom: 10px; /* 아래 여백 추가 */
            margin-right: 10px ;
            margin-left:5px;
        }
        .form-group label {
            width: 120px; /* 라벨 크기 설정 */
            text-align: right; /* 오른쪽 정렬 */
            margin-right: 10px; /* 입력 필드와 간격 추가 */
        }
        .form-group input {
            flex: 1; /* 입력 필드가 남은 공간을 채우도록 설정 */
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }


    </style>

</head>
<body>

<div class="container flex-box">
    <form action="/register" method="post">
        <h2>회원가입</h2>
        <div class="form-group">
            <label for="username">아이디:</label>
            <input type="text" id="username" name="username" required/>
        </div>
        <div class="form-group">
            <label for="password">비밀번호:</label>
            <input type="password"  id="password" name="password" required/>
        </div>
        <div class="form-group">
            <label for="name" >이름:</label>
            <input type="text" id="name" name="name" required/>
        </div>
        <button type="submit">가입하기</button>
    </form>

</div>

</body>
</html>
