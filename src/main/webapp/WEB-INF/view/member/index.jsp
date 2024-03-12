<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<style>
.list {
	list-style: none;
	margin: 0;
	padding: 0;
	
}

.list {
	margin: 2px 2px auto; /* 상하 0, 좌우 10px 간격 지정 */
	margin-left: 6px;
	padding: 0 0px;
	border-radius: 5px;
	float: left;
	position: relative;
	text-align: center; /* 내용 중앙 정렬 */
}
.remaining-time {

	font-weight: bold; /* 굵기 설정 */
	font-size: 15px; /* 크기 설정 */
	color: red; /* 글자 색상 설정 */
}
.now_best{
margin-bottom:700px;
}
.product{
	font-weight: bold; /* 굵기 설정 */
	font-size: 15px; /* 크기 설정 */
	color: black; /* 글자 색상 설정 */
}
</style>


<body>
	<div class="wrap">
		<div class="main">
			<!-- 상단 슬라이드 사진 start -->

			<div
				class="main-rolling mySwiper swiper-initialized swiper-horizontal swiper-pointer-events">
				<ul class="swiper-wrapper" id="swiper-wrapper-2c1ef87784aa5cfe"
					aria-live="off"
					style="transition-duration: 0ms; transform: translate3d(-2113.54px, 0px, 0px);">
					<li
						class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-prev"
						data-swiper-slide-index="0" role="group" aria-label="1 / 10">
						<a href="" target="_self" data-b_type="slider" data-b_loc="1"
						data-b_sloc="24">
							<div class="main_roll_text">
								<div class="main_roll_tit">유명브랜드 골프클럽</div>
								<div class="main_roll_txt">BRAND GOLF CLUB</div>
							</div>
							<div class="main_roll_img">
								<img src="${pageContext.request.contextPath}/image/art.png"
									alt="골프클럽">
							</div>
					</a>
					</li>
					<li
						class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-active"
						data-swiper-slide-index="1" role="group" aria-label="2 / 10">
						<a
						href="/hey/search?keyword=%ED%94%BC%EA%B7%9C%EC%96%B4&amp;type=buy
"
						target="_self" data-b_type="slider" data-b_loc="1"
						data-b_sloc="24">
							<div class="main_roll_text">
								<div class="main_roll_tit">세상에서 가장 핫한 피규어</div>
								<div class="main_roll_txt">WORLD HOTTEST FIGURES</div>
							</div>
							<div class="main_roll_img">
								<img src="${pageContext.request.contextPath}/image/ell.png"
									alt="피규어">
							</div>
					</a>
					</li>
					<li
						class="swiper-slide swiper-slide-duplicate swiper-slide-duplicate-next"
						data-swiper-slide-index="2" role="group" aria-label="3 / 10">
						<a href="" target="_self" data-b_type="slider" data-b_loc="1"
						data-b_sloc="24">
							<div class="main_roll_text">
								<div class="main_roll_tit">정교함의 극치! 프라모델</div>
								<div class="main_roll_txt">HIGH END QUALITY PLAMODEL</div>
							</div>
							<div class="main_roll_img">
								<img src="${pageContext.request.contextPath}/image/pramodel.png"
									alt="프라모델">
							</div>
					</a>
					</li>
					<li class="swiper-slide swiper-slide-duplicate"
						data-swiper-slide-index="3" role="group" aria-label="4 / 10">
						<a
						href="/hey/search?keyword=%EC%BA%A0%ED%95%91%EC%9A%A9%ED%92%88&amp;type=buy
"
						target="_self" data-b_type="slider" data-b_loc="1"
						data-b_sloc="24">
							<div class="main_roll_text">
								<div class="main_roll_tit">스타일리쉬 감성 캠핑기어</div>
								<div class="main_roll_txt">STYLISH CAMPING GEAR</div>
							</div>
							<div class="main_roll_img">
								<img src="${pageContext.request.contextPath}/image/goods.png"
									alt="캠핑용품">
							</div>
					</a>
					</li>
					<li class="swiper-slide swiper-slide-duplicate"
						data-swiper-slide-index="4" role="group" aria-label="5 / 10">
						<a
						href="/hey/search?keyword=%EB%82%9A%EC%8B%9C%EC%9A%A9%ED%92%88&amp;type=buy"
						target="_self" data-b_type="slider" data-b_loc="1"
						data-b_sloc="24">
							<div class="main_roll_text">
								<div class="main_roll_tit">매니아 강추! 브랜드 낚시용품</div>
								<div class="main_roll_txt">FISHING GEAR SHIMANO / DAIWA</div>
							</div>
							<div class="main_roll_img">
								<img src="${pageContext.request.contextPath}/image/shoes.png"
									alt="낚시용품">
							</div>
					</a>
					</li>
					<li class="swiper-slide" data-swiper-slide-index="1" role="group"
						aria-label="4 / 10"><a
						href="/hey/search?keyword=%EC%BA%A0%ED%95%91%EC%9A%A9%ED%92%88&amp;type=buy
"
						target="_self" data-b_type="slider" data-b_loc="1"
						data-b_sloc="24">
							<div class="main_roll_text">
								<div class="main_roll_tit">스타일리쉬 감성 캠핑기어</div>
								<div class="main_roll_txt">STYLISH CAMPING GEAR</div>
							</div>
							<div class="main_roll_img">
								<img src="${pageContext.request.contextPath}/image/art.png"
									alt="캠핑용품">
							</div>
					</a></li>
					<li class="swiper-slide" data-swiper-slide-index="2" role="group"
						aria-label="4 / 10"><a
						href="/hey/search?keyword=%EC%BA%A0%ED%95%91%EC%9A%A9%ED%92%88&amp;type=buy
"
						target="_self" data-b_type="slider" data-b_loc="1"
						data-b_sloc="24">
							<div class="main_roll_text">
								<div class="main_roll_tit">스타일리쉬 감성 캠핑기어</div>
								<div class="main_roll_txt">STYLISH CAMPING GEAR</div>
							</div>
							<div class="main_roll_img">
								<img src="${pageContext.request.contextPath}/image/ell.png"
									alt="캠핑용품">
							</div>
					</a></li>

					<li class="swiper-slide" data-swiper-slide-index="3" role="group"
						aria-label="4 / 10"><a
						href="/hey/search?keyword=%EC%BA%A0%ED%95%91%EC%9A%A9%ED%92%88&amp;type=buy
"
						target="_self" data-b_type="slider" data-b_loc="1"
						data-b_sloc="24">
							<div class="main_roll_text">
								<div class="main_roll_tit">스타일리쉬 감성 캠핑기어</div>
								<div class="main_roll_txt">STYLISH CAMPING GEAR</div>
							</div>
							<div class="main_roll_img">
								<img src="${pageContext.request.contextPath}/image/pramodel.png"
									alt="캠핑용품">
							</div>
					</a></li>
					<li class="swiper-slide" data-swiper-slide-index="4" role="group"
						aria-label="5 / 10"><a
						href="/hey/search?keyword=%EB%82%9A%EC%8B%9C%EC%9A%A9%ED%92%88&amp;type=buy"
						target="_self" data-b_type="slider" data-b_loc="1"
						data-b_sloc="24">
							<div class="main_roll_text">
								<div class="main_roll_tit">매니아 강추! 브랜드 낚시용품</div>
								<div class="main_roll_txt">FISHING GEAR SHIMANO / DAIWA</div>
							</div>
							<div class="main_roll_img">
								<img src="${pageContext.request.contextPath}/image/goods.png"
									alt="낚시용품">
							</div>
					</a></li>
					<li class="swiper-slide" data-swiper-slide-index="5" role="group"
						aria-label="6 / 10"><a
						href="/hey/search?keyword=%EC%95%85%EA%B8%B0&amp;type=buy"
						target="_self" data-b_type="slider" data-b_loc="1"
						data-b_sloc="24">
							<div class="main_roll_text">
								<div class="main_roll_tit">당신의 음악생활을 도와드리는</div>
								<div class="main_roll_txt">MUSICAL INSTRUMENTS</div>
							</div>
							<div class="main_roll_img">
								<img src="${pageContext.request.contextPath}/image/shoes.png"
									alt="악기">
							</div>
					</a></li>



				</ul>
				<div class="swiper-pagination"></div>
				<span class="swiper-notification" aria-live="assertive"
					aria-atomic="true"></span>
			</div>
		</div>
		<script>
			var main_rolling = new Swiper(".main-rolling ", {
				autoplay : {
					delay : 3500,
					disableOnInteraction : false,
				},
				centeredSlides : true,
				slidesPerView : "auto",
				spaceBetween : 0,
				loop : true,
				loopAdditionalSlides : 1,
				speed : 3000,
			});
		</script>
		<!-- 상단 슬라이드 사진 end -->

		<!-- 중단 영역 스타트 -->

		<div class="conent_box">
			<div class="main_show_up_list">
				<h3 class="hd3">경매 카테고리</h3>
				<ul>
					<li><a
						href="/hey/search?keyword=%EC%95%85%EA%B8%B0&amp;type=buy"
						target="_self" data-b_type="img" data-b_idx="712">
							<div class="msul_img">
								<img src="${pageContext.request.contextPath}/image/lens.png"
									alt="악기">
							</div>
							<div class="msul_text">
								<div class="msul_txt">가슴속 깊은곳 연주자의 꿈</div>
								<div class="msul_tit">악기</div>
							</div>
					</a></li>
					<li><a href="/hey/search?keyword=j-pop&amp;type=buy"
						target="_self" data-b_type="img" data-b_idx="713">
							<div class="msul_img">
								<img src="${pageContext.request.contextPath}/image/lens.png"
									alt="악기" alt="J-POP">
							</div>
							<div class="msul_text">
								<div class="msul_txt">소프트팝의 영향을 받아 감미로운</div>
								<div class="msul_tit">J-POP</div>
							</div>
					</a></li>
					<li><a
						href="/hey/search?keyword=%EC%B9%B4%EB%A9%94%EB%9D%BC%EB%A0%8C%EC%A6%88&amp;type=buy
"
						target="_self" data-b_type="img" data-b_idx="714">
							<div class="msul_img">
								<img src="${pageContext.request.contextPath}/image/lens.png"
									alt="악기" alt="카메라 렌즈">
							</div>
							<div class="msul_text">
								<div class="msul_txt">뛰어난 색표현과 고해상도 이미지 실현</div>
								<div class="msul_tit">카메라 렌즈</div>
							</div>
					</a></li>
					<li><a
						href="/hey/search?keyword=%EB%AA%85%ED%92%88%EC%8B%9C%EA%B3%84&amp;type=buy
"
						target="_self" data-b_type="img" data-b_idx="715">
							<div class="msul_img">
								<img src="${pageContext.request.contextPath}/image/lens.png"
									alt="악기" alt="명품 시계">
							</div>
							<div class="msul_text">
								<div class="msul_txt">시간이 흘러도 변치않는 품격</div>
								<div class="msul_tit">명품 시계</div>
							</div>
					</a></li>
					<li><a href="/hey/search?keyword=ps5&amp;type=buy
"
						target="_self" data-b_type="img" data-b_idx="716">
							<div class="msul_img">
								<img src="${pageContext.request.contextPath}/image/lens.png"
									alt="악기" alt="PS 5">
							</div>
							<div class="msul_text">
								<div class="msul_txt">최고의 게임, 최고의 일상</div>
								<div class="msul_tit">PS 5</div>
							</div>
					</a></li>
					<li><a
						href="/hey/search?keyword=%EB%8B%8C%ED%85%90%EB%8F%84%EC%8A%A4%EC%9C%84%EC%B9%98&amp;type=buy
"
						target="_self" data-b_type="img" data-b_idx="717">
							<div class="msul_img">
								<img src="${pageContext.request.contextPath}/image/lens.png"
									alt="악기" alt="닌텐도 스위치">
							</div>
							<div class="msul_text">
								<div class="msul_txt">별의 커비 / 마리오 / 젤다의 전설</div>
								<div class="msul_tit">닌텐도 스위치</div>
							</div>
					</a></li>
					<li><a
						href="/hey/search?keyword=%EC%95%A0%EB%8B%88%20dvd&amp;type=buy
"
						target="_self" data-b_type="img" data-b_idx="718">
							<div class="msul_img">
								<img src="${pageContext.request.contextPath}/image/lens.png"
									alt="악기" alt="애니 DVD">
							</div>
							<div class="msul_text">
								<div class="msul_txt">최애의 아이, 귀칼, 샬롯의 거미줄</div>
								<div class="msul_tit">애니 DVD</div>
							</div>
					</a></li>
					<li><a
						href="/hey/search?keyword=%ED%8E%9C%EB%8D%94%EA%B8%B0%ED%83%80&amp;type=buy
"
						target="_self" data-b_type="img" data-b_idx="719">
							<div class="msul_img">
								<img src="${pageContext.request.contextPath}/image/lens.png"
									alt="악기" alt="펜더 기타">
							</div>
							<div class="msul_text">
								<div class="msul_txt">오랜 경력의 장인들이 핸드메이드로 만드는</div>
								<div class="msul_tit">펜더 기타</div>
							</div>
					</a></li>
					<li><a
						href="/hey/search?keyword=%EB%A0%88%EA%B3%A0&amp;type=buy&amp;type2=undefined&amp;type3=1"
						target="_self" data-b_type="img" data-b_idx="720">
							<div class="msul_img">
								<img src="/banner/d07d6fa8e146ef7a72c8312d920ad928.png"
									alt="레고 월드">
							</div>
							<div class="msul_text">
								<div class="msul_tit">레고 월드</div>
								<div class="msul_txt">
									당신의 초능력을<br>깨워 보아요!
								</div>
							</div>
					</a></li>
				</ul>
			</div>

			<script>
				var swiper = new Swiper(".spex_roll", {
					slidesPerView : 9,
					loop : true,
					autoplay : {
						delay : 2500,
						disableOnInteraction : true,
					},
					navigation : {
						nextEl : ".special_ex .swiper-button-next",
						prevEl : ".special_ex .swiper-button-prev",
					},
				});
			</script>
			<script>
    // Ajax 호출하여 남은 시간 업데이트
    function updateRemainingTime(pnum, regdate) {
        if (!regdate) {
          	$("#remainingTime-" + pnum).html("즉시구매 된 상품입니다.");
            return;
        }

        var currentTime = new Date().getTime();
        var expirationTime = new Date(regdate).getTime() + (7 * 24 * 60 * 60 * 1000); // 7일을 밀리초로 변환

        var remainingTime = expirationTime - currentTime;
        if (remainingTime <= 0) {
            $("#remainingTime-" + pnum).text("시간이 만료된 상품입니다.");
            return;
        }

        var days = Math.floor(remainingTime / (1000 * 60 * 60 * 24));
        var hours = Math.floor((remainingTime % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((remainingTime % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((remainingTime % (1000 * 60)) / 1000);

        $("#remainingTime-" + pnum).text(days + "일 " + hours + "시간 " + minutes + "분 " + seconds + "초");
    }

    // 페이지 로드 후 초기 업데이트
    $(document).ready(function() {
        <c:forEach var="b" items="${li}">
            updateRemainingTime(${b.pnum}, "${b.regdate}");
        </c:forEach>
    });

    // 일정 간격으로 업데이트
    setInterval(function() {
        <c:forEach var="b" items="${li}">
            updateRemainingTime(${b.pnum}, "${b.regdate}");
        </c:forEach>
    }, 1000); // 1초마다 업데이트
</script>
			<!-- 하단 영역 스타트 -->

		</div>




		<!-- 배너 끝 -->
		<!-- 페이지 내용 끝 -->
	</div>
</html>