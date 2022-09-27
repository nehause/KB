<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<jsp:useBean id="CodeServiceImpl" class="com.kbbook.shop.modules.code.CodeServiceImpl"/>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<title>책 관리</title>
	<link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/sidebars/">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<!-- cdn = 온라인 해석기 -->
	<script src="https://kit.fontawesome.com/dca973ab96.js" crossorigin="anonymous"></script>
	<style> 
		
		th {
			color: white;
		}
		.bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
      .overskip{
	      overflow: hidden;
		  text-overflow: ellipsis;
		  white-space: nowrap;
		  width: 30px;
		  height: 20px;
      
      }
	</style>
	
	<link href="/resources/dmin/css/sideBar.css" rel="stylesheet">
</head>
<body>
<!-- start -->
		<div class="header">
			<div class="row" style="height: 50px;">
				<div class="col-sm-2 offset-1">
					<h1>KAIONEX</h1>
				</div>
				<div class="col-sm-2 gy-3">
					<span><b>ABC Management System</b></span>
				</div>
				<div class="col-sm-2 offset-3">
					<div style="float:left">
						<i class="fa-solid fa-circle-user" style="font-size:50px; padding-right: 20px;"></i>
					</div>
					<span style="text-align: center;"> Hwijae Jin <br> administrator </span>			
				</div>
				<div class="col-sm-1">
					<select class="form-select">
						<option>언어</option>
						<option>한국어</option>
						<option>영어</option>
						<option>일본어</option>
					</select>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Navbar</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link active" aria-current="page" href="#">회원관리</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">서비스관리</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">사이트관리</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">로그관리</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">시스템관리</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="#">시스템관리</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<form method="post" id="BLForm" name="BLForm" class="d-flex" role="search">
			<input type="hidden" id="mainKey" name="mainKey" value="">
			<input type="hidden" id="bookSeq" name="bookSeq" value="">
			<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
			<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
			<input type="hidden" name="checkboxSeqArray">
			<div class="container-fluid">
				<div class="row" style="padding-left: 20px; padding-right: 20px;">
					<div class="col-lg-2">
						<div class="flex-shrink-0 p-3 bg-white">
							<ul class="list-unstyled ps-0">
								<li class="mb-1">
									<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#codeGroup-collapse" aria-expanded="true">
										코드그룹 관리
									</button>
									<div class="collapse show" id="codeGroup-collapse">
										<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
											<li><a href="#" class="link-dark rounded">코드그룹 리스트</a></li>
											<li><a href="#" class="link-dark rounded">코드그룹 추가</a></li>
											<li><a href="#" class="link-dark rounded">코드그룹 수정</a></li>
										</ul>
									</div>
								</li>
								<li class="mb-1">
									<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#code-collapse" aria-expanded="true">
										코드 관리
									</button>
									<div class="collapse show" id="code-collapse">
										<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
											<li><a href="#" class="link-dark rounded">코드 리스트</a></li>
											<li><a href="#" class="link-dark rounded">코드 추가</a></li>
											<li><a href="#" class="link-dark rounded">코드 수정</a></li>
										</ul>
									</div>
								</li>
								<li class="mb-1">
									<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#member-collapse" aria-expanded="false">
										회원 관리
									</button>
									<div class="collapse" id="member-collapse">
										<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
											<li><a href="#" class="link-dark rounded">회원 리스트</a></li>
											<li><a href="#" class="link-dark rounded">회원 추가</a></li>
											<li><a href="#" class="link-dark rounded">회원 수정</a></li>
										</ul>
									</div>
								</li>
								<li class="mb-1">
									<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#book-collapse" aria-expanded="false">
										책 관리
									</button>
									<div class="collapse" id="book-collapse">
										<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
											<li><a href="#" class="link-dark rounded">책 리스트</a></li>
											<li><a href="#" class="link-dark rounded">책 추가</a></li>
											<li><a href="#" class="link-dark rounded">책 수정</a></li>
										</ul>
									</div>
								</li>
								<li class="mb-1">
									<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#writer-collapse" aria-expanded="false">
										작가 관리
									</button>
									<div class="collapse" id="writer-collapse">
										<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
											<li><a href="#" class="link-dark rounded">작가 리스트</a></li>
											<li><a href="#" class="link-dark rounded">작가 추가</a></li>
											<li><a href="#" class="link-dark rounded">작가 수정</a></li>
										</ul>
									</div>
								</li>
								<li class="mb-1">
									<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#order-collapse" aria-expanded="false">
										주문 관리
									</button>
									<div class="collapse" id="order-collapse">
										<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
											<li><a href="#" class="link-dark rounded">주문 리스트</a></li>
											<li><a href="#" class="link-dark rounded">주문 추가</a></li>
											<li><a href="#" class="link-dark rounded">주문 수정</a></li>
										</ul>
									</div>
								</li>
							</ul>
						</div>
						<div>
					    	<button class="navbar-toggler" style="width:100%; height:80px; text-align: left;" type="button" onclick="logOut();">
					      		로그아웃 <i class="fa-solid fa-right-from-bracket"></i>
					      	</button>
						</div>
					</div>
					<div class="col-lg-10">
						<div class="row" style="height: 20px;"></div>
						<div class="row" style="height: 100px;">
							<div class="row" style="height: 20px;"></div>
							<h1>책 관리</h1>
							<div class="row" style="height: 20px;"></div>
						</div>
						<div class="container-fluid border border-gray">
							<!-- 빈공간을 위해 col은 10까지만 -->
							<div class="row" style="margin-top: 10px;">
								<div class="col-2">
									<select class="form-select bg-light" id="searchDelNy" name="searchDelNy" aria-label="bookUse">
										<option value="" <c:if test="${empty vo.searchDelNy}">selected</c:if>>삭제 여부</option>
										<option value="0" <c:if test="${vo.searchDelNy eq 0}">selected</c:if>>N</option>
										<option value="1" <c:if test="${vo.searchDelNy eq 1}">selected</c:if>>Y</option>
									</select>
								</div>
								<div class="col-2">
									<select class="form-select bg-light" id="searchDor" name="searchDor" aria-label="bookUse">
										<option value="" <c:if test="${empty vo.searchDor}">selected</c:if>>날짜 기준</option>
										<option value="1" <c:if test="${vo.searchDor eq 1}">selected</c:if>>출간일</option>
										<option value="2" <c:if test="${vo.searchDor eq 2}">selected</c:if>>등록일</option>
									</select>
								</div>
								<div class="col-2">
									<input type="text" class="form-control" id="bookDos" name="bookDos" placeholder="시작일">
								</div>
								<div class="col-2">
									<input type="text" class="form-control" id="bookDoe" name="bookDoe" placeholder="종료일">
								</div>
							</div>
							<div class="row" style="height: 10px;"></div>
							<div class="row" style="margin-bottom: 10px;">
								<div class="col-lg-2">
									<select class="form-select bg-light" id="searchOption" name="searchOption" aria-label="selectsearch">
										<option value="" <c:if test="${empty vo.searchOption}">selected</c:if>>검색기준</option>
										<option value="1" <c:if test="${vo.searchOption eq 1}">selected</c:if>>책 번호</option>
										<option value="2" <c:if test="${vo.searchOption eq 2}">selected</c:if>>이름</option>
										<option value="3" <c:if test="${vo.searchOption eq 3}">selected</c:if>>출판사</option>
										<option value="4" <c:if test="${vo.searchOption eq 4}">selected</c:if>>가격</option>
									</select>
								</div>
								<div class="col-lg-2">
									<input class="form-control" type="search" id="searchValue" name="searchValue" value="<c:out value="${vo.searchValue}"/>" placeholder="검색어" aria-label="Search" >
								</div>
								<div class="col-lg-2">
									<button class="col-1 btn btn-outline-dark" type="button" id="searchBtn" name="searchBtn" style="width: 40px; height:38px; margin-right: 10px;">
										<i class="fa fa-search" aria-hidden="true"></i>
									</button>
									<button class="col-1 btn btn-warning" type="button" id="resetBtn" name="resetBtn" style="width: 40px; height:38px; margin-right: 10px;">
										<i class="fa-solid fa-arrow-rotate-right"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<table class="table table-striped table-hover border" id="bookTable" style="text-align:center;">
									<caption style="caption-side: top;">
										<div style="float: left;">
											<span>total: <c:out value="${vo.totalRows}"/></span>
										</div>
										<div style="float:right;">
											<select class="form-select" id="showBoard" name="showBoard">
												<option value="10">10</option>
												<option value="15">15</option>
												<option value="20">20</option>
												<option value="25">25</option>
											</select>
										</div>
									</caption>
									<thead>
										<tr style="background-color: black">
											<td class="checkboxsize"> 
												<input class="form-check-input" type="checkbox" name="allbookCheck" value="allBookChecked" onclick="selectAll(this);">
											</td>
											<th>#</th>
											<th>번호</th>
											<th>제목</th>
											<th>작가</th>
											<th>출판사</th>
											<th>출간일</th>
											<th>등록일</th>
											<th>가격</th>
											<th>할인율</th>
											<th>적립률</th>	
											<th>재고</th>
											<th>판매량</th>
										</tr>
									</thead>
									<tbody>
										<c:choose>
											<c:when test="${fn:length(list) eq 0}"> <!-- length(list)가 0이면 이걸 하고 -->
												<td class="text-center" colspan="12">There is no data!</td>
											</c:when>
											<c:otherwise>
												<c:forEach items="${list}" var="list" varStatus="status">
													<tr onclick="location.href='javascript:goView(<c:out value="${list.bookSeq }"/>)'" style="cursor: pointer;">
														<td>
															<input class="form-check-input" type="checkbox" name="bookCheck" value="bookChecked" onclick="checkSelectAll();">
														</td>
														<td><c:out value="${status.count }"/></td>
														<td><c:out value="${list.bookSeq }"/></td>
														<td><c:out value="${list.name }"/></td>
														<td><c:out value="${list.writer }"/></td>
														<td><c:out value="${list.publisher }"/></td>
														<td><c:out value="${list.dop }"/></td>
														<td><c:out value="${list.dor }"/></td>
														<td><c:out value="${list.cost }"/></td>
														<td><c:out value="${list.sale }"/></td>
														<td><c:out value="${list.accmulate }"/></td>
														<td><c:out value="${list.stock }"/></td>
														<td><c:out value="${list.amount }"/></td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</tbody>
								</table>
								<!-- pagination s -->
								<%@include file="../../../common/dmin/include/pagination.jsp"%>
								<!-- pagination e -->
								<div>
									<div style="float: left;">
										<button type="button" class="btn btn-danger" name="bookTableDelect" id="bookTableDelect" data-bs-toggle="modal" data-bs-target="#bookTableDelectModal">
											<i class="fa-solid fa-trash"></i> 삭제
										</button>
										<button type="button" class="btn btn-outline-danger" id="bookListDelect" data-bs-toggle="modal" data-bs-target="#bookListDelectModal">
											<i class="fa-regular fa-trash-can"></i> 삭제
										</button>
									</div>
									<div style="float: right;">
										<button type="button" class="btn btn-success" id="excelBtn" name="excelBtn">
											<i class="fa-solid fa-file-excel"></i> 액셀
										</button>
										<a class="btn btn-primary" role="button" id="regBtn" name="regBtn">
											<i class="fa-solid fa-square-plus"></i> 추가
										</a>
									</div>
									<div class="modal fade" id="bookTableDelectModal" tabindex="-1" aria-labelledby="bookTableDelectLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="bookTableDelectLabel">테이블에서 삭제하시겠습니까?</h5>
													<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
													테이블 뷰에서 보이지 않게 됩니다 삭제하시겠습니까?
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
														<i class="fa-solid fa-x"></i> 취소
													</button>
													<button type="button" class="btn btn-danger" data-bs-dismiss="modal">
														<i class="fa-solid fa-trash"></i> 삭제
													</button>
												</div>
											</div>
										</div>
									</div>
									<div class="modal fade" id="bookListDelectModal" tabindex="-1" aria-labelledby="bookListDelectLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="bookListDelectLabel">리스트에서 삭제하시겠습니까?</h5>
													<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
													테이블 리스트에서 보이지 않게 됩니다 삭제하시겠습니까?
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
														<i class="fa-solid fa-x"></i> 취소
													</button>
													<button type="button" class="btn btn-outline-danger" data-bs-dismiss="modal">
														<i class="fa-solid fa-trash-can"></i> 삭제
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	<script type="text/javascript">
	function checkSelectAll()  {

		const checkboxes = document.querySelectorAll('input[name="bookCheck"]');

		const checked = document.querySelectorAll('input[name="bookCheck"]:checked');

		const selectAll = document.querySelector('input[name="allBookCheck"]');
		  
		if(checkboxes.length === checked.length)  {
		  selectAll.checked = true;
		}else {
		  selectAll.checked = false;
		}
		
	}
	function selectAll(selectall)  {
		const checkboxes = document.getElementsByName('bookCheck');
		
		checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectall.checked
	  })
	}
		
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	var goUrlList = "/book/bookList";
	var goUrlView = "/book/bookView"
	var seq = $("input:hidden[name=bookSeq]");
	
	var form = $("form[name=MLForm]"); 
	
	
	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
			form.attr("action", goUrlList).submit();
	}
	
	goView = function(seqValue){
		seq.val(seqValue);
		form.attr("action", goUrlView).submit();
	}
	
	$("#regBtn").on("click", function(){
		goView(0);
	});
	
	$("#searchBtn").on("click", function(){
	   		form.attr("action", goUrlList).submit();
	}); 
	
	$("#resetBtn").on("click", function(){
		$(location).attr("href", goUrlList);
	}); 
	
	</script>
	<script src="/resources/dmin/js/sidebar.js"></script>
	
<!-- end -->

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>