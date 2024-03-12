<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>



<link rel="shortcut icon" type="image/x-icon"
	href="https://japaning.co.kr/favicon.ico">

<link rel="preload"
	href="${pageContext.request.contextPath}/common/css/font/NotoSansKR/NotoSans-Regular.woff2" as="font"
	type="font/woff2" crossorigin="">
<link rel="preload"
	href="${pageContext.request.contextPath}/common/css/font/NotoSansKR/NotoSans-Bold.woff2" as="font"
	type="font/woff2" crossorigin="">

<link rel="preload"
	href="${pageContext.request.contextPath}/common/css/font/Spoqa/SpoqaHanSansNeo-Light.woff2" as="font"
	type="font/woff2" crossorigin="">
<link rel="preload"
	href="${pageContext.request.contextPath}/common/css/font/Spoqa/SpoqaHanSansNeo-Regular.woff2" as="font"
	type="font/woff2" crossorigin="">
<link rel="preload"
	href="${pageContext.request.contextPath}/common/css/font/Spoqa/SpoqaHanSansNeo-Medium.woff2" as="font"
	type="font/woff2" crossorigin="">
<link rel="preload"
	href="${pageContext.request.contextPath}/common/css/font/Spoqa/SpoqaHanSansNeo-Bold.woff2" as="font"
	type="font/woff2" crossorigin="">



<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/common/css/new_base.css?ver=1708060302">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>



<!--<link rel="stylesheet" href="/css/integ.css" type="text/css" />-->
<link rel="stylesheet" href="/css/common.css" type="text/css">
<link rel="stylesheet" href="/css/renew.css?v=1708060302"
	type="text/css">
<link rel="stylesheet" href="/css/jquery.bxslider.css" type="text/css">
<link type="text/css" rel="stylesheet" href="/css/customs_calc.css">

<script src="${pageContext.request.contextPath}/common/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/common/js/common.js?ver=5"></script>
<script src="${pageContext.request.contextPath}/common/js/site.js?v=1"></script>
<script src="${pageContext.request.contextPath}/common/js/layer_pop.js"></script>
<script src="${pageContext.request.contextPath}/common/js/jquery.cookie.js"></script>
<script src="${pageContext.request.contextPath}/common/js/jquery.bxslider.min.js"></script>
<script src="//wcs.naver.net/wcslog.js">
	
</script>
<script src="${pageContext.request.contextPath}/common/js/placeholders.min.js"></script>


<link rel="stylesheet" href="${pageContext.request.contextPath}/common/css/jquery.ui.css"
	type="text/css">

<!-- Mirrored from japaning.co.kr/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 16 Feb 2024 02:46:16 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>

<title>KIC AUCTION</title>

<meta name="author" content="재팬잉">
<META HTTP-EQUIV="imagetoolbar" CONTENT="no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Expires" content="-1">
<meta name="viewport" content="width=1100,user-scalable=yes">

<link rel="canonical" href="index.html">

<!-- BEGIN OPENGRAPH -->
<meta property="og:image" content="${pageContext.request.contextPath}/common/kic.png">
<meta property="og:url" content="index.html">
<!-- END OPENGRAPH -->
<!-- NG Tag -->
<meta name="naver-site-verification"
	content="aca27a7f97cd39028d35587d61a9100c13d79371">
<meta name="google-site-verification"
	content="tFxM4w1aGho7l2iiNC6OM4KepwC8oFWZjRyDrFlcOt4">
<!-- End NG Tag -->



<!-- Google Tag Manager -->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = '../www.googletagmanager.com/gtm5445.html?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-TNP5MH7C');
</script>
<!-- End Google Tag Manager -->




<link rel="shortcut icon" type="image/x-icon"
	href="https://japaning.co.kr/favicon.ico">

<link rel="preload"
	href="https://japaning.co.kr/css/font/NotoSansKR/NotoSans-Regular.woff2"
	as="font" type="font/woff2" crossorigin>
<link rel="preload"
	href="https://japaning.co.kr/css/font/NotoSansKR/NotoSans-Bold.woff2"
	as="font" type="font/woff2" crossorigin>

<link rel="preload"
	href="https://japaning.co.kr/css/font/Spoqa/SpoqaHanSansNeo-Light.woff2"
	as="font" type="font/woff2" crossorigin>
<link rel="preload"
	href="https://japaning.co.kr/css/font/Spoqa/SpoqaHanSansNeo-Regular.woff2"
	as="font" type="font/woff2" crossorigin>
<link rel="preload"
	href="https://japaning.co.kr/css/font/Spoqa/SpoqaHanSansNeo-Medium.woff2"
	as="font" type="font/woff2" crossorigin>
<link rel="preload"
	href="https://japaning.co.kr/css/font/Spoqa/SpoqaHanSansNeo-Bold.woff2"
	as="font" type="font/woff2" crossorigin>



<link rel="stylesheet" type="text/css"
	href="https://japaning.co.kr/css/new_base.css?ver=1708051577">
<link rel="stylesheet"
	href="../cdn.jsdelivr.net/npm/swiper%408/swiper-bundle.min.css">
<script src="../cdn.jsdelivr.net/npm/swiper%408/swiper-bundle.min.js"></script>



<!--<link rel="stylesheet" href="/css/integ.css" type="text/css" />-->
<link rel="stylesheet" href="https://japaning.co.kr/css/common.css"
	type="text/css">
<link rel="stylesheet"
	href="https://japaning.co.kr/css/renew.css?v=1708051577"
	type="text/css">
<link rel="stylesheet"
	href="https://japaning.co.kr/css/jquery.bxslider.css" type="text/css">
<link type="text/css" rel="stylesheet"
	href="https://japaning.co.kr/css/customs_calc.css">

<script src="https://japaning.co.kr/js/jquery.min.js"></script>
<script src="https://japaning.co.kr/js/common.js?ver=5"></script>
<script src="https://japaning.co.kr/js/site.js?v=1"></script>
<script src="https://japaning.co.kr/js/layer_pop.js"></script>
<script src="https://japaning.co.kr/js/jquery.cookie.js"></script>
<script src="https://japaning.co.kr/js/jquery.bxslider.min.js"></script>
<script src="../wcs.naver.net/wcslog.js">
	
</script>
<script src="https://japaning.co.kr/js/placeholders.min.js"></script>


<link rel="stylesheet" href="https://japaning.co.kr/css/jquery.ui.css"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap"
	rel="stylesheet">




<script>
	var user_id = "";
	var mobile_chk = false;
</script>

<script src="https://japaning.co.kr/js/mosaic.1.0.1.min.js"></script>
<style>
.mosaic-block {
	position: relative;
	overflow: hidden;
	width: 182px;
	height: 182px;
}

.mosaic-backdrop {
	display: none;
	position: absolute;
	top: 0;
	height: 100%;
	width: 100%;
	background: #111;
}

.mosaic-overlay {
	display: none;
	z-index: 5;
	position: absolute;
	width: 100%;
	height: 100%;
	background: #111;
}

.bar .mosaic-overlay {
	z-index: 9999;
	bottom: -100px;
	height: 30px;
	background: url(https://japaning.co.kr/images/bg-black.png);
}
</style>

</head>
<body>
	<!-- 라이트박스 레이어 지정 -->
	<div id="SLB_film"
		style="z-index: 1000; position: absolute; display: none; width: 1536px; height: 8189px; background-color: rgb(0, 0, 0); opacity: 0.6; overflow: hidden;"></div>
	<div id="SLB_content"
		style="z-index: 99999; position: absolute; margin: 0 auto; overFlow: hidden"></div>
	<div id="SLB_loading">
		<!-- <img src="/images/bigWaiting.gif"> -->
	</div>
	<!-- 라이트박스 레이어 지정 -->







	<div class="wrap">



		<div style="width: 100%; margin: 0 auto;">
			<div style="width: 1280px; margin: 0 auto; position: relative;">
				<div class="est_app_div" style="top: 42px; left: 0;"></div>
			</div>
		</div>

		<div class="header">
			<div class="header_in">
				<div class="header_top_box">
					<div>
						&nbsp;
						<!-- 상단 좌측 구역  -->
					</div>
					<!--<div class="add_site">
					<ul>
						<li><a href="http://theeuro.co.kr/?ad=old_interplanet" target="_blank">일본 유럽 구매대행</a></li>
					</ul>
				</div>-->
					<div class="head_menu">
						<ul>
							<c:if test="${sessionScope.id==null}">
								<li><a
									href="${pageContext.request.contextPath}/member/loginForm"
									class="on">로그인</a></li>
								<li><a href="../member/agree">회원가입</a></li>
							</c:if>
							<c:if test="${sessionScope.id!=null}">
								<li><a
									href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
								<li class="menu-item-has-children"><a href="#">[${amem.id }]님
										회원등급:${Tier} 마일리지:${sum }</a></li>


							</c:if>
						</ul>
					</div>
				</div>
			</div>
		</div>



		<!-- 재팬잉 헤더 추가 부분 -->
		<div class="japaning_header">
			<input type="hidden" id="search_sel1" value=""> <input
				type="hidden" id="search_sel2" value="select_sgood">
			<div class="mid_head">
				<div class="logo">
					<a href="${pageContext.request.contextPath}/member/index"> <span
						style="font-family: 'Dancing Script', cursive; color: black; font-weight: 700; font-size: 30px">KIC
							AUCTION</span>
					</a>

				</div>
				<div class="search_box">
					<div class="inborder">
						<div class=""></div>
						<div class="select"></div>
						<input type="search" class="cata_search" name="SearchWord"
							id="SearchWord" placeholder="검색어를 입력해주세요." value=""
							onkeydown="javascript: if (event.keyCode == 13) { total_search();return false; }">

					</div>

					<!-- auto keyword -->
					<div id="search_div">
						<div id="text_div">
							<div id="search_text"></div>
						</div>
					</div>


					<style>
#search_text {
	position: absolute;
	top: 0px;
	width: 301px;
	border-left: 1px solid #ddd;
	border-right: 1px solid #ddd;
	border-bottom: 1px solid #ddd;
	z-index: 200;
	background-color: #FFFFFF
}

.ls_body {
	width: 295px;
	padding: 3px 0;
	background: #fff;
}

.stext {
	font-size: 12px;
	clear: both;
}

.stext A:link {
	color: #666;
	text-decoration: none;
	display: block;
	width: 295px;
	height: 25px;
	padding: 0 15px;
	line-height: 22px;
}

.stext A:visited {
	color: #666;
	text-decoration: none;
	display: block;
	width: 295px;
	height: 25px;
	padding: 0 15px;
	line-height: 22px;
}

.stext A:active {
	color: #666;
	text-decoration: none;
	display: block;
	width: 295px;
	height: 25px;
	padding: 0 15px;
	line-height: 22px;
}

.stext A:hover {
	color: #666;
	text-decoration: none;
	display: block;
	width: 295px;
	height: 25px;
	padding: 0 15px;
	line-height: 22px;
	background: #F6F6F6;
	box-sizing: border-box;
}

.ls_bottom {
	height: 25px;
	line-height: 22px;
	border-top: 1px solid #E2E2E2;
	background: #F3F3F3;
	text-align: right;
	font-size: 12px;
	letter-spacing: -1px;
	padding-right: 15px;
	clear: both;
}

.ls_bottom li {
	text-align: right;
	width: 270px;
}

.ls_bottom A:link {
	color: #777;
	text-decoration: none;
}

.ls_bottom A:visited {
	color: #777;
	text-decoration: none;
}

.ls_bottom A:active {
	color: #777;
	text-decoration: none;
}

.ls_bottom A:hover {
	color: #777;
	text-decoration: none;
}

#search_div {
	z-index: 200;
	width: 435px;
	margin-left: 347px;
	margin-top: -1px;
	position: relative;
}

#text_div {
	z-index: 200;
	width: 250px;
	left: 0px;
	display: none;
}
</style>
				</div>

				<div class="lank_cover_box">
					<span class="lank_box_tit"></span>
					<div class="lank_box"></div>
					<div class="lank_box_hide"></div>
				</div>


			</div>
		</div>



		<!-- 페이지 내용 시작 -->
		<!-- 배너 시작 -->

		<!-- 메루카리 24시간 안내팝업 -->


		<div class="main_cover">
			<div class="main_menu">
				<ul>
					<li class="cata_best_link"><a href="javascript:void(0);">
							<img
							src="https://japaning.co.kr/images/renew220916/cata_best_icon.png"
							alt="" style="margin: -2px 10px 0 0;"> 전체 메뉴
					</a></li>
					
					<li><a href="${pageContext.request.contextPath}/board/products?boardid=1">
							실시간경매 </a></li>
							
					<li><a href="${pageContext.request.contextPath}/member/memberinfo">마이페이지</a></li>
					<li><a href="${pageContext.request.contextPath}/member/memberinfo">고객센터</a></li>
				</ul>
			</div>
		</div>
		<div class="main_category_cover">
			<div class="main_category">
				<!-- ### 야후경매 서브메뉴 S -->
				<div class="item">
					<h2 class="hd2">경매 카테고리</h2>
					<ul>
						<li><a
							href="${pageContext.request.contextPath}/board/products?boardid=1">가전</a></li>
						<li><a
							href="${pageContext.request.contextPath}/board/products?boardid=2">의류</a></li>
						<li><a
							href="${pageContext.request.contextPath}/board/products?boardid=3">프라모델</a></li>
						<li><a
							href="${pageContext.request.contextPath}/board/products?boardid=4">골동품</a></li>
						<li><a
							href="${pageContext.request.contextPath}/board/products?boardid=5">악기</a></li>
						<li><a
							href="${pageContext.request.contextPath}/board/products?boardid=6">명품시계</a></li>
						<li><a
							href="${pageContext.request.contextPath}/board/products?boardid=7">악세사리</a></li>
						<li><a
							href="${pageContext.request.contextPath}/board/products?boardid=8">레저</a></li>
						
					</ul>

				</div>
				
				<div class="item">
					<h2 class="hd2">마이페이지</h2>
					<ul>
						<li><a
							href="${pageContext.request.contextPath}/board/buyList">입찰중/입찰완료 상품</a></li>
						<li><a
							href="${pageContext.request.contextPath}/jumun/myList">판매등록상품</a></li>
						<li><a
							href="${pageContext.request.contextPath}/jumun/jumunList">찜한상품</a></li>					
					</ul>

				</div>
				
					<div class="item">
					<h2 class="hd2">고객센터</h2>
					<ul>
						<li><a
							href="">공지사항</a></li>
						<li><a
							href="">자주묻는질문</a></li>
						<li><a
							href="">나의1:1문의글</a></li>
	
						
					</ul>

				</div>
					<div class="item">
					

					</div>
						<div class="item">
					

					</div>
					
						<div class="item">
					

					</div>
			</div>
			
		</div>
		
		<script>
		<!-- 카테고리 -->
			$(".cata_best_link").click(function() {
				$(".main_category_cover").stop().toggle();
			});
		</script>




		<!-- Mirrored from japaning.co.kr/ by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 16 Feb 2024 02:46:32 GMT -->
</html>
