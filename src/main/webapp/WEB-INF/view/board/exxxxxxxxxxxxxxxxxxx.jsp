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


				
			</ul>
		</div>


	</div>
</div>
</html>
