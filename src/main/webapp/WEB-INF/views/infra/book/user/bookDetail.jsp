<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="/resources/images/fav_jhj.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>JHJ Shop</title>
	<!--
		CSS
		============================================= -->
	<link rel="stylesheet" href="/resources/template/karma/css/linearicons.css">
	<link rel="stylesheet" href="/resources/template/karma/css/font-awesome.min.css">
	<link rel="stylesheet" href="/resources/template/karma/css/themify-icons.css">
	<link rel="stylesheet" href="/resources/template/karma/css/bootstrap.css">
	<link rel="stylesheet" href="/resources/template/karma/css/owl.carousel.css">
	<link rel="stylesheet" href="/resources/template/karma/css/nice-select.css">
	<link rel="stylesheet" href="/resources/template/karma/css/nouislider.min.css">
	<link rel="stylesheet" href="/resources/template/karma/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="/resources/template/karma/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="/resources/template/karma/css/magnific-popup.css">
	<link rel="stylesheet" href="/resources/template/karma/css/main.css">
	<link rel="stylesheet" href="/resources/user/css/review.css">
	<script src="https://kit.fontawesome.com/dca973ab96.js" crossorigin="anonymous"></script>
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
	
</head>

<body>
	<!-- pagination s -->
	<%@include file="../../../common/user/include/header.jsp"%>
	<!-- pagination e -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>도서 상세 페이지</h1>
					<nav class="d-flex align-items-center">
						<a href="/resources/member/main.html">메인<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">도서 구매<span class="lnr lnr-arrow-right"></span></a>
						<a href="bookView.html">도서 상세 페이지</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Single Product Area =================-->
	<div class="product_image_area">
		<div class="container">
			<div class="row s_product_inner">
				<div class="col-lg-6">
					<div class="single-deal">
						<div class="overlay"></div>
						<c:out value="${item.sign }"/>
						<a href="/resources/images/bp1.png" class="img-pop-up" target="_blank">
							<div class="deal-details">
								<h6 class="deal-title">이미지 보기</h6>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-5 offset-lg-1">
					<div class="s_product_text">
						<h3><c:out value="${item.name }"/></h3>
						<h4 style="color: gray"><c:out value="${item.subName }"/></h4>
						<h2>₩<c:out value="${item.price }"/></h2>
						<ul class="list">
							<li>
								<a><span>작가</span> : <c:out value="${item.writer }"/></a>
							</li>
							<li>
								<a><span>출판사</span> : <c:out value="${item.publisher }"/></a>
							</li>
							<li><a><span>구매가능수량</span> : <c:out value="${item.stock }"/></a></li>
						</ul>
						<p>
							<b style="color: black">
								<c:out value="${item.topic }"/>
							</b>
						</p>
						<div class="product_count">
							<label for="qty">수량:</label>
							<input type="text" name="qty" id="sst" maxlength="12" value="1" title="Quantity:" class="input-text qty">
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;"
							 class="increase items-count" type="button" style="padding-top: 3px;"><i class="lnr lnr-chevron-up"></i></button>
							<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) && sst > 1 ) result.value--;"
							 class="reduced items-count" type="button" style="padding-bottom: 8px;"><i class="lnr lnr-chevron-down"></i></button>
						</div>
						<div class="card_area d-flex align-items-center">
							<a class="primary-btn" href="/order/orderPurchase">구매하기</a>
							<a class="icon_btn" href="#" style="padding-top: 14px; padding-left: 2px;"><i class="lnr lnr lnr-diamond"></i></a>
							<a class="icon_btn" href="#" style="padding-top: 14px; padding-left: 2px;"><i class="lnr lnr lnr-heart"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">상세설명</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="writer-tab" data-toggle="tab" href="#writer" role="tab" aria-controls="writer"
					 aria-selected="false">작가 소개</a>
				</li>
				<!-- <li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
					 aria-selected="false">도서 상세</a>
				</li> -->
				<!-- <li class="nav-item">
					<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
					 aria-selected="false">Comments</a>
				</li> -->
				<li class="nav-item">
					<a class="nav-link" id="review-tab" data-toggle="tab" href="#bookMemberReview" role="tab" aria-controls="bookMemberReview"
					 aria-selected="false">리뷰</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
					<table class="table">
						<tbody>
							<tr>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>
									<h5>ISBN</h5>
								</td>
								<td>
									<h5><c:out value="${item.isbn }"/></h5>
								</td>
							</tr>
							<tr>
								<td>
									<h5>쪽수</h5>
								</td>
								<td>
									<h5><c:out value="${item.page }"/>쪽</h5>
								</td>
							</tr>
							<tr>
								<td>
									<h5>크기</h5>
								</td>
								<td>
									<h5><c:out value="${item.size }"/></h5>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
								
						</tbody>
					</table>
					<div class="firstIntroduce">
					<c:out value="${item.introduce }"/>
					</div>
					<div>
						<h4>상세 이미지</h4>	
						<div class="detailImages" id="detailImages" name="detailImages" style="display: block;">
							<c:out value="${item.image }"/>
						</div>
						<input type='button' id="DIBtn" value='닫기' onclick="DIShow()">
					</div>
					<br><br>
					<h4>목차</h4>
					<div class="bookList">
						<c:out value="${item.list }"/>
					</div>
					<br><br>
					<h4>책 속으로</h4>
					<br>
					<div id="bookPreview" name="bookPreview"  style="display: block;">
						<c:out value="${item.content }"/>
						<input type='button' id="bookBtn" value='더보기' onclick="BRShow()">
						<br><br>
					</div>
					
					<br><br>
					<h4>출판사 서평</h4>
					
					<div id="PublisherPreview" name="PublisherPreview" style="display: block;">
						<c:out value="${item.rop }"/>
						<input type='button' id="publisherBtn" name="publisherBtn" value='더보기' onclick="PRShow();">
						<br><br>
					</div>
					
				</div>
				<div class="tab-pane fade" id="writer" role="tabpanel" aria-labelledby="writer-tab">
					<c:forEach items="${writer}" var="writer" varStatus="status">
						<div>
							<div class= "writer image" style="float: left; padding: 30px; padding-top: 0px">
								<c:out value="${writer.image }"/>
							</div>
							<p style="font-size: large; font-weight: bolder;">저자 : <c:out value="${writer.name }"/></p>
							<p><c:out value="${writer.introduce }"/></p>
						</div>
					</c:forEach>
				</div>
				
				
				<div class="tab-pane fade" id="bookMemberReview" role="tabpanel" aria-labelledby="review-tab">
					<div class="row">
						<div class="col-lg-6">
							<div class="row total_rate">
								<div class="col-6">
									<div class="box_total">
										<h5>평점</h5>
										<c:choose>
											<c:when test="${avg.gradeAVG eq null}"> 
												<h4>0</h4>
											</c:when>
											<c:otherwise>
												<h4><c:out value="${avg.gradeAVG}"/></h4>
											</c:otherwise>
										</c:choose>
										<h6>리뷰(<c:out value="${vo.totalRows}"/>)</h6>
									</div>
								</div>
								<div class="col-6">
									<div class="rating_list">
										<h3>리뷰 <c:out value="${vo.totalRows}"/> 개 기준</h3>
										<ul class="list">
											<li>
												
											</li>
											<li>
												
											</li>
											<li>
												
											</li>
											<li>
												
											</li>
											<li>
												
											</li>
											
										</ul>
									</div>
								</div>
							</div>
							<div class="review_list">
								<c:choose>
									<c:when test="${fn:length(comment) eq 0}"> <!-- length(list)가 0이면 이걸 하고 -->
										<div class="review_item" style="text-align: center; margin-top: 50px;"> 등록된 리뷰가 없습니다! </div>
									</c:when>
									<c:otherwise>
										<c:forEach items="${comment}" var="comment" varStatus="status">
											<div class="review_item">
												<div class="media">
													<div class="media-body">
														<h4><c:out value="${comment.userName}"/></h4>
														<c:out value="${comment.grade}"/>
													</div>
												</div>
												<p><c:out value="${comment.comment}"/></p>
											</div>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="review_box">
								<form class="row contact_form" method="post" id="RRForm" name="RRForm">
									<h4>리뷰 쓰기</h4>
									<p>평점 :</p>
									<span class="reviewStar">
									  ★★★★★
									  <span>★★★★★</span>
									  <input type="range" oninput="drawStar(this)" id="grade" name="grade" value="1" step="1" min="0" max="5">
									</span>
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" id="userName" name="userName" value>
										</div>
									</div>
									<div class="col-md-12 text-right">
										<button type="submit" value="submit" class="primary-btn">등록하기</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Product Description Area =================-->
	
	<!-- bestNewList Start -->
	<%@include file="../../../common/user/include/bestNewList.jsp"%>
	<!-- bestNewList End -->
	

	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	
	<script type="text/javascript">
			function DIShow() {
			  var DIdiv = document.getElementById("detailImages");
			  var DIbtn = document.getElementById("DIBtn");
			  
			  if(DIdiv.style.display == "none")  {
			    DIdiv.style.display = "block";
			    DIbtn.value = '닫기';
			  } else {
			    DIdiv.style.display = "none";
			    DIbtn.value = '더보기';
			  }
			}
		function BRShow() {
		  var BRdiv = document.getElementById("bookReview");
		  var Bbtn = document.getElementById("bookBtn");
		  
		  if(BRdiv.style.display == "none")  {
		    BRdiv.style.display = "block";
		    Bbtn.value = '닫기';
		  } else {
		    BRdiv.style.display = "none";
		    Bbtn.value = '더보기';
		  }
		} 
		function PRShow() {
			var PRdiv = document.getElementById("publisherReview");
			var Pbtn = document.getElementById("publisherBtn");
			
			if(PRdiv.style.display == "none")  {
				  PRdiv.style.display = "block";
				  Pbtn.value = "닫기";
			} else {
				  PRdiv.style.display = "none";
				  Pbtn.value = "더보기";
			}
		} 
	</script>
	<!-- <script>
		$('#grade').on("change", function(){
			alert($('#grade').val());
		});
	</script> -->
	
	<script src="/resources/template/karma/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="/resources/template/karma/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/template/karma/js/jquery.ajaxchimp.min.js"></script>
	<script src="/resources/template/karma/js/jquery.nice-select.min.js"></script>
	<script src="/resources/template/karma/js/jquery.sticky.js"></script>
	<script src="/resources/template/karma/js/nouislider.min.js"></script>
	<script src="/resources/template/karma/js/countdown.js"></script>
	<script src="/resources/template/karma/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/template/karma/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/resources/template/karma/js/gmaps.min.js"></script>
	<script src="/resources/template/karma/js/main.js"></script>
	<script src="/resources/user/js/review.js"></script>
</body>
</html>