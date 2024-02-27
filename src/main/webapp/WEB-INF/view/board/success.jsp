<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <link
      rel="icon"
      href="https://static.toss.im/icons/png/4x/icon-toss-logo.png"
    />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/tossStyle.css" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>토스페이먼츠 샘플 프로젝트</title>
    <style>
    .lo {
	background: black;
	color: white;
	padding: 10px 40px 10px 40px;
}
.input-form {
	max-width: 700px;
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
	color: black;
}

.wrapper {
	max-width: 700px;
	margin: 10px auto; /* 상하 여백은 auto로 설정하여 중앙 정렬 */
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	text-align: center;
	color: black;
} 
    </style>
  </head>
<body>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto text-center"> <!-- text-center 추가 -->
				<h2 class="mb-3" style="text-align:center">결제상세정보</h2><p>
				<form class="validation-form" novalidate action="">
					
               			<tbody>
							<tr>
								<td><div style="display: flex; align-items: flex-start;">
										<a href="boardInfo?num=${board.pnum}"> <img
											src="${pageContext.request.contextPath}/image/board/${board.file1}"
											style="width: 200px; height: 200px;" alt="">
										</a>
										<div
											style="margin-left: 80px; margin-top: 10px; font-weight: bold; text-align:left;">
											<div style="font-size: 30px;">${board.pname}</div>
											
											
											판매자:${board.userid}<br> 상품정보:${board.subject}<br>
											        <p id="orderId"></p>
     											 <p id="amount" style="font-size: 20px;"></p>
										
										</div>
									</div></td>

							</tr>
						</tbody>
  
					
				</form>
				<a href="${pageContext.request.contextPath}/member/index"><button class="lo">메인으로</button></a>
			</div>
		</div>
	</div>
   
    <script>
      // 쿼리 파라미터 값이 결제 요청할 때 보낸 데이터와 동일한지 반드시 확인하세요.
      // 클라이언트에서 결제 금액을 조작하는 행위를 방지할 수 있습니다.
      const urlParams = new URLSearchParams(window.location.search);

      // 서버로 결제 승인에 필요한 결제 정보를 보내세요.
      async function confirm() {
        const requestData = {
          paymentKey: urlParams.get("paymentKey"),
          orderId: urlParams.get("orderId"),
          amount: urlParams.get("amount"),
        };

        const response = await fetch("/confirm", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(requestData),
        });

        const json = await response.json();

        if (!response.ok) {
          // TODO: 결제 실패 비즈니스 로직을 구현하세요.
          console.log(json);
          window.location.href = `/fail?message=${json.message}&code=${json.code}`;
        }

        // TODO: 결제 성공 비즈니스 로직을 구현하세요.
        console.log(json);
      }
      confirm();

      const paymentKeyElement = document.getElementById("paymentKey");
      const orderIdElement = document.getElementById("orderId");
      const amountElement = document.getElementById("amount");

      orderIdElement.textContent = "주문번호: " + urlParams.get("orderId");
      amountElement.textContent = "결제 금액: " + urlParams.get("amount");
      paymentKeyElement.textContent =
        "paymentKey: " + urlParams.get("paymentKey");
    </script>
  </body>
</html>