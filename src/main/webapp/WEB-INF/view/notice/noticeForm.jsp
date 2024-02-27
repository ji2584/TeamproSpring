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
		<h4 class="text-center">게시판 입력</h4>
		<form class="container" action="noticePro" method="post"
			enctype="multipart/form-data">
			<div class="form-group">
				<label for="userid">작성자:</label> <input type="text" readonly
					class="form-control" value="${amem.id}" id="userid" name="userid">
			</div>
			<div class="form-group">
				<label for="pass">비밀번호:</label> <input type="password"
					class="form-control" placeholder="Enter pass" id="pass" name="pass">
			</div>
			<div class="form-group">
				<label for="subject">제목:</label> <input type="text"
					class="form-control" placeholder="Enter subject" id="subject"
					name="subject">
			</div>
			<div class="form-group">
				<label for="content">내용:</label>
				<textarea class="form-control" rows="5" id="content" name="content"></textarea>
			</div>
			<div class="form-group">
				<label for="file">파일:</label> <input type="file"
					class="form-control" placeholder="Enter file1" id="file"
					name="f">
			</div>
			
			 <div class="form-group">
        <label for="isPublic">공개 여부:</label>
        <input type="checkbox" id="isPublicCheckbox">
        <input type="hidden" id="isPublic" name="isPublic" value="N"> <!-- 기본값은 'N'으로 설정 -->
    </div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
	
	<script>
    // 체크박스의 선택 여부에 따라 hidden input의 값을 변경
    document.getElementById('isPublicCheckbox').addEventListener('change', function() {
        var isPublicInput = document.getElementById('isPublic');
        isPublicInput.value = this.checked ? 'Y' : 'N';
    });
    </script>
</body>
</html>