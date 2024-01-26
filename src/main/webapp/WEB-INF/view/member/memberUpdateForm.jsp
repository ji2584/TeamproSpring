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
    
	width: 40%;
	margin: 50px auto; /* 상하 여백은 auto로 설정하여 중앙 정렬 */
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	text-align: left;
	color:black;
}
/*#sw {
    width: 30%;
}*/
#ssw,#sw{
	width: 100%;

}

</style>
</head>
<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto text-center"> <!-- text-center 추가 -->
				<h2 class="mb-3" style="text-align:center">Sign up</h2><p>
			<form class="validation-form" novalidate action="memberUpdatePro" method="post" name="f">
					<div class="row">
					  
                  <div class="col-md-9 mb-3">
                  <div class="row">
                  <div class="col-md-6 mb-3">
      
                    <div>아이디</div> <input type="text"
                        class="form-control" id="sw" placeholder="" value="${amem.id}" readonly  name="id">
                    
                  
                     <div>이름</div><input type="text"
                        class="form-control" id="sw" placeholder="" value="${amem.name}" readonly  name="name">
                     
            
                   		<div> 비밀번호</div> <input type="password"
                        class="form-control" id="sw" placeholder="" value="" required  name="pass">
                    

                     <div>전화번호</div> <input type="tel"
                        class="form-control" id="sw" placeholder="" value="${amem.tel}" required  name="tel">
              
                    <div>은행명</div> <input type="text"
                        class="form-control" id="sw" placeholder="" value="${amem.bank}" required  name="bank">
                   
             
                     <div>계좌번호</div><input type="text"
                        class="form-control" id="ssw" placeholder="" value="${amem.account}"   name="account"
                        required>
           
                     <div>이메일</div> <input type="text"
                        class="form-control" id="ssw" placeholder="" value="${amem.email}" required  name="email">
          
                    <div>주소</div> <input type="text"
                        class="form-control" id="ssw" placeholder="" value="${amem.address}"   name="address"
                        required>
                  
                  </div>
                </div></div>
					</div><p>
					<div class="mb-1"></div>
					<button class="lo" type="submit">수정하기</button>
				</form>
			
			</div>
		</div>
	</div>
	
</body>
</html>