<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Home</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<link href="<c:url value="/resources/css/responsive.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet">

<!-- fevicon -->
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<!-- Tweaks for older IEs-->

<link href="<c:url value="/resources/fontawesome/css/all.min.css" />"
	rel="stylesheet">


<script src="<c:url value="/resources/js/jquery-3.0.0.min.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap.bundle.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/custom.js" />"></script>
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->
<body class="main-layout">
	<!-- loader  -->
	<div class="loader_bg">
		<div class="loader">
			<img src="${contextPath}/resources/images/loading.gif" alt="#" />
		</div>
	</div>
	<!-- end loader -->
	<!-- header -->
	<div class="header">
		<div class="container-fluid">
			<div class="row d_flex">
				<div class=" col-md-2 col-sm-3 col logo_section">
					<div class="full">
						<div class="center-desk">
							<div class="logo">
								<a href="index.html"><img
									src="${contextPath}/resources/images/fpt-logo.png" alt="#" /></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-8 col-sm-12">
					<nav class="navigation navbar navbar-expand-md navbar-dark ">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarsExample04"
							aria-controls="navbarsExample04" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarsExample04">
							<ul class="navbar-nav mr-auto">
								<li class="nav-item active"><a class="nav-link"
									href="/generalTuLam1">Home</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${contextPath}/PhieuThu/QuanLyPhieuThu">Quản Lý Phiếu Thu</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${contextPath}/PhieuChi/QuanLyPhieuChi">Quản Lý Phiếu Chi</a></li>
								<li class="nav-item"><a class="nav-link"
									href="${contextPath}/TongHop/QuanLyTongHop">Tổng Hợp Thu Chi</a></li>
							</ul>
						</div>
					</nav>
				</div>
				<div class="col-md-2">
					<ul class="email text_align_right">
						<li class="d_none"><a href="Javascript:void(0)"><i
								class="fa fa-user" aria-hidden="true"></i></a></li>
						<li class="d_none"><a href="Javascript:void(0)"><i
								class="fa fa-search" style="cursor: pointer;" aria-hidden="true"></i></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- end header inner -->
	<!-- end header -->
	<!-- top -->
	<div class="full_bg">
		<div class="slider_main">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<!-- carousel code -->
						<div id="carouselExampleIndicators" class="carousel slide">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0"
									class="active"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
							</ol>
							<div class="carousel-inner">
								<!-- first slide -->
								<div class="carousel-item active">
									<div class="carousel-caption relative">
										<div class="row d_flex">
											<div class="col-md-5">
												<div class="board">
													<i><img
														src="${contextPath}/resources/images/top_icon.png" alt="#" /></i>
													<h3>
														FPT<br> Kindergarten
													</h3>
													<div class="link_btn">
														<a class="read_more" href="Javascript:void(0)">Read
															More <span></span>
														</a>
													</div>
												</div>
											</div>
											<div class="col-md-7">
												<div class="banner_img">
													<figure>
														<img class="img_responsive"
															src="${contextPath}/resources/images/banner_img.png">
													</figure>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- second slide -->
								<div class="carousel-item">
									<div class="carousel-caption relative">
										<div class="row d_flex">
											<div class="col-md-5">
												<div class="board">
													<i><img
														src="${contextPath}/resources/images/top_icon.png" alt="#" /></i>
													<h3>
														FPT<br> Kindergarten
													</h3>
													<div class="link_btn">
														<a class="read_more" href="Javascript:void(0)">Read
															More <span></span>
														</a>
													</div>
												</div>
											</div>
											<div class="col-md-7">
												<div class="banner_img">
													<figure>
														<img class="img_responsive"
															src="${contextPath}/resources/images/banner_img.png">
													</figure>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- third slide-->
								<div class="carousel-item">
									<div class="carousel-caption relative">
										<div class="row d_flex">
											<div class="col-md-5">
												<div class="board">
													<i><img
														src="${contextPath}/resources/images/top_icon.png" alt="#" /></i>
													<h3>
														FPT<br> Kindergarten
													</h3>
													<div class="link_btn">
														<a class="read_more" href="Javascript:void(0)">Read
															More <span></span>
														</a>
													</div>
												</div>
											</div>
											<div class="col-md-7">
												<div class="banner_img">
													<figure>
														<img class="img_responsive"
															src="${contextPath}/resources/images/banner_img.png">
													</figure>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- controls -->
							<!-- <a class="carousel-control-prev"
								href="#carouselExampleIndicators" role="button"
								data-slide="prev"> <i class="fa fa-arrow-left"
								aria-hidden="true"></i> <span class="sr-only">Previous</span>
							</a> <a class="carousel-control-next"
								href="#carouselExampleIndicators" role="button"
								data-slide="next"> <i class="fa fa-arrow-right"
								aria-hidden="true"></i> <span class="sr-only">Next</span>
							</a> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end banner -->



	<!-- testimonial -->
	<%-- <div class="testimonial">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="titlepage text_align_center">
						<h2>About Us</h2>
					</div>
				</div>
			</div>
			<!-- start slider section -->
			<div class="row">
				<div class="col-md-12">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="container-fluid">
									<div class="carousel-caption relative">
										<div class="row d_flex">
											<div class="col-md-3">
												<div class="test_box text_align_center">
													<span><img
														src="${contextPath}/resources/images/test1.png" alt="#" /></span>
													<h4>Hai Nguyen Thi</h4>
													<img class="img_responsive"
														src="${contextPath}/resources/images/te.png" alt="#" />
													<p>humour, or randomised words which don't look even
														slightly believable. If you are</p>
												</div>
											</div>
											<div class="col-md-6">
												<div class="test_box white_bg text_align_center">
													<span><img
														src="${contextPath}/resources/images/test2.png" alt="#" /></span>
													<h4>Hung Nguyen Xuan</h4>
													<img class="img_responsive"
														src="${contextPath}/resources/images/te2.png" alt="#" />
													<p>humour, or randomised words which don't look even
														slightly believable. If you are going to use a passage of
														Lorem Ipsum, you need to be sure</p>
												</div>
											</div>
											<div class="col-md-3">
												<div class="test_box text_align_center">
													<span><img
														src="${contextPath}/resources/images/test3.png" alt="#" /></span>
													<h4>Ly Khanh Ngo</h4>
													<img class="img_responsive"
														src="${contextPath}/resources/images/te.png" alt="#" />
													<p>humour, or randomised words which don't look even
														slightly believable. If you are</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="container-fluid">
									<div class="carousel-caption relative">
										<div class="row d_flex">
											<div class="col-md-3">
												<div class="test_box text_align_center">
													<span><img
														src="${contextPath}/resources/images/test2.png" alt="#" /></span>
													<h4>Hai Nguyen Thi</h4>
													<img class="img_responsive"
														src="${contextPath}/resources/images/te.png" alt="#" />
													<p>humour, or randomised words which don't look even
														slightly believable. If you are</p>
												</div>
											</div>
											<div class="col-md-6">
												<div class="test_box white_bg text_align_center">
													<span><img
														src="${contextPath}/resources/images/test3.png" alt="#" /></span>
													<h4>Hung Nguyen Xuan</h4>
													<img class="img_respon  sive"
														src="${contextPath}/resources/images/te2.png" alt="#" />
													<p>humour, or randomised words which don't look even
														slightly believable. If you are going to use a passage of
														Lorem Ipsum, you need to be sure</p>
												</div>
											</div>
											<div class="col-md-3">
												<div class="test_box text_align_center">
													<span><img
														src="${contextPath}/resources/images/test1.png" alt="#" /></span>
													<h4>Ly Khanh Ngo</h4>
													<img class="img_responsive"
														src="${contextPath}/resources/images/te.png" alt="#" />
													<p>humour, or randomised words which don't look even
														slightly believable. If you are</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<div class="container-fluid">
									<div class="carousel-caption relative">
										<div class="row d_flex">
											<div class="col-md-3">
												<div class="test_box text_align_center">
													<span><img
														src="${contextPath}/resources/images/test3.png" alt="#" /></span>
													<h4>Hai Nguyen Thi</h4>
													<img class="img_responsive"
														src="${contextPath}/resources/images/te.png" alt="#" />
													<p>humour, or randomised words which don't look even
														slightly believable. If you are</p>
												</div>
											</div>
											<div class="col-md-6">
												<div class="test_box  white_bg text_align_center">
													<span><img
														src="${contextPath}/resources/images/test1.png" alt="#" /></span>
													<h4>Hung Nguyen Xuan</h4>
													<img class="img_responsive"
														src="${contextPath}/resources/images/te2.png" alt="#" />
													<p>humour, or randomised words which don't look even
														slightly believable. If you are going to use a passage of
														Lorem Ipsum, you need to be sure</p>
												</div>
											</div>
											<div class="col-md-3">
												<div class="test_box text_align_center">
													<span><img
														src="${contextPath}/resources/images/test2.png" alt="#" /></span>
													<h4>Ly Khanh Ngo</h4>
													<img class="img_responsive"
														src="${contextPath}/resources/images/te.png" alt="#" />
													<p>humour, or randomised words which don't look even
														slightly believable. If you are</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#myCarousel" role="button"
							data-slide="prev"> <i class="fa fa-angle-left"
							aria-hidden="true"></i> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#myCarousel" role="button"
							data-slide="next"> <i class="fa fa-angle-right"
							aria-hidden="true"></i> <span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div> --%>
	<!-- end testimonial -->

	<!--  footer -->
	<%-- <footer>
		<div class="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4 ">
						<div class="infoma">
							<h3>Contact Us</h3>
							<ul class="conta">
								<li><i class="fa fa-map-marker" aria-hidden="true"></i> FPT
									Software</li>
								<li><i class="fa fa-phone" aria-hidden="true"></i>+84
									943717581</li>
								<li><i class="fa fa-envelope" aria-hidden="true"></i><a
									href="Javascript:void(0)"> HungNX3@fpt.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-8">
						<div class="row border_left">
							<div class="col-md-12">
								<div class="infoma">

									<form class="form_subscri">
										<div class="row">
											<img
												src="${contextPath}/resources/images/Ahung.png" alt="#" />

											<div class="col-md-4"></div>
										</div>
									</form>
								</div>
							</div>

							<div class="col-md-6 mt-2">
								<div class="infoma text_align_left"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-12"></div>
					</div>
				</div>
			</div>
		</div>
	</footer> --%>
	<!-- end footer -->
	<!-- Javascript files-->


	<script>
/* 		AOS.init();
 */	</script>
</body>
</html>