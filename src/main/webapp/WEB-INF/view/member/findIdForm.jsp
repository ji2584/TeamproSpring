<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
    <!-- head 부분 생략 -->
</head>
<body>
    <form action="findIdPro" method="post">
        <label for="name">이름:</label>
        <input type="text" id="name" name="name" required><br>

        <label for="email">이메일:</label>
        <input type="email" id="email" name="email" required><br>

        <button type="submit">아이디 찾기</button>
    </form>
</body>
</html>
