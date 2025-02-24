<%--
  Created by IntelliJ IDEA.
  User: iyongsu
  Date: 2/17/25
  Time: 4:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>회원가입 양식</title>
</head>
<body>
<h1>회원가입 양식</h1>

<form action="result" method="post">
    <ul>
        <li>이름을 입력하세요:</li> <input type="text" name="name" required><br>
        <li>나이를 입력하세요:</li> <input type="text" name="age" required><br>
        <li>전화번호를 입력하세요:</li> <input type="text" name="phone" required><br>
        <li>이메일을 입력하세요:</li> <input type="text" name="email" required><br>
    </ul>
    <button type="submit">제출</button>
</form>


</body>
</html>
