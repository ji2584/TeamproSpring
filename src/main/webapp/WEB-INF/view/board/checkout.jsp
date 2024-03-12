<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<!-- Bootstrap CSS -->
<meta charset="utf-8" />
<link rel="icon"
	href="https://static.toss.im/icons/png/4x/icon-toss-logo.png" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/tossStyle.css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>토스페이먼츠 샘플 프로젝트</title>
<!-- 결제위젯 SDK 추가 -->
<script src="https://js.tosspayments.com/v1/payment-widget"></script>
<style>
.lo {
	background: black;
	color: white;
	padding: 10px 40px 10px 40px;
}

.input-form {
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
	
	<script>
    function showBankInfo() {
        var bankInfo = document.getElementById("bankInfo");

        // 계좌이체를 선택하면 추가적인 창을 나타냄
        bankInfo.style.display = "block";
    }

    function hideBankInfo() {
        var bankInfo = document.getElementById("bankInfo");

        // 다른 결제수단을 선택하면 추가적인 창을 숨김
        bankInfo.style.display = "none";
    }
</script>
<script>
function handleMemoChange() {
    var select = document.getElementById("memoSelect");
    var input = document.getElementById("customMemoInput");
    var selectedValue = select.value;

    if (selectedValue === "직접입력") {
        input.style.display = "block";
        input.value = "";  // 직접 입력을 위해 input을 비웁니다.
    } else {
        input.style.display = "none";
        input.value = selectedValue;  // select의 값을 input에 설정합니다.
    }
}

// 서버로 데이터 전송하기 전에 호출되는 함수
function prepareAndSendData() {
    var memo = document.getElementById("customMemoInput").value;

    // 서버에 데이터 전송하는 로직
    // 예: window.location.origin + "${pageContext.request.contextPath}/board/checkoutpro?num=${board.pnum}&pnum=${board.pnum}&memo=" + memo;
}

</script>
			
	<div class="container">

		<div class="input-formhead col-md- mx-auto text-center">
			<h2 class="mb-3" style="text-align: center">주문/결제하기</h2>
		</div>
	</div>

	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto text-center">
				<form class="validation-form" novalidate action="checkoutpro"
					method="post">
					<table class="no-border">



						<tbody>
							<tr>
								<td><span style="font-size: 25px; font-weight: bold;">배송지</span><br>
									<span style="font-size: 15px; font-weight: bold">입찰자 정보</span><br>
									
								<span style="font-size: 15px; ">${amem.name}</span><br>
								<span style="font-size: 15px; ;">${amem.tel }</span><br>
								<span style="font-size: 15px; ">${amem.address }</span><br>&nbsp;<br>
							
							<span style="font-size: 15px; font-weight: bold">배송메모입력</span><br>
									
									<select id="memoSelect" style="width: 400px; height: 30px;" onchange="handleMemoChange()">
    <option value="">선택안함</option>
    <option value="직접입력">직접입력</option>
    <option value="문앞에놓아주세요">문 앞에 놓아주세요</option>
    <option value="부재시연락주세요">부재 시 연락 주세요</option>
    <option value="배송전미리연락해주세요">배송 전 미리 연락해 주세요</option>
    <!-- 추가적인 선택지는 필요에 따라 추가할 수 있습니다 -->
</select>

<input type="text" id="customMemoInput" style="display: none; width: 400px; height: 100px;" placeholder="배송메모를 입력해주세요">
<br>&nbsp;</td>
							</tr>
						</tbody>
			<tbody>
                     <tr>
                        <td><span style="font-size: 25px; font-weight: bold;">낙찰상품</span><br>
                           <div style="display: flex; align-items: flex-start;">
                              <a href="boardInfo?num=${board.pnum}"> <img
                                 src="${pageContext.request.contextPath}/image/board/${board.file1}"
                                 style="width: 200px; height: 200px;" alt="">
                              </a>
                              <div
                                 style="margin-left: 80px; margin-top: 10px; font-weight: bold;">
                                 <div style="font-size: 30px;">${board.pname}</div>
                                 판매자:${board.userid}<br> 상품정보:${board.subject}<br>
                                 등록일시:
                                 <fmt:formatDate value="${board.idate}"
                                    pattern="yyyy년 MM월 dd일 HH시" />
                                 <span id="buy"   style="display: none;">${board.buy}</span>
                                 <br> <span   
                                    style="color: blue; font-weight: bold; font-size: 20px;">
                                    <fmt:formatNumber value="${board.buy}" pattern="#,##0" />
                                 </span>원
                              </div>
                           </div></td>

                     </tr>
                  </tbody> 


					<tbody>

                     <tr>
                        <td><span style="font-size: 25px; font-weight: bold;">마일리지 
                              사용</span> 마일리지:<span style="font-size: 15px; font-weight: bold;" id="bal2">${sum}</span>
                           <br> <input type="text" value="0" id="sp">
                        <button type="button" onclick="calc()">사용하기</button>
                           <p>
                              &nbsp;<br> 총 결제금액:<span
                                 style="font-size: 15px; font-weight: bold;"  id="bal">${board.buy}</span></td>
                     </tr>

                  </tbody> 



					</table>

				</form>
			</div>
		</div>
	</div>


	<div class="wrapper">
		<div class="box_section"
			style="padding: 40px 30px 50px 30px; margin-top: 30px; margin-bottom: 50px;">
			<!-- 결제 UI -->
			<div id="payment-method"></div>
			<!-- 이용약관 UI -->
			<div id="agreement"></div>
			<!-- 쿠폰 체크박스 -->
			<div style="padding-left: 25px">
				<div class="checkable typography--p">
					<label for="coupon-box"
						class="checkable__label typography--regular"><input
						id="coupon-box" class="checkable__input" type="checkbox"
						aria-checked="true" /><span
						class="checkable__label-text">5,000원 쿠폰
							적용</span></label>
				</div>
			</div>
			<!-- 결제하기 버튼 -->
			<div class="">
				<button class="lo" id="payment-button" style="margin-top: 0px">
					결제하기</button>
			</div>
		</div>
	</div>
	<script>
      const button = document.getElementById("payment-button");
      const coupon = document.getElementById("coupon-box");
   
      const generateRandomString = () =>
        window.btoa(Math.random()).slice(0, 20);
      const amount = ${board.buy};
     

      const widgetClientKey = "test_gck_docs_Ovk5rk1EwkEbP0W43n07xlzm";
      const customerKey = generateRandomString();
      const paymentWidget = PaymentWidget(widgetClientKey, customerKey); // 회원 결제
      // const paymentWidget = PaymentWidget(widgetClientKey, PaymentWidget.ANONYMOUS); // 비회원 결제

      // ------  결제 UI 렌더링 ------
      // @docs https://docs.tosspayments.com/reference/widget-sdk#renderpaymentmethods선택자-결제-금액-옵션
      paymentMethodWidget = paymentWidget.renderPaymentMethods(
        "#payment-method",
        { value: amount },
        // 렌더링하고 싶은 결제 UI의 variantKey
        // 결제 수단 및 스타일이 다른 멀티 UI를 직접 만들고 싶다면 계약이 필요해요.
        // @docs https://docs.tosspayments.com/guides/payment-widget/admin#멀티-결제-ui
        { variantKey: "DEFAULT" }
      );
      // ------  이용약관 UI 렌더링 ------
      // @docs https://docs.tosspayments.com/reference/widget-sdk#renderagreement선택자-옵션
      paymentWidget.renderAgreement("#agreement", { variantKey: "AGREEMENT" });

      // ------  결제 금액 업데이트 ------
      // @docs https://docs.tosspayments.com/reference/widget-sdk#updateamount결제-금액
      coupon.addEventListener("change", function () {
        if (coupon.checked) {
          paymentMethodWidget.updateAmount(amount - 5000);
        } else {
          paymentMethodWidget.updateAmount(bal);
        }
      });
    
      // ------ '결제하기' 버튼 누르면 결제창 띄우기 ------
      // @docs https://docs.tosspayments.com/reference/widget-sdk#requestpayment결제-정보
      button.addEventListener("click", function () {
        // 결제를 요청하기 전에 orderId, amount를 서버에 저장하세요.
        // 결제 과정에서 악의적으로 결제 금액이 바뀌는 것을 확인하는 용도입니다.
        let memo = document.querySelector("#customMemoInput").value    
        let sp = document.querySelector("#sp").value
       
           paymentWidget.requestPayment({
            orderId: generateRandomString(),
            orderName: "${board.pname}",
         
            successUrl: window.location.origin + "${pageContext.request.contextPath}/board/checkoutpro?num=${board.pnum}&pnum=${board.pnum}&name=${amem.name}&tel=${amem.tel}&address=${amem.address}&id=${amem.id}&memo="+memo+"&sp="+sp+"&buy="+bal,
            failUrl: window.location.origin + "${pageContext.request.contextPath}/board/fail",
            customerEmail: "customer123@gmail.com",
            customerName: "김토스",
            customerMobilePhone: "01012341234",
            
          });
      });
                 
      function calc() {
          let sum = document.querySelector("#bal2").innerHTML
           let sp = document.querySelector("#sp").value
           let buy=${board.buy}
           console.log(sum, sp, buy)
           sum=parseInt(sum)
           sp=parseInt(sp)
           
           bal = buy - sp
           bal2 = sum - sp
           
           paymentMethodWidget.updateAmount(bal);
          
           
           document.querySelector("#bal").innerHTML=bal
           document.querySelector("#bal2").innerHTML=bal2
       }
    </script>
</body>

</html>