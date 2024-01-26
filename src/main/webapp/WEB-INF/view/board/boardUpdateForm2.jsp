<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.input-form {
	max-width: 650px;
	margin-top: 80px;
	margin-bottom: 80px;
	padding: 32px;
	background: #fff;
	border-radius: 10px;
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
}
</style>
<script>
function previewImage(input) {
    var file = input.files[0];
    if (file) {
      var reader = new FileReader();
      reader.onload = function (e) {
        document.getElementById("pic").src = e.target.result;
      };
      reader.readAsDataURL(file);
    }
  }

</script>
</head>
<body>
<div class="container">


<form class="container input-form"  action="boardUpdatePro"   method="post"    enctype="multipart/form-data"    >
     <div class="form-group">
        <h4  class="text-center">판매글 수정</h4>
         </div>
  <input type="hidden"  name="pnum"  value="${board.pnum }">
   <input type="hidden"  name="originfile"  value="${board.file1 }">
 
  <label for="id">미리보기</label> 
          <img src="" width="100px" height="120px" id="pic"> 
        <input type="file" accept="image/*" onchange="previewImage(this)" name="f">
          
           <div class="form-group">
    <label for="name">상품이름:</label>
    <input type="text" class="form-control" placeholder="" id=""    name="pname"   value="${board.pname }">
  </div><p>
  
    <div class="form-group">
    <label for="subject">제품상세:</label>
    <input type="text" class="form-control" placeholder="Enter password" id="subject"  name="subject"  value="${board.subject }">
  </div><p>
  
    <div class="form-group">
    <label for="price">입찰희망가격:</label>
    <input type="text" class="form-control" placeholder="" id="price"  name="price" value=${board.price }>
  </div><p>
  
    <div class="form-group">
    <label for="prompt">즉시구매가격:</label>
    <input type="text" class="form-control" placeholder="" id="prompt"  name="prompt" value=${board.prompt }>
  </div><p>
  
  <div class="form-group">
    <label for="pwd">비밀번호:</label>
    <input type="password" class="form-control" placeholder="Enter password" id="pwd"  name="pass">
  </div>
  

  
  <div class="form-group">
  <label for="content">내용:</label>
  <textarea class="form-control" rows="5" id="content"   name="content">${board.content }</textarea>
</div>


  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
	<script> window.addEventListener('load', () => { const forms = document.getElementsByClassName('validation-form'); Array.prototype.filter.call(forms, (form) => { form.addEventListener('submit', function (event) { if (form.checkValidity() === false) { event.preventDefault(); event.stopPropagation(); } form.classList.add('was-validated'); }, false); }); }, false); </script>

</body>
</html>