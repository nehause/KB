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
	<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.1/kakao.min.js" integrity="sha384-eKjgHJ9+vwU/FCSUG3nV1RKFolUXLsc6nLQ2R1tD0t4YFPCvRmkcF8saIfOZNWf/" crossorigin="anonymous"></script>
	<script>
	  Kakao.init('fbcf9729cf4cb4a9f70ddf30309fa210'); // ??????????????? ?????? JavaScript ??? ??????
	</script>


	<style>
		.commentHover:hover {
		  text-decoration: underline;
		}
		pre {
			white-space: break-spaces; 
		}
	</style>
	<script>
		function onload(){
			if($('#bookSeq').val() == null || $('#bookSeq').val() == ""){
				location.href = "/book/bookIndex";
			}
		}
	</script>
</head>

<body onload="onload()">
	<!-- pagination s -->
	<%@include file="../../../common/user/include/header.jsp"%>
	<!-- pagination e -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>?????? ?????? ?????????</h1>
					<nav class="d-flex align-items-center">
						<a href="/main">??????<span class="lnr lnr-arrow-right"></span></a>
						<a href="/book/bookIndex">?????? ??????<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">?????? ?????? ?????????</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Single Product Area =================-->
	<div class="product_image_area">
		<form method="post" id="GPForm" name="GPForm">
			<div class="container">
				<div class="row s_product_inner">
					<div class="col-lg-6">
						<div class="single-deal">
							<div class="overlay"></div>
							<input type="hidden" id="sessSeq" name="sessSeq" value="<c:out value="${sessSeq }"/>">
							<input type="hidden" id="bookSeq" name="bookSeq" value="<c:out value="${item.bookSeq }"/>">
							<c:set var="type" value="1"/>		<!-- #-> -->
				        	<c:set var="name" value="uploadSign"/>		<!-- #-> -->
							<c:forEach items="${bookListUploaded}" var="bookListUploaded" varStatus="statusUploaded">
								<c:if test="${bookListUploaded.type eq type }">
									<img src="<c:out value="${bookListUploaded.path }"/><c:out value="${bookListUploaded.uuidName }"/>" class="rounded" style="cursor:pointer;"/>
							
						</div>
						<a href="<c:out value="${bookListUploaded.path }"/><c:out value="${bookListUploaded.uuidName }"/>" class="img-pop-up" target="_blank">
							<div class="deal-details">
								<h6 class="deal-title">????????? ??????</h6>
							</div>
						</a>
							</c:if>
						</c:forEach>
					</div>
					<div class="col-lg-5 offset-lg-1">
						<div class="s_product_text">
							<h3><c:out value="${item.name }"/></h3>
							<h4 style="color: gray"><c:out value="${item.subName }"/></h4>
							<h2>???<c:out value="${item.price }"/></h2>
							<span style="text-decoration: line-through;">???<c:out value="${item.cost }" /></span>
							<ul class="list">
								<li>
									<a><span>??????</span> : <c:out value="${item.writer }"/></a>
								</li>
								<li>
									<a><span>?????????</span> : <c:out value="${item.publisher }"/></a>
								</li>
								<li><a><span>??????????????????</span> : <c:out value="${item.stock }"/></a></li>
							</ul>
							<p>
								<b style="color: black">
									<c:out value="${item.topic }"/>
								</b>
							</p>
							<div class="product_count">
								<label for="amount">??????:</label>
								<input type="text" name="amount" id="amount" maxlength=" <c:out value="${item.stock }"/>" value="1" title="Quantity:" class="input-text qty">
								<button onclick="var stock = ${item.stock}; var result = document.getElementById('amount'); var sst = result.value; if( !isNaN( sst ) && stock > sst ) result.value++;"
								 class="increase items-count" type="button" style="padding-top: 3px;"><i class="lnr lnr-chevron-up"></i></button>
								<button onclick="var result = document.getElementById('amount'); var sst = result.value; if( !isNaN( sst ) && sst > 1 ) result.value--;"
								 class="reduced items-count" type="button" style="padding-bottom: 8px;"><i class="lnr lnr-chevron-down"></i></button>
							</div>
							<div class="card_area d-flex align-items-center">
								<a class="primary-btn" id="purchaseBtn" name="purchaseBtn" href="javascript:goPurchase(<c:out value="${item.bookSeq }"/>)"><span style="color:white;">????????????</span></a>
								<!-- <a class="icon_btn" href="#" style="padding-top: 14px; padding-left: 2px;"><i class="lnr lnr lnr-diamond"></i></a> -->
								<c:choose>
									<c:when test="${sessSeq eq null }">
									</c:when>
									<c:otherwise>
										<c:choose>
											<c:when test="${favorite eq 0}">
												<a class="icon_btn" id="FInst" style="padding-top: 14px; padding-left: 2px;"><i class="lnr lnr lnr-heart"></i></a>
											</c:when>
											<c:otherwise>
												<a class="icon_btn" id="FDele" style="padding-top: 14px; padding-left: 2px; background: linear-gradient(90deg, #ffba00 0%, #ff6c00 100%);"><i class="lnr lnr lnr-heart"></i></a>
											</c:otherwise>
										</c:choose>
									</c:otherwise>
								</c:choose>
								<!-- <a id="kakaotalk-sharing-btn" href="javascript:shareMessage();">
								  <img src="https://developers.kakao.com/assets/img/about/logos/kakaotalksharing/kakaotalk_sharing_btn_medium.png"
								    alt="???????????? ?????? ????????? ??????" />
								</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">????????????</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="writer-tab" data-toggle="tab" href="#writer" role="tab" aria-controls="writer" aria-selected="false">?????? ??????</a>
				</li>
				<!-- <li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
					 aria-selected="false">?????? ??????</a>
				</li> -->
				<!-- <li class="nav-item">
					<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
					 aria-selected="false">Comments</a>
				</li> -->
				<li class="nav-item">
					<a class="nav-link" id="review-tab" data-toggle="tab" href="#bookMemberReview" role="tab" aria-controls="bookMemberReview" aria-selected="false">??????</a>
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
									<h5>??????</h5>
								</td>
								<td>
									<h5><c:out value="${item.page }"/>???</h5>
								</td>
							</tr>
							<tr>
								<td>
									<h5>??????</h5>
								</td>
								<td>
									<h5><c:out value="${item.bookSize }"/></h5>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
								
						</tbody>
					</table>
					<div class="firstIntroduce">
					<pre><c:out value="${item.introduce }"/></pre>
					</div>
					<div>
						<div class="detailImages" id="detailImages" name="detailImages" style="display: block;">
							<c:set var="type" value="2"/>		<!-- #-> -->
				        	<c:set var="name" value="uploadImage"/>		<!-- #-> -->
							<c:forEach items="${bookListUploaded}" var="bookListUploaded" varStatus="statusUploaded">
								<c:if test="${bookListUploaded.type eq type }">
									<img src="<c:out value="${bookListUploaded.path }"/><c:out value="${bookListUploaded.uuidName }"/>" style="cursor:pointer;"/>
								</c:if>
							</c:forEach>
						</div>
					</div>
					<br><br>
					<h4>??????</h4>
					<div class="bookList">
						<pre><c:out value="${item.list }"/></pre>
					</div>
					<br><br>
					<h4>??? ?????????</h4>
					<br>
					<div id="bookPreview" name="bookPreview"  style="display: block;">
						<pre><c:out value="${item.content }"/></pre>
						<!-- <input type='button' id="bookBtn" value='?????????' onclick="BRShow()"> -->
						<br><br>
					</div>
					
					<br><br>
					<h4>????????? ??????</h4>
					
					<div id="PublisherPreview" name="PublisherPreview" style="display: block;">
						<pre><c:out value="${item.rop }"/></pre>
						<!-- <input type='button' id="publisherBtn" name="publisherBtn" value='?????????' onclick="PRShow();"> -->
						<br><br>
					</div>
					
				</div>
				<div class="tab-pane fade" id="writer" role="tabpanel" aria-labelledby="writer-tab">
					<c:forEach items="${writer}" var="writer" varStatus="status">
						<div class="border" style="padding: 20px; display:flow-root;">
							<input type="hidden" id="writerSeq" name="writerSeq">
							<div class= "writer image" style="float: left; padding: 30px; padding-top: 0px; padding-bottom: 0px;">
					        	<c:choose>
						        	<c:when test="${writer.seq eq null}"> <!-- length(list)??? 0?????? ?????? ?????? -->
										<img src="/resources/images/null_profile.png" style="cursor:pointer;"/>
									</c:when>
						        	<c:otherwise>
										<img src="<c:out value="${writer.path }"/><c:out value="${writer.uuidName }"/>" />
									</c:otherwise>
								</c:choose>
							</div>
							<p style="font-size: large; font-weight: bolder;">?????? : <c:out value="${writer.writerName }"/></p>
							<p><pre><c:out value="${writer.writerIntroduce }"/></pre></p>
						</div>
						<div style="height: 30px;"></div>
					</c:forEach>
				</div>
				
				
				<div class="tab-pane fade" id="bookMemberReview" role="tabpanel" aria-labelledby="review-tab">
					<div class="row">
						<div class="col-lg-6">
							<div class="row total_rate">
								<div class="col-6">
									<div class="box_total">
										<h5>??????</h5>
										<c:choose>
											<c:when test="${avg.gradeAVG eq null}"> 
												<h4>0</h4>
											</c:when>
											<c:otherwise>
												<h4><fmt:formatNumber type="number" pattern="###.#" value="${avg.gradeAVG}" /></h4>
											</c:otherwise>
										</c:choose>
										<h6>??????(<c:out value="${vo.totalRows}"/>)</h6>
									</div>
								</div>
								<div class="col-6">
									<div class="rating_list">
										<h3>?????? <c:out value="${vo.totalRows}"/> ??? ??????</h3>
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
							<div style="height: 30px;"></div>
							<div class="review_list border" style="padding: 15px;">
								<c:choose>
									<c:when test="${fn:length(comment) eq 0}"> <!-- length(list)??? 0?????? ?????? ?????? -->
										<div class="review_item" style="text-align: center; margin-top: 50px; margin-bottom: 50px;"> ????????? ????????? ????????????! </div>
									</c:when>
									<c:otherwise>
										<c:forEach items="${comment}" var="comment" varStatus="status">
											<div class="review_item">
												<div class="media">
													<c:choose>
														<c:when test="${comment.memberSeq eq sessSeq}">
															<div class="media-body" id="commentBox_<c:out value="${comment.book_commentSeq}"/>">
																<input type="hidden" id="commentSeq_<c:out value="${comment.book_commentSeq}"/>" value="<c:out value="${comment.book_commentSeq}"/>">
																<p class="mb-3" style="display:inline; padding-right: 20px; font-weight: bold; font-size: large;"><c:out value="${comment.userName}"/></p>
																<p class="mb-3" style="display:inline;"><c:out value="${comment.time}"/></p>
																<p class="commentHover" style="float: right; padding:0px; cursor: pointer;" id="delModalBtn_<c:out value="${comment.book_commentSeq}"/>" onclick="delModalValue(<c:out value="${comment.book_commentSeq}"/>)">??????</p>
																<div style="display:block; float: none;">
																	<c:choose>
																		<c:when test="${comment.grade eq 5}">
																			<span class="reviewedStar mb-3" style="color: #ffd700;">???????????????</span>
																		</c:when>
																		<c:when test="${comment.grade eq 4}">
																			<span class="reviewedStar mb-3" style="color: #ffd700;">????????????</span><span class="reviewedStar mb-3">???</span>
																		</c:when>
																		<c:when test="${comment.grade eq 3}">
																			<span class="reviewedStar mb-3" style="color: #ffd700;">?????????</span><span class="reviewedStar mb-3">??????</span>
																		</c:when>
																		<c:when test="${comment.grade eq 2}">
																			<span class="reviewedStar mb-3"  style="color: #ffd700;">??????</span><span class="reviewedStar mb-3">?????????</span>
																		</c:when>
																		<c:when test="${comment.grade eq 1}">
																			<span class="reviewedStar mb-3" style="color: #ffd700;">???</span><span class="reviewedStar mb-3">????????????</span>
																		</c:when>
																		<c:otherwise>
																			<span class="reviewedStar mb-3">???????????????</span>
																		</c:otherwise>
																	</c:choose>
															  	</div>
															  	<p style="padding-top: 0px; margin-top: 15px; margin-bottom: 30px;"><c:out value="${comment.comment}"/></p>
															</div>
														</c:when>
														<c:otherwise>
															<div class="media-body" id="commentBox_<c:out value="${comment.book_commentSeq}"/>">
																<input type="hidden" id="commentSeq_<c:out value="${comment.book_commentSeq}"/>" value="<c:out value="${comment.book_commentSeq}"/>">
																<p class="mb-3" style="display:inline; padding-right: 20px; font-weight: bold; font-size: large;"><c:out value="${comment.userName}"/></p>
																<p class="mb-3" style="display:inline;"><c:out value="${comment.time}"/></p>
																<p class="commentHover" style="float: right; padding:0px; cursor: pointer;" id="decModalBtn" name="decModalBtn">??????</p>
																<div style="display:block;">
																	<c:choose>
																		<c:when test="${comment.grade eq 5}">
																			<span class="reviewedStar mb-3" style="color: #ffd700;">???????????????</span>
																		</c:when>
																		<c:when test="${comment.grade eq 4}">
																			<span class="reviewedStar mb-3" style="color: #ffd700;">????????????</span><span class="reviewedStar mb-3">???</span>
																		</c:when>
																		<c:when test="${comment.grade eq 3}">
																			<span class="reviewedStar mb-3" style="color: #ffd700;">?????????</span><span class="reviewedStar mb-3">??????</span>
																		</c:when>
																		<c:when test="${comment.grade eq 2}">
																			<span class="reviewedStar mb-3"  style="color: #ffd700;">??????</span><span class="reviewedStar mb-3">?????????</span>
																		</c:when>
																		<c:when test="${comment.grade eq 1}">
																			<span class="reviewedStar mb-3" style="color: #ffd700;">???</span><span class="reviewedStar mb-3">????????????</span>
																		</c:when>
																		<c:otherwise>
																			<span class="reviewedStar mb-3">???????????????</span>
																		</c:otherwise>
																	</c:choose>
															  	</div>
															  	<p style="padding-top: 0px; margin-top: 15px; margin-bottom: 30px;"><c:out value="${comment.comment}"/></p>
															</div>
														</c:otherwise>
													</c:choose>
												</div>
											</div>
										</c:forEach>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
						<div class="col-lg-6">
							<c:choose>
							<c:when test="${sessSeq eq null}">
								<div class="review_box" style="text-align: center">
									<h3 display="block">?????? ??????</h3>
									<div style="height: 30px;"></div>
									<span> ???????????? ??????????????? ??????????????????. </span>
								</div>
							</c:when>
								<c:otherwise>
								<div class="review_box">
									<form class="row contact_form" method="post" id="RRForm" name="RRForm">
									<input type="hidden" id="book_bookSeq" name="book_bookSeq" value="<c:out value="${item.bookSeq }"/>">
									<input type="hidden" id="memberSeq" name="memberSeq" value="<c:out value="${sessSeq }"/>">
										<h3 display="block">?????? ??????</h3>
										<div class="col-md-12">
											<p class="mb-3" style="display:inline; padding-right: 20px; font-weight: bold; font-size: x-large;"><c:out value="${sessUserName }"/><br></p>
											<div style="height: 15px;"></div>
											<p>?????? :</p>
											<span class="reviewStar">
											  ???????????????
											  <span>???????????????</span>
											  <input type="range" oninput="drawStar(this)" id="grade" name="grade" value="0" step="1" min="0" max="5">
											</span>
											<div style="height: 15px;"></div>
										</div>
										<div class="col-md-12">
											<div class="form-group">
												<h4>?????? ?????? ??????</h4>
												<input type="text" class="form-control" id="comment" name="comment" value="<c:out value="${dto.comment}"/>" onkeyup="enterEvent()">
											</div>
										</div>
										<div class="col-md-12 text-right">
											<button type="button" class="primary-btn" id="regBtn" name="regBtn">????????????</button>
										</div>
									</form>
								</div>
								</c:otherwise>
							</c:choose>
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
	
	<!-- modal start -->
	<div class="modal fade" id="decModal" tabindex="-1" aria-labelledby="decModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="decModalLabel">??????</h5>
				</div>
				<div class="modal-body">
					<p>?????? ????????? ???????????? ??? ????????? ?????? ???????????????.</p>
					
					<p>?????? ????????? ??????, ???????????? ????????? ????????? ????????? ??? ????????? ???????????????
					???????????? ????????? ?????????.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">
						??????
					</button>
					<button type="button" class="btn btn-danger" id="decBtn" name="decBtn">
						??????
					</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="delModal" tabindex="-1" aria-labelledby="delModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="delModalLabel">??????</h5>
				</div>
				<div class="modal-body">
					<p>????????? ???????????? ????????? ??? ????????????.</p>
					
					<p>?????? ?????????????????? ??????????????????</p>
					<form method="post" id="RDForm" name="RDForm">
						<input type="hidden" id="book_commentSeq" name="book_commentSeq">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">
						??????
					</button>
					<button type="button" class="btn btn-danger" id="delBtn" name="delBtn">
						??????
					</button>
				</div>
			</div>
		</div>
	</div>
	<!-- modal end -->

	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<!-- <script>
	$('#grade').on("change", function(){
		alert($('#grade').val());
	});
	</script> -->
	<script type="text/javascript">
			function DIShow() {
			  var DIdiv = document.getElementById("detailImages");
			  var DIbtn = document.getElementById("DIBtn");
			  
			  if(DIdiv.style.display == "none")  {
			    DIdiv.style.display = "block";
			    DIbtn.value = '??????';
			  } else {
			    DIdiv.style.display = "none";
			    DIbtn.value = '?????????';
			  }
			}
		function BRShow() {
		  var BRdiv = document.getElementById("bookReview");
		  var Bbtn = document.getElementById("bookBtn");
		  
		  if(BRdiv.style.display == "none")  {
		    BRdiv.style.display = "block";
		    Bbtn.value = '??????';
		  } else {
		    BRdiv.style.display = "none";
		    Bbtn.value = '?????????';
		  }
		} 
		function PRShow() {
			var PRdiv = document.getElementById("publisherReview");
			var Pbtn = document.getElementById("publisherBtn");
			
			if(PRdiv.style.display == "none")  {
				  PRdiv.style.display = "block";
				  Pbtn.value = "??????";
			} else {
				  PRdiv.style.display = "none";
				  Pbtn.value = "?????????";
			}
		} 
		
		function??enterEvent()??{
			????????????????if??(window.event.keyCode??==??13)??{
				form.attr("action", goUrlInsert).submit();
			}
		}
		
		
	</script>
	<script>
	var goUrlInsert = "/book/commentInsert";
	var goUrlDelete = "/book/commentDelete";
	var goUrlPurchase = "/order/orderPurchase";
	var goUrlFavoriteInsert = "/book/favoriteInsert";
	var goUrlFavoriteDelete = "/book/favoriteDelete";
	var seq = $("input:hidden[name=bookSeq]");
	var mSeq = $("input:hidden[name=memberSeq]");
	var form = $("form[name=RRForm]");
	var pForm = $("form[name=GPForm]");
	
	goPurchase = function(seqValue){
		seq.val(seqValue);
		pForm.attr("action", goUrlPurchase).submit();
	}
	
	function delModalValue(delSeq){
		$('#delModal').modal('show');
		$('#book_commentSeq').val(delSeq);
		/* alert($('#book_commentSeq').val()); */
	}
	$('#decModalBtn').on("click", function(){
		  $('#decModal').modal('show');
	});
	$('#regBtn').on("click", function(){
		form.attr("action", goUrlInsert).submit();
	});
	
	$('#FInst').on("click", function(){
		pForm.attr("action", goUrlFavoriteInsert).submit();
	});
	$('#FDele').on("click", function(){
		pForm.attr("action", goUrlFavoriteDelete).submit();
	});
	
	$('#delBtn').on("click", function(){
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/book/commentDel"
			/* ,data : $("#formLogin").serialize() */
			,data : { "book_commentSeq" : $("#book_commentSeq").val() }
			,success: function(response) {
				if(response.rt == "success") {
					var num = $("#book_commentSeq").val();
					 $('#commentBox_'+num).remove();
					 $('#delModal').modal('hide');
					
				} else {
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
		
	</script>

	<script src="/resources/template/karma/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="/resources/template/karma/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/template/karma/js/jquery.ajaxchimp.min.js"></script>
	<script src="/resources/template/karma/js/jquery.nice-select.min.js"></script>
	<script src="/resources/template/karma/js/jquery.sticky.js"></script>
	<script src="/resources/template/karma/js/nouislider.min.js"></script>
	<!-- <script src="/resources/template/karma/js/countdown.js"></script> -->
	<script src="/resources/template/karma/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/template/karma/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/resources/template/karma/js/gmaps.min.js"></script>
	<script src="/resources/template/karma/js/main.js"></script>
	<script src="/resources/user/js/review.js"></script>
</body>
</html>