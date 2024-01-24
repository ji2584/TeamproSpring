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

		<form class="container input-form"
			action="${pageContext.request.contextPath}/board/boardPro"
			method="post" enctype="multipart/form-data">
			<div class="form-group">
				<div class="col-md-3 mb-3">

					<h4 class="text-center">카테고리:&nbsp;${boardPname}</h4>
					<div class="form-group">
						<label for="userid">작성자:</label> <input type="text" readonly
							class="form-control" value="${amem.id }" id="userid"
							name="userid">
					</div>
					<p>&nbsp;
					<p>


						    <label for="id">미리보기</label> 
          <img src="" width="100px" height="120px" id="pic"> 
          <input type="file" accept="image/*" onchange="previewImage(this)" name="f">
        </div>
  <input type="hidden"  name="buy"  value="0">
				<div class="form-group">
					<label for="pname">판매상품:</label> <input type="text"
						class="form-control" placeholder="Enter name" id="pname"
						name="pname">
				</div>
				<div class="form-group">

					<label for="subject">상품정보:</label> <input type="text"
						class="form-control" placeholder="Enter info" id="subject"
						name="subject">
				</div>

				<div class="form-group">
					<label for="price">입찰시작가격:</label> <input type="number"
						class="form-control" placeholder="Enter price" id="price"
						name="price">
				</div>
					<div class="form-group">
					<label for="prompt">즉시구매가격:</label> <input type="number"
						class="form-control" placeholder="Enter price" id="prompt"
						name="prompt">
				</div>

				<div class="form-group">
					<label for="pass">비밀번호:</label> <input type="password"
						class="form-control" placeholder="Enter pass" id="pass"
						name="pass">
				</div>
				<!-- <div class="form-group">
				<label for="subject">제목:</label> <input type="text"
					class="form-control" placeholder="Enter subject" id="subject"
					name="subject">
			</div> -->
				<div class="form-group">
					<label for="content">내용:</label>
					<textarea class="form-control" rows="5" id="content" name="content"></textarea>
				</div>


				<button class="btn btn-primary btn-lg btn-block" type="submit">작성하기</button>
		</form>
	</div>
	<script> window.addEventListener('load', () => { const forms = document.getElementsByClassName('validation-form'); Array.prototype.filter.call(forms, (form) => { form.addEventListener('submit', function (event) { if (form.checkValidity() === false) { event.preventDefault(); event.stopPropagation(); } form.classList.add('was-validated'); }, false); }); }, false); </script>

</body>
</html>