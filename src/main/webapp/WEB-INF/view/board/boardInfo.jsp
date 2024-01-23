
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script>
let count = ${count}
function enterkey(pnum, userid) {
   if(window.event.keyCode==13) {
      commentPro(pnum, userid)
   }
}
function commentPro(pnum, userid) {
   count = count+1
   let comment = document.querySelector("#comment").value
   //alert(comment)
   const xhttp = new XMLHttpRequest()
   let url = "${pageContext.request.contextPath}/board/boardCommentPro?comment="
         +comment+"&boardnum="+pnum+"&count="+count+"&userid="+userid
   xhttp.open("GET",url,true)
   xhttp.send()
   xhttp.onreadystatechange = function() {      
      if(this.readyState ==4 && this.status==200) {
     
      
   let commentList = document.querySelector("#commentList")
   commentList.innerHTML = this.responseText + "<br>" + commentList.innerHTML
   location.reload(true);
   }      
}
   document.querySelector("#comment").value=""
   }
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

   <div class="container">
      <div class="input-form-backgroud row">
         <div class="input-form col-md-12 mx-auto">
            <h4 class="mb-3">게시판</h4>
            <table class="table">
               <tr>
                  <th>name</th>
                  <th>value</th>
               </tr>
               <tr>
                  <td>닉네임</td>
                  <td>${board.pname}</td>
               <tr>
               <tr>
                  <td>파일</td>
                  <td>${board.file1}<img
                     src="${pageContext.request.contextPath}/image/board/${board.file1}"
                     width="100px" height="120px"></td>
               <tr>
               <tr>
                  <td>제목</td>
                  <td>${board.subject}</td>
               <tr>
               <tr>
                  <td>내용:${board.content}</td>
               <tr>
               <tr>
                  <td>날짜</td>
                  <td>${board.regdate}</td>
               <tr>
               <tr>
                  <td>조회수</td>
                  <td>${board.readcnt}</td>
               <tr>
               <tr>
                  <td colspan="2" class="text-right"><a class="btn btn-primary"
                     href="${pageContext.request.contextPath}/board/boardUpdateForm?num=${board.pnum}">변경</a>
                     <a class="btn btn-primary"
                     href="${pageContext.request.contextPath}/board/boardDeleteForm?num=${board.pnum}">삭제</a>
                     <a class="btn btn-primary"
                     href="${pageContext.request.contextPath}/board/boardList">목록</a>
                      <a class="btn btn-primary"
                     href="${pageContext.request.contextPath}/admin/ReportForm?num=${board.pnum}">신고</a>
                  </td>
               </tr>
            </table>
         
            	<div class="row">
					<div class="col-sm-1">답변글</div>
					<div class="col-sm-10">
						<input type="text" class="form-control " id="comment"
							onkeyup="enterkey('${board.pnum}')">
					</div>
					<div class="col-sm-1">
						<button class="btn btn-primary "
							onclick="commentPro('${board.pnum}')">저장</button>
					</div>
				</div>
				     <c:set  var="ser"  value="${count }"/>
				     
				         <div class="row" id="commentList">
            <c:set var = "ser" value="${count}"/>
            <c:forEach var ="c" items="${commentLi}">          
            <div class = "col-sm-1">&nbsp;</div>
            <div class = "col-sm-1">${ser}</div>
            <div class = "col-sm-1">${amem.id}</div>
            <c:set var = "ser" value="${ser-1}"/>
            <div class = "col-sm-9">${c.content}</div>
            <div class="col-sm-1">
            <form action="삭제_처리_페이지_주소" method="post">
                <input type="hidden" name="commentId" value="${amem.id}" />
                <button type="submit">삭제</button>
            </form>
        </div>
            <div class = "col-sm-1">&nbsp;</div>
             <c:set var="ser" value="${ser-1}" />
            </c:forEach>   
               </div>     
               </div>   </div>
      </div>   
</body>
</html>