<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<body>
<main>
    <div class="container">
    <h2 class="my-4">찜한상품</h2>
    
    <form action="${pageContext.request.contextPath}/jumun/jumunList" method="post">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">물품번호</th>
                    <th scope="col">이미지</th>
                    <th scope="col">물품명</th>
                    <th scope="col">현재입찰가</th>
           
                    <th scope="col">현재가</th>
                   
                    <th scope="col">상품등록일</th>
                    <th scope="col">선택</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="j" items="${li}">
                    <tr>
                        <td>${j.pnum}</td>
                        <td>    <a href="boardInfo?num=${j.pnum}"> <img
                        src="${pageContext.request.contextPath}/image/board/${j.file1}"
                        style="width: 80px; height: 50px;" alt=""></a></td>
                        <td>${j.pname}</td>
                        <td>${j.buy}</td>
                        
                        <td>${j.price}</td>
                     
                        <td><fmt:formatDate value="${j.idate}"
										pattern="yyyy년 MM월 dd일 HH시 mm분 ss초" /></td>
             <td> <a href="${pageContext.request.contextPath}/board/boardInfo?num=${j.pnum}" class="btn btn-danger mx-2">입찰하기</a> </td>
             <td> <a href="${pageContext.request.contextPath}/jumun/jumunDeletePro?pnum=${j.pnum}" class="btn btn-danger mx-2">찜삭제</a></td>          </tr>
                </c:forEach>
            </tbody>
        </table>
        
      
    </form>
</div>
</main>
</body>
</html>