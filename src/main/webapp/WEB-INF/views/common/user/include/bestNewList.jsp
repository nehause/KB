<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<form id="BNForm" name="BNForm">
	<input type="hidden" id="bookSeq" name="bookSeq">
	<!-- start product Area -->
	<section class="owl-carousel active-product-area section_gap">
		<!-- single product slide -->
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>베스트셀러</h1>
							<p>몇주간 가장 인기 있었던 책들을 모아놓은 곳입니다.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<c:forEach items="${best}" var="best" varStatus="status">
						<!-- single product -->
						<div class="col-lg-3 col-md-6">
							<div class="single-product">
								<a href="javascript:includeGoDetail(<c:out value="${best.bookSeq }"/>)">
									<c:out value="${best.sign }" />
								</a>
								<div class="product-details">
									<h6><c:out value="${best.name }" /></h6>
									<div class="price">
										<h6>₩<c:out value="${best.price }" /></h6>
										<h6 class="l-through">₩<c:out value="${best.cost }" /></h6>
									</div>
									<div class="prd-bottom">
	
										<a href="javascript:includeGoDetail(<c:out value="${best.bookSeq }"/>)" class="social-info">
											<span class="ti-bag"></span>
											<p class="hover-text">구매하기</p>
										</a>
										<a href="javascript:includeGoDetail(<c:out value="${best.bookSeq }"/>)" class="social-info">
											<span class="lnr lnr-move"></span>
											<p class="hover-text">상세보기</p>
										</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!-- single product slide -->
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>화제의 신간</h1>
							<p>최근 가장 핫한 신간들을 모아놨습니다.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<c:forEach items="${newList}" var="newList" varStatus="status">
					<!-- single product -->
						<div class="col-lg-3 col-md-6">
							<div class="single-product">
								<a href="javascript:includeGoDetail(<c:out value="${newList.bookSeq }"/>)">
									<c:out value="${newList.sign }" />
								</a>
								<div class="product-details">
									<h6><c:out value="${newList.name }" /></h6>
									<div class="price">
										<h6>₩<c:out value="${newList.price }" /></h6>
										<h6 class="l-through">₩<c:out value="${newList.cost }" /></h6>
									</div>
									<div class="prd-bottom">
	
										<a href="javascript:includeGoDetail(<c:out value="${newList.bookSeq }"/>)" class="social-info">
											<span class="ti-bag"></span>
											<p class="hover-text">구매하기</p>
										</a>
										<a href="javascript:includeGoDetail(<c:out value="${newList.bookSeq }"/>)" class="social-info">
											<span class="lnr lnr-move"></span>
											<p class="hover-text">상세보기</p>
										</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</section>
	<!-- end product Area -->
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	var goUrlDetail = "/book/bookDetail";
	var seq = $("input:hidden[name=bookSeq]");
	var BNForm = $("form[name=BNForm]"); 
	
	includeGoDetail = function(seqValue){
		seq.val(seqValue);
		BNForm.attr("action", goUrlDetail).submit();
	}
	
	</script>