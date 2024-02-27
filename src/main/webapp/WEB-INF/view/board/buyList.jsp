<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<style>
  .containersw {
        margin: 100px auto;
        max-width: 1500px; /* You can adjust the max-width as needed */
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
    
    
    </style>
    
<body>
<main>
    <div class="containersw">
    <h2 class="my-4">입찰 중/입찰완료 상품</h2>
    
    <form action="${pageContext.request.contextPath}/jumun/jumunList" method="post">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">물품번호</th>
                    <th scope="col">이미지</th>
                     <th scope="col">판매자</th>
                      <th scope="col">입찰자</th>
                
                 
                    <th scope="col">제목</th>
                    <th scope="col">현재입찰금액</th>
                  
               
                    <th scope="col">제품등록일</th>
                 	<th scope="col"></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="j" items="${li}">
                    <tr>
                        <td>${j.pnum}</td>
                        <td><a href="boardInfo?num=${j.pnum}"> <img
                        src="${pageContext.request.contextPath}/image/board/${j.file1}"
                        style="width: 80px; height: 50px;" alt=""></a></td>
                        <td>${j.userid}</td><!-- 여기해결해야함  -->
                         <td>${j.buyid}</td>
                       
                        <td><a href="${pageContext.request.contextPath}/board/boardInfo?num=${j.pnum}">${j.pname}</a></td>
                    
                       
                        
                        <td>${j.price}</td>
                
                        <td><fmt:formatDate value="${j.regdate}"
										pattern="yyyy년 MM월 dd일" /></td>
                         <td><a href="${pageContext.request.contextPath}/board/boardInfo?num=${j.pnum}">보러가기</a>
                   
            
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
     
    </form>
</div>
</main>
</body>
</html>