<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
ul {
   list-style: none;
   margin: 0;
   padding: 0;
}

li {
   margin: 0 0px; /* 상하 0, 좌우 10px 간격 지정 */
   padding: 0 0px;
   border-radius: 5px;
   float: left;
   position: relative;
   text-align: center; /* 내용 중앙 정렬 */
}
</style>

<body>
<div class="container">
  <h2 class ="text-center">${noticeName}</h2>
   <p  class="text-right"> </p>               
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>번호</th>
        <th>작성자</th>
        <th>제목</th>
        <th>날짜</th>
        <th>조회수</th>
        <th>파일</th>
      </tr>
    </thead>
    <tbody>
    <c:set var = "noticeNum" value="${noticeNum}"/>
    
    
    
  
    <c:forEach var="n" items="${li}">  
      <tr>
        <td>${noticeNum}</td>
          <c:set var = "noticeNum" value="${noticeNum-1}"/>
        <td>${n.name}</td>
        <td><a href="noticeInfo?num=${n.num}">${n.subject}</a></td>
        <td><fmt:formatDate value="${n.regdate}"
										pattern="yyyy년 MM월 dd일 HH시 mm분 ss초" /></td>
        <td>${n.readcnt}</td>
        <td>${n.file1}</td>
      </tr>
      </c:forEach>  
    </tbody>
  </table>
  <ul class="pagination justify-content-center text-center">
  <li class="page-item <c:if test="${start<=bottomLine}"> disabled  </c:if> ">
    <a class="page-link" href="${pageContext.request.contextPath}/notice/noticeList?pageNum=${start-bottomLine}">Previous</a></li>
  
  <c:forEach var = "p" begin ="${start}" end="${end}">
 
  <li class="page-item <c:if test="${pageInt==p}"> active  </c:if>"><a class="page-link" 
       href="${pageContext.request.contextPath}/notice/noticeList?pageNum=${p}">${p}</a></li>
  
  </c:forEach>
 
  <li class="page-item <c:if test="${end>=maxPage}"> disabled  </c:if>"> <a class="page-link" href="${pageContext.request.contextPath}/notice/noticeList?pageNum=${start+bottomLine}">Next</a></li>
  <c:if test="${amem.adminchk==1 || boardid eq '3'}">
  <li><a class="btn btn-primary" href="noticeForm">게시판입력</a></li>
</c:if>


</ul>
</div>
</body>
</html>