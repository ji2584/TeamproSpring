<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <h2 class ="text-center">내 문의 글</h2>
   <p  class="text-right"> <a class="btn btn-primary"  href="noticeForm">게시판입력</a></p>               
  <table class="table table-bordered">
    <thead>
      <tr>
       
        <th>작성자</th>
        <th>제목</th>
        <th>날짜</th>
        <th>조회수</th>
        <th>파일</th>
      </tr>
    </thead>
    <tbody>
   
    
    <c:forEach var="n" items="${li}">  
      <tr>     
        <td>${n.name}</td>
        <td><a href="noticeInfo?num=${n.num}">${n.subject}</a></td>
        <td>${n.regdate}</td>
        <td>${n.readcnt}</td>
        <td>${n.file1}</td>
      </tr>
      </c:forEach>  
    </tbody>
  </table>
  <ul class="pagination justify-content-center text-center">
  <li class="page-item <c:if test="${start<=bottomLine}"> disabled  </c:if> ">
    <a class="page-link" href="${pageContext.request.contextPath}/notice/mynotice?pageNum=${start-bottomLine}">Previous</a></li>
  
  <c:forEach var = "p" begin ="${start}" end="${end}">
 
  <li class="page-item <c:if test="${pageInt==p}"> active  </c:if>"><a class="page-link" 
       href="${pageContext.request.contextPath}/notice/mynotice?pageNum=${p}">${p}</a></li>
  </c:forEach>
 
  <li class="page-item <c:if test="${end>=maxPage}"> disabled  </c:if>"> <a class="page-link" href="${pageContext.request.contextPath}/notice/mynotice?pageNum=${start+bottomLine}">Next</a></li>
</ul>
</div>
</body>
</html>