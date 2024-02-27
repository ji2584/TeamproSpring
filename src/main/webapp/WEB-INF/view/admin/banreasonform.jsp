<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Answer</title>
</head>
<body>


    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">  <form class="validation-form" novalidate      action="banmember"   method="post"  name="f">
            
                <div class="form-group" id="">
                    <label for="content">회원 정지사유</label>
                    <textarea class="form-control" id="banreason" placeholder="내용을 입력하세요" name="banreason"></textarea>
                </div>
                <input type="hidden" name="id" value="${id}">
                <div class="modal-footer">
        
        <button type="submit" class="btn btn-primary">회원 정지</button>
      </div>
                </form> 
      
      </div>
      
    </div>
  </div>
</div>

 


</body>
</html>
