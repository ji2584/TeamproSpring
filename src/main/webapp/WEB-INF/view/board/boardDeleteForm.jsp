<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<!-- Bootstrap CSS -->

<style>

.lo{

background:black;
color:white;
padding:10px 40px 10px 40px;
}
.input-form {
    
	max-width: 400px;
	margin: 80px auto; /* 상하 여백은 auto로 설정하여 중앙 정렬 */
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	text-align: center;
	color:black;
}
#id,
#pass {
    width: 70%;
} 
</style>
</head>
<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto text-center"> <!-- text-center 추가 -->
				<h2 class="mb-3" style="text-align:center">게시물 삭제</h2><p>
				<form class="validation-form" novalidate action="boardDeletePro" method="post">
					<div class="row">
					 <input type="hidden"  name="pnum" value="${pnum}">
					
						<div class="col-md-6 mb-3">
							<label for="pass"></label>
							<input type="password" class="form-control" id="pass" placeholder="PASSWORD" value="" name="pass" required>
						</div><p>
					</div><p>
					<div class="mb-1"></div>
					<button class="lo" type="submit">Login</button>
				</form>
			</div>
		</div>
	</div>
	<script> 
        window.addEventListener('load', () => { 
            const forms = document.getElementsByClassName('validation-form'); 
            Array.prototype.filter.call(forms, (form) => { 
                form.addEventListener('submit', function (event) { 
                    if (form.checkValidity() === false) { 
                        event.preventDefault(); 
                        event.stopPropagation(); 
                    } 
                    form.classList.add('was-validated'); 
                }, false); 
            }); 
        }, false); 
    </script>
</body>
</html>