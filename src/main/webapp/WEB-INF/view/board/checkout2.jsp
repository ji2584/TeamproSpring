<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <link
      rel="icon"
      href="https://static.toss.im/icons/png/4x/icon-toss-logo.png"
    />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/tossStyle.css" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>토스페이먼츠 샘플 프로젝트</title>
    <!-- 결제위젯 SDK 추가 -->
    <script src="https://js.tosspayments.com/v1/payment-widget"></script>
</head>
<body>
	<script>
		function handleMemoChange() {
			var memoSelect = document.getElementById("memoSelect");
			var customMemoInput = document.getElementById("customMemoInput");

			// "직접입력"이 선택되면 입력 필드를 나타냄
			if (memoSelect.value === "직접입력") {
				customMemoInput.style.display = "block";
			} else {
				// 다른 선택지가 선택되면 입력 필드를 숨김
				customMemoInput.style.display = "none";
			}
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
				<form class="validation-form" novalidate action="paypro">
					<table class="no-border">



						<tbody>
							<tr>
								<td><span style="font-size: 25px; font-weight: bold;">배송지</span>
									&nbsp;<br>입찰자 정보<br>${amem.name}<br>${amem.tel }<br> <input
									type="text" style="width: 400px; height: 30px;"
									value="${amem.address }" name="address" /><br>&nbsp; 배송메모
									입력<br> <select id="memoSelect"
									style="width: 400px; height: 30px;" name="memo"
									onchange="handleMemoChange()">
										<option value="직접입력">선택안함</option>
										<option value="직접입력">직접입력</option>
										<option value="문앞에놓아주세요">문 앞에 놓아주세요</option>
										<option value="부재시연락주세요">부재 시 연락 주세요</option>
										<option value="배송전미리연락해주세요">배송 전 미리 연락해 주세요</option>
										<!-- 추가적인 선택지는 필요에 따라 추가할 수 있습니다 -->
								</select> <!-- 동적으로 나타날 입력 필드 --> <input type="text" id="customMemoInput"
									style="display: none; width: 400px; height: 100px;" name="memo"
									placeholder="배송메모를 입력해주세요"><br>&nbsp;</td>
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
											<br> <span
												style="color: blue; font-weight: bold; font-size: 20px;">
												<fmt:formatNumber value="${board.buy}" pattern="#,##0" />원
											</span>
										</div>
									</div></td>

							</tr>
						</tbody>

<table>
		<tbody>
    <tr>
        <td>
            <span style="font-size: 25px; font-weight: bold;">결제수단</span><br>

            <input type="radio" id="bankTransfer" name="paymentMethod" value="계좌이체" onclick="showBankInfo()">
            <label for="bankTransfer">계좌이체</label><br>

            <input type="radio" id="kakaoPay" name="paymentMethod" value="카카오페이" onclick="hideBankInfo()">
            <label for="kakaoPay">카카오페이</label><br>

            <input type="radio" id="naverPay" name="paymentMethod" value="네이버페이" onclick="hideBankInfo()">
            <label for="naverPay">네이버페이</label><br>

            <input type="radio" id="cardPayment" name="paymentMethod" value="카드결제" onclick="hideBankInfo()">
            <label for="cardPayment">카드결제</label>

            <!-- 추가적인 창 -->
            <div id="bankInfo" style="display: none;">
                계좌번호: <input type="hidden" type="text" >00은행<br>
                은행명: <input type="hidden" type="text" >000-00000-000000<br>
            </div>
        </td>
       
    </tr>
    <tr>
     <td>
        <span style="font-size: 25px; font-weight: bold;">마일리지 사용</span><br>
        </td>
    </tr>
   
</tbody>



					</table>
					 <button class="lo" type="submit">결제하기</button>
				</form>
			</div>
		</div>
	</div>
    <!-- 주문서 영역 -->
    <div class="wrapper">
      <div
        class="box_section"
        style="
          padding: 40px 30px 50px 30px;
          margin-top: 30px;
          margin-bottom: 50px;
        "
      >
        <!-- 결제 UI -->
        <div id="payment-method"></div>
        <!-- 이용약관 UI -->
        <div id="agreement"></div>
        <!-- 쿠폰 체크박스 -->
        <div style="padding-left: 25px">
          <div class="checkable typography--p">
            <label for="coupon-box" class="checkable__label typography--regular"
              ><input
                id="coupon-box"
                class="checkable__input"
                type="checkbox"
                aria-checked="true"
              /><span class="checkable__label-text"
                >5,000원 쿠폰 적용</span
              ></label
            >
          </div>
        </div>
        <!-- 결제하기 버튼 -->
        <div class="result wrapper">
          <button class="button" id="payment-button" style="margin-top: 30px">
            결제하기
          </button>
      </div>
    </div></div>
    <script>
      const button = document.getElementById("payment-button");
      const coupon = document.getElementById("coupon-box");
      const generateRandomString = () =>
        window.btoa(Math.random()).slice(0, 20);
      const amount = 50000;
      // ------  결제위젯 초기화 ------
      // TODO: clientKey는 개발자센터의 결제위젯 연동 키 > 클라이언트 키로 바꾸세요.
      // TODO: 구매자의 고유 아이디를 불러와서 customerKey로 설정하세요. 이메일・전화번호와 같이 유추가 가능한 값은 안전하지 않습니다.
      // @docs https://docs.tosspayments.com/reference/widget-sdk#sdk-설치-및-초기화
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
          paymentMethodWidget.updateAmount(amount);
        }
      });

      // ------ '결제하기' 버튼 누르면 결제창 띄우기 ------
      // @docs https://docs.tosspayments.com/reference/widget-sdk#requestpayment결제-정보
      button.addEventListener("click", function () {
        // 결제를 요청하기 전에 orderId, amount를 서버에 저장하세요.
        // 결제 과정에서 악의적으로 결제 금액이 바뀌는 것을 확인하는 용도입니다.
   	  	paymentWidget.requestPayment({
            orderId: generateRandomString(),
            orderName: "토스 티셔츠 외 2건",
            successUrl: window.location.origin + "${pageContext.request.contextPath}/order/success",
            failUrl: window.location.origin + "${pageContext.request.contextPath}/order/fail",
            customerEmail: "customer123@gmail.com",
            customerName: "김토스",
            customerMobilePhone: "01012341234",
          });
      });
    </script>
  </body>

</html>