<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
   

    .containersw {
        margin: 100px auto;
        max-width: 600px; /* You can adjust the max-width as needed */
        padding: 20px;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    .table th, .table td {
        padding: 10px;
        border: 1px solid #dee2e6;
        text-align: center;
        color:black;
    }

    .btn-primary {
        background-color: #000000;
        color: white;
        padding: 10px 20px;
        text-decoration: none;
        border-radius: 5px;
        display: inline-block;
        margin-right: 10px;
    }
</style>
</head>
<body>

<div class="containersw">
    <div class="input-form-background">
        <h4 class="mb-3">${amem.id}님 회원정보</h4>
        <table class="table">
            <tr>
                <th>ID</th>
                <td>${amem.id }</td>
            </tr>
            <tr>
                <th>NAME</th>
                <td>${amem.name}</td>
            </tr>
            <tr>
                <th>TEL</th>
                <td>${amem.tel}</td>
            </tr>
            <tr>
                <th>BANK</th>
                <td>${amem.bank}</td>
            </tr>
            <tr>
                <th>ACCOUNT</th>
                <td>${amem.account }</td>
            </tr>
            <tr>
                <th>EMAIL</th>
                <td>${amem.email}</td>
            </tr>
            <tr>
                <th>ADDRESS</th>
                <td>${amem.address}</td>
            </tr>
            <tr>
                <td colspan="2" class="">
                     <a class="btn btn-primary" href="${pageContext.request.contextPath}/member/memberUpdateForm" style="color:white;">정보수정</a>      
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/member/memberDeleteForm" style="color:white;">회원탈퇴</a>
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/member/memberPassForm" style="color:white;">비밀번호수정</a>
                    
                </td>
            </tr>
        </table>
    </div>
</div>

</body>
</html>
