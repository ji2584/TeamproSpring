<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<body>
<main>
    <div class="container">
    <h2 class="my-4">입찰 중/입찰완료 상품</h2>
    
    <form action="${pageContext.request.contextPath}/jumun/jumunList" method="post">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col">물품번호</th>
                    <th scope="col">이미지</th>
                     <th scope="col">판매자</th>
                      <th scope="col">입찰자</th>
                    <th scope="col">물품명</th>
                    <th scope="col">파일</th>
                    <th scope="col">제목</th>
                    <th scope="col">내가넣은금액</th>
                    <th scope="col">현재가</th>
                    <th scope="col">입찰횟수</th>
                    <th scope="col">마감일</th>
                    <th scope="col">선택</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="j" items="${li}">
                    <tr>
                        <td>${j.pnum}</td>
                        <td><img src="${j.prompt}" alt="이미지" style="max-width: 50px; max-height: 50px;"></td>
                        <td>${j.userid}</td><!-- 여기해결해야함  -->
                         <td>${j.buyid}</td>
                       
                        <td><a href="">${j.pname}</a></td>
                        <td>${j.file1}</td>
                        <td>${j.subject}</td>
                          <td>40000</td>
                        <td>${j.price}</td>
                        <td>${j.readcnt}</td>
                        <td>${j.regdate}</td>
                        <td><input type="checkbox" name="selectedItems" value="${j.pnum}"></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        
        <div class="text-center">
            <button type="submit" class="btn btn-primary mx-2">구매</button>
            <a href="${pageContext.request.contextPath}/jumun/jumunList" class="btn btn-danger mx-2">삭제</a>
        </div>
    </form>
</div>
</main>
</body>
</html>