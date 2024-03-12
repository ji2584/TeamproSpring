<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<div class="wrap">

	<div id="mypage">


		<div class="center_cover">
			<ul class="center_menu">
				<li>
					<div class="order_title_table">
						마이페이지
						<p class="en">MYPAGE</p>
					</div>
				</li>
				<li>
					<div class="guide_category">
						<div class="item">
							<p class="tit">경매내역</p>
							<p class="txt">
								<a href="${pageContext.request.contextPath}/board/buyList">입찰중/입찰완료
									상품</a> <a href="${pageContext.request.contextPath}/jumun/myList">판매등록상품</a>
								<a href="${pageContext.request.contextPath}/jumun/jumunList">찜한상품</a>
							</p>
						</div>
						
						
						<div class="item">
							<p class="tit">회원정보</p>
							<p class="txt">
								<a href="/coupon" title="">나의등급/쿠폰다운</a> <a
									href="/auth/modify_ready" title="">개인정보수정</a> <a
									href="/auth/unregister">회원탈퇴신청</a>
							</p>
						</div>
						<div class="item">
							<p class="tit">고객센터</p>
							<p class="txt">
								<a href="${pageContext.request.contextPath}/notice/noticeList?boardid=1">공지사항</a>
								<a href="${pageContext.request.contextPath}/notice/noticeList?boardid=2">자주묻는질문</a>
									<a href="${pageContext.request.contextPath}/notice/mynotice">나의 1:1 문의글</a>
							</p>
						</div>
					</div>
				</li>
			</ul>

			<ul class="mypage_title">
				<li class="mypage_info_box">
					<div class="item">
						<p class="txt" style="margin-bottom: 5px;">WELCOME</p>
						<p class="txt">
							아이디<br><span class="num" style="font-weight:bold;">${amem.id }</span>
						</p>
						


					</div>
					
						<div class="item">
					
						<p class="txt" style="margin-top: 18px; ">
							등급<br>  <span class="num" style="font-weight:bold;">${Tier}</span>

						
						</p>
					</div>
					<div class="item">
					
						<p class="txt" style="margin-top: 18px;">
							마일리지<br>  <span class="num" style="font-weight:bold;">${sum }원</span>

						
						</p>
					</div>
					<div class="item">
						<p class="txt" style="position: relative;">
							쿠폰<br> <a href="/mypage/my_coupon"> <span class="num">2</span>
								<span class="sb">개</span>
							</a> <a href="/coupon" class="coupon_down">쿠폰다운로드</a>
						</p>
						<p class="txt" style="margin-top: 18px; position: relative;">
							입찰보증금<br> <a href="/mypage/my_auction_ticket"> <span
								class="num">0</span> <span class="sb">원</span>
							</a> <a href="/mypage/pay_return" class="refund">환불</a>
						</p>
					</div>
					<div class="item">
						<p class="txt">충전</p>
						<p class="cash_img">
							<a href="/mypage/auction_pay_add"> <img
								src="/images/renew220916/cash_img01.png" alt="입찰보증금충전"
								style="margin-left: 5px;">
							</a>
						</p>
					</div>
				</li>


				<form class="validation-form" novalidate action="memberUpdatePro"
					method="post" name="f">


					<li>
						<table class="mypage_table_head">
							<caption>
								개인정보 수정 <img
									src="${pageContext.request.contextPath}/image/integ/20150918_10.png">
								<p>
									안녕하세요! <br> KIC AUCTION은 회원님의 개인정보를 신중하게 보호하려 노력하고 있으며,
									회원님의 동의없이 정보가 유출되지 않습니다. 자세한 내용은 '개인정보취급방침'에서 확인해 주십시오.
								</p>
							</caption>
						</table>
						<table class="indiv_table">
							<colgroup>
								<col width="20%;">
								<col width="">
							</colgroup>
							<tbody>
								<tr>
									<th>아이디</th>
									<td style="height: 25px;">${amem.id }</td>
								</tr>
								<tr>
									<th>비밀번호</th>
									<td><input type="password" class="input_name" name="pass"
										id="pas"> <img
										src="${pageContext.request.contextPath}/image/join/lock_1.gif"
										id="pw_chk_img1" class="q"></td>
								</tr>
								<tr>
									<th>이름</th>
									<td><input type="hidden" value="${amem.name }"
										class="input_name" name="name" id="">${amem.name}</td>
								</tr>
								<tr>
									<th>전화번호</th>
									<td><input type="hidden" value="${amem.tel }"
										class="input_name" name="tel" id="">${amem.tel }</td>
								</tr>
								<tr>
									<th>이메일</th>
									<td><input type="text" value="${amem.email }"
										class="input_name" name="email" id="">
								</tr>

								<tr>
									<td colspan="2" style="height: 15px; padding: 0;"></td>
								</tr>

								<tr>
									<th>은행</th>
									<td><input type="text" value="${amem.bank }"
										class="input_name" name="bank" id=""></td>
								</tr>
								<tr>
									<th>계좌번호</th>
									<td><input type="text" value="${amem.account }"
										class="input_name" name="account" id=""></td>
								</tr>
								<tr>
									<th>주소</th>
									<td><input type="text" value="${amem.address }"
										class="input_name" name="address" id=""></td>
								</tr>

								<tr>
									<td colspan="2" style="height: 15px; padding: 0;"></td>
								</tr>



								<tr>
									<td colspan="2" class="austria">

										<button type="submit"
											style="width: 15%; height: 40px; font-size: 15px; background-color: #DC3224; border: none; color: white;">수정하기</button>
									</td>
								</tr>
								<!--
					<tr>
						<td colspan="2" style="border-bottom:none;letter-spacing:-1px;" class="retire">회원탈퇴<span>이용해 주셔서 감사합니다.사이트 이용 중 불편한 점이 있으셨다면 더욱 좋은 서비스를 제공해드릴 수 있도록 노력하겠습니다.<button type="submit" class="btn_dutch">회원탈퇴</button></span></td>
					</tr>
					-->
							</tbody>
						</table>
					</li>



				</form>
			</ul>
		</div>


	</div>
</div>
</html>
