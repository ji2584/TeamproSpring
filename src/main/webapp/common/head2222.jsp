<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Moschino | Minimalist Free HTML Portfolio by
	WowThemes.net</title>
<link rel='stylesheet' href='${pageContext.request.contextPath}/team/css/woocommerce-layout.css'
	type='text/css' media='all' />
<link rel='stylesheet' href='${pageContext.request.contextPath}/team/css/woocommerce-smallscreen.css'
	type='text/css' media='only screen and (max-width: 768px)' />
<link rel='stylesheet' href='${pageContext.request.contextPath}/team/css/woocommerce.css'
	type='text/css' media='all' />
<link rel='stylesheet' href='${pageContext.request.contextPath}/team/css/font-awesome.min.css'
	type='text/css' media='all' />
<link rel='stylesheet' href='${pageContext.request.contextPath}/team/style.css' type='text/css'
	media='all' />
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Oswald:400,500,700%7CRoboto:400,500,700%7CHerr+Von+Muellerhoff:400,500,700%7CQuattrocento+Sans:400,500,700'
	type='text/css' media='all' />
<link rel='stylesheet' href='${pageContext.request.contextPath}/team/css/easy-responsive-shortcodes.css'
	type='text/css' media='all' />
</head>
<style>
body {
	margin: 0;
	padding: 0;
}

.container {
	width: 60%;
	margin: 0 auto;
}

</style>
<body
	class="home page page-template page-template-template-portfolio page-template-template-portfolio-php">
	<div id="page">
		<div class="container">
			<header id="masthead" class="site-header">
				<div class="site-branding">
					<h1 class="site-title">
						<a href="index" rel="home">Kic Auction</a>
					</h1>
					<h2 class="site-description">Interactive Auction Platform</h2>
				</div>
				<nav id="site-navigation" class="main-navigation">
					<button class="menu-toggle">Menu</button>
					<a class="skip-link screen-reader-text" href="#content">Skip to
						content</a>
					<div class="menu-menu-1-container">
						<ul id="menu-menu-1" class="menu">
						<c:if test="${sessionScope.id!=null}">
                        <li><a href="${pageContext.request.contextPath}/admin/main">관리자페이지</a></li>
                        </c:if>
							<li><a href="${pageContext.request.contextPath}/member/index">메인</a></li>
							<li class="menu-item-has-children"><a href="#">게시판</a>
								<ul class="sub-menu">

						   <li><a href="${pageContext.request.contextPath}/notice/noticeList?boardid=1">공지사항</a></li> <!-- 관리자만 글작성 -->
                           <li><a href="${pageContext.request.contextPath}/notice/noticeList?boardid=2">자주묻는질문</a></li> <!-- 관리자만 글작성 -->
                           <li><a href="${pageContext.request.contextPath}/notice/noticeList?boardid=3">1:1문의</a></li> <!-- amem에서 ID받아서 작성자뜨게 -->


								</ul></li>

							<li class="menu-item-has-children"><a href="#">카테고리</a>
								<ul class="sub-menu">

									<li ><a
										href="${pageContext.request.contextPath}/board/products?boardid=1">가전</a></li>
									<li><a
										href="${pageContext.request.contextPath}/board/products?boardid=2">의류</a></li>
									<li><a
										href="${pageContext.request.contextPath}/board/products?boardid=3">도서</a></li>
									<li><a
										href="${pageContext.request.contextPath}/board/products?boardid=4">기타</a></li>
								</ul></li>

							<c:if test="${sessionScope.id==null}">
								<li><a href="../member/loginForm">로그인</a></li>
								<li><a href="../member/memberinput">회원가입</a></li>
							</c:if>
							<c:if test="${sessionScope.id!=null}">
								<li><a
									href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>




								<li class="menu-item-has-children"><a href="#">마이페이지</a>
									<ul class="sub-menu">

										<li><a href="${pageContext.request.contextPath}/member/memberinfo">회원정보</li>
										<li><a
											href="${pageContext.request.contextPath}/jumun/jumunList">찜한상품</a></li>
										<li><a
											href="${pageContext.request.contextPath}/jumun/myList">판매등록상품</a></li>

									</ul></li>
							</c:if>

							<!-- <ul class="sub-menu">
					<li><a href="portfolio-item.html">Portfolio Item</a></li>
					<li><a href="blog-single.html">Blog Article</a></li>
					<li><a href="shop-single.html">Shop Item</a></li>
					<li><a href="portfolio-category.html">Portfolio Category</a></li>
				</ul>
				</li>
				<li><a href="contact.html">Contact</a></li> -->
						</ul>
					</div>
				</nav>
			</header>
			<!-- #masthead -->

			<!-- #content -->
		</div>
		<!-- .container -->


	</div>
	<!-- #page -->

</body>
</html>