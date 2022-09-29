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
	<title>주소 관리</title>
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
		<!-- navBar start -->
		<%@include file="../../../common/dmin/include/headNavBar.jsp"%>
		<!-- navBar end -->
			<div class="container-fluid">
				<div class="row" style="padding-left: 20px; padding-right: 20px;">
					<!-- sideBar start -->
					<%@include file="../../../common/dmin/include/dminSideBar.jsp"%>
					<!-- sideBar end -->
					<div class="col-lg-10">
						<form method="post" id="TLForm" name="TLForm" role="search">
							<input type="hidden" id="mainKey" name="mainKey" value="">
							<input type="hidden" id="transportSeq" name="transportSeq" value="">
							<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
							<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
							<input type="hidden" name="checkboxSeqArray">
							<div class="row" style="height: 20px;"></div>
							<div class="row" style="height: 100px;">
								<div class="row" style="height: 20px;"></div>
								<h1>주소 관리</h1>
								<div class="row" style="height: 20px;"></div>
							</div>
							<div class="container-fluid border border-gray">
								<!-- 빈공간을 위해 col은 10까지만 -->
								<div class="row" style="margin-top: 10px;">
									<div class="col-2">
										<select class="form-select bg-light" id="searchDelNy" name="searchDelNy" aria-label="searchDelNy">
											<option value="" <c:if test="${empty vo.searchDelNy}">selected</c:if>>삭제 여부</option>
											<option value="0" <c:if test="${vo.searchDelNy eq 0}">selected</c:if>>N</option>
											<option value="1" <c:if test="${vo.searchDelNy eq 1}">selected</c:if>>Y</option>
										</select>
									</div>
									<div class="col-2">
										<select class="form-select bg-light" id="searchUseNy" name="searchUseNy" aria-label="searchDelNy">
											<option value="" <c:if test="${empty vo.searchUseNy}">selected</c:if>>사용 여부</option>
											<option value="0" <c:if test="${vo.searchUseNy eq 0}">selected</c:if>>N</option>
											<option value="1" <c:if test="${vo.searchUseNy eq 1}">selected</c:if>>Y</option>
										</select>
									</div>
									<div class="col-2">
										<select class="form-select bg-light" id="searchDiv" name="searchDiv" aria-label="searchDiv">
											<option value="" <c:if test="${empty vo.searchDiv}">selected</c:if>>주소 구분</option>
											<option value="1" <c:if test="${vo.searchDiv eq 1}">selected</c:if>>집</option>
											<option value="2" <c:if test="${vo.searchDiv eq 2}">selected</c:if>>그 외</option>
										</select>
									</div>
									<div class="col-2">
										<select class="form-select bg-light" id="searchDor" name="searchDor" aria-label="transportUse">
											<option value="" <c:if test="${empty vo.searchDor}">selected</c:if>>날짜 기준</option>
											<option value="1" <c:if test="${vo.searchDor eq 1}">selected</c:if>>등록일</option>
											<option value="2" <c:if test="${vo.searchDor eq 2}">selected</c:if>>수정일</option>
										</select>
									</div>
									<div class="col-2">
										<input type="text" class="form-control" id="memberDos" name="memberDos" placeholder="시작일">
									</div>
									<div class="col-2">
										<input type="text" class="form-control" id="memberDoe" name="memberDoe" placeholder="종료일">
									</div>
								</div>
								<div class="row" style="height: 10px;"></div>
								<div class="row" style="margin-bottom: 10px;">
									<div class="col-lg-2">
										<select class="form-select bg-light" id="searchOption" name="searchOption" aria-label="selectsearch">
											<option value="" <c:if test="${empty vo.searchOption}">selected</c:if>>검색기준</option>
											<option value="1" <c:if test="${vo.searchOption eq 1}">selected</c:if>>배송지 번호</option>
											<option value="2" <c:if test="${vo.searchOption eq 2}">selected</c:if>>멤버 번호</option>
											<option value="3" <c:if test="${vo.searchOption eq 3}">selected</c:if>>멤버 이름</option>
											<option value="4" <c:if test="${vo.searchOption eq 4}">selected</c:if>>휴대전화 번호</option>
											<option value="5" <c:if test="${vo.searchOption eq 5}">selected</c:if>>집 전화번호</option>
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
									<table class="table table-striped table-hover border" id="transportTable" style="text-align:center;">
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
													<input class="form-check-input" type="checkbox" name="alltransportCheck" value="allMemeberChecked" onclick="selectAll(this);">
												</td>
												<th>#</th>
												<th>번호</th>
												<th>멤버 번호</th>
												<th>이름</th>
												<th>주소 구분</th>
												<th>휴대전화번호</th>
												<th>집전화번호</th>
												<th>우편번호</th>
												<th>주소</th>
												<th>상세주소</th>
												<th>등록일</th>
												<th>수정일</th>
											</tr>
										</thead>
										<tbody>
											<c:set var="listCodeTransportDiv" value="${CodeServiceImpl.selectListCachedCode('7')}"/>
											<c:choose>
												<c:when test="${fn:length(list) eq 0}"> <!-- length(list)가 0이면 이걸 하고 -->
													<td class="text-center" colspan="12">There is no data!</td>
												</c:when>
												<c:otherwise>
													<c:forEach items="${list}" var="list" varStatus="status">
														<tr onclick="location.href='javascript:goView(<c:out value="${list.transportSeq }"/>)'" style="cursor: pointer;">
															<td>
																<input class="form-check-input" type="checkbox" name="transportCheck" value="transportChecked" onclick="checkSelectAll();">
															</td>
															<td><c:out value="${status.count }"/></td>
															<td><c:out value="${list.transportSeq }"/></td>
															<td><c:out value="${list.member_memberSeq }"/></td>
															<td><c:out value="${list.name }"/></td>
															<td>
																<c:forEach items="${listCodeTransportDiv}" var="listTransportDiv" varStatus="statusTransportDiv">
																	<c:if test="${list.transportDiv eq listTransportDiv.COrder}"><c:out value="${listTransportDiv.CNameKor }"/></c:if>
																</c:forEach>
															</td>
															<td><c:out value="${list.phone }"/></td>
															<td><c:out value="${list.home }"/></td>
															<td><c:out value="${list.zip }"/></td>
															<td><c:out value="${list.address1 }"/></td>
															<td><c:out value="${list.address2 }"/></td>
															<td><c:out value="${list.registration }"/></td>
															<td></td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
									<!-- pagination s -->
									<%@include file="../../../common/dmin/include/pagination.jsp"%>
									<!-- pagination e -->
								</div>
							</div>
						</form>
					<!-- button Start -->
					<%@include file="../../../common/dmin/include/buttonDiv.jsp"%>
					<!-- button End -->
				</div>
			</div>
		</div>
		<!-- modal start -->
<%@include file="../../../common/dmin/include/listModal.jsp"%>
<!-- modal end -->
	<script type="text/javascript">
	function checkSelectAll()  {

		const checkboxes = document.querySelectorAll('input[name="transportCheck"]');

		const checked = document.querySelectorAll('input[name="transportCheck"]:checked');

		const selectAll = document.querySelector('input[name="alltransportCheck"]');
		  
		if(checkboxes.length === checked.length)  {
		  selectAll.checked = true;
		}else {
		  selectAll.checked = false;
		}
		
	}
	function selectAll(selectall)  {
		const checkboxes = document.getElementsByName('transportCheck');
		
		checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectall.checked
	  })
	}
		
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	var goUrlList = "/transport/transportList";
	var goUrlView = "/transport/transportView"
	var seq = $("input:hidden[name=transportSeq]");
	
	var form = $("form[name=TLForm]"); 
	
	
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