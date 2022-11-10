<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<title>코드</title>
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
	<!-- header navBar start -->
	<%@include file="../../../common/dmin/include/headNavBar.jsp"%>
	<!-- header navBar end -->
		<div class="container-fluid">
			<div class="row" style="padding-left: 20px; padding-right: 20px;">
				<!-- navBar start -->
				<%@include file="../../../common/dmin/include/dminSideBar.jsp"%>
				<!-- navBar end -->
				<div class="col-lg-10">
					<form method="post" id="CLForm" name="CLForm" role="search">
						<input type="hidden" name="mainKey">
						<input type="hidden" name="CSeq">
						<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
						<input type="hidden" id="rowNumToShow" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
						<input type="hidden" name="checkboxSeqArray">
						<div class="row" style="height: 20px;"></div>
						<div class="row" style="height: 100px;">
							<div class="row" style="height: 20px;"></div>
							<h1>코드 관리</h1>
							<div class="row" style="height: 20px;"></div>
						</div>
						<div class="container-fluid border border-gray">
							<!-- 빈공간을 위해 col은 10까지만 -->
							<div class="row" style="margin-top: 10px;">
								<div class="col-2">
									<select class="form-select bg-light" id="searchDelNy" name="searchDelNy" aria-label="codeUse">
										<option value="" <c:if test="${empty vo.searchDelNy}">selected</c:if>>삭제 여부</option>
										<option value="0" <c:if test="${vo.searchDelNy eq 0}">selected</c:if>>N</option>
										<option value="1" <c:if test="${vo.searchDelNy eq 1}">selected</c:if>>Y</option>
									</select>
								</div>
								<div class="col-2">
									<select class="form-select bg-light" name="searchDor" aria-label="searchDor">
										<option value="" <c:if test="${empty vo.searchDor}">selected</c:if>>날짜 기준</option>
										<option value="1" <c:if test="${vo.searchDor eq 1}">selected</c:if>>등록일</option>
										<option value="2" <c:if test="${vo.searchDor eq 2}">selected</c:if>>수정일</option>
									</select>
								</div>
								<div class="col-2">
									<input type="text" class="form-control" id="searchDos" name="searchDos" placeholder="시작일"> <!-- dos = "day of start" -->
								</div>
								<div class="col-2">
									<input type="text" class="form-control" id="searchDoe" name="searchDoe" placeholder="종료일"> <!-- doe = "day of end" -->
								</div>
							</div>
							<div class="row" style="height: 10px;"></div>
							<div class="row" style="margin-bottom: 10px;">
								<div class="col-lg-2">
									<select class="form-select bg-light" id="searchOption" name="searchOption" aria-label="selectsearch">
										<option value="" <c:if test="${empty vo.searchOption}">selected</c:if>>검색기준</option>
										<option value="1" <c:if test="${vo.searchOption eq 1}">selected</c:if>>코드그룹 코드</option>
										<option value="2" <c:if test="${vo.searchOption eq 2}">selected</c:if>>코드그룹 이름(한글)</option>
										<option value="3" <c:if test="${vo.searchOption eq 3}">selected</c:if>>코드 코드</option>
										<option value="4" <c:if test="${vo.searchOption eq 4}">selected</c:if>>코드 이름(한글)</option>
										<option value="5" <c:if test="${vo.searchOption eq 5}">selected</c:if>>코드 이름(영문)</option>
									</select>
								</div>
								<div class="col-lg-2">
									<input type="search" class="form-control" id="searchValue" name="searchValue" value="<c:out value="${vo.searchValue }"/>" placeholder="검색어" aria-label="Search">
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
								<table class="table table-striped table-hover border" id="codeTable" style="text-align:center;">
									<caption style="caption-side: top;">
										<div style="float: left;">
											<span>total: <c:out value="${vo.totalRows}"/></span>
										</div>
										<div style="float:right;">
											<select class="form-select" id="showBoard" name="showBoard">
												<option value="10" selected>10</option>
												<option value="15">15</option>
												<option value="20">20</option>
												<option value="25">25</option>
											</select>
										</div>
									</caption>
									<thead>
										<tr style="background-color: black">
											<td class="checkboxsize"> 
												<input class="form-check-input" type="checkbox" name="allCodeCheck" value="allCodeChecked" onclick="selectAll(this);">
											</td>
											<th>#</th>
											<th>코드그룹 코드</th>
											<th>코드그룹 이름(한글)</th>
											<th>코드</th>
											<th>대체 코드</th>
											<th>코드 이름(한글)</th>
											<th>코드 이름(영문)</th>
											<th>사용</th>
											<th>순서</th>
											<th>등록일</th>
											<th>수정일</th>
										</tr>
									</thead>
									<tbody>
										<c:choose>
											<c:when test="${fn:length(list) eq 0}"> <!-- length(list)가 0이면 이걸 하고 -->
												<td class="text-center" colspan="12">There is no data!</td>
											</c:when>
											<c:otherwise>
												<c:forEach items="${list}" var="list" varStatus="status">
													<tr onclick="location.href='javascript:goView(<c:out value="${list.CSeq }"/>)'" style="cursor: pointer;">
														<td>
															<input class="form-check-input" type="checkbox" name="codeCheck" value="codeChecked" onclick="checkSelectAll();">
														</td>
														<td><c:out value="${status.count }"/></td>
														<td><c:out value="${list.CCG_CGSeq }"/></td>
														<td><c:out value="${list.CGName }"/></td>
														<td><c:out value="${list.CSeq }"/></td>
														<td></td>
														<td><a><c:out value="${list.CNameKor }"/></a></td>
														<td><c:out value="${list.CNameEng }"/></td>
														<td><c:out value="${list.CUseNy }"/></td>
														<td><c:out value="${list.COrder }"/></td>
														<td><c:out value="${list.CRegistration }"/></td>
														<td><c:out value="${list.CCorrectation }"/></td>
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

			const checkboxes = document.querySelectorAll('input[name="codeCheck"]');

			const checked = document.querySelectorAll('input[name="codeCheck"]:checked');

			const selectAll = document.querySelector('input[name="allCodeCheck"]');
			  
			if(checkboxes.length === checked.length)  {
			  selectAll.checked = true;
			}else {
			  selectAll.checked = false;
			}
			
		}
		function selectAll(selectall)  {
			const checkboxes = document.getElementsByName('codeCheck');
			
			checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectall.checked
		  })
		}
		
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	
	<script>
	var goUrlList = "/code/codeList";
	var goUrlView = "/code/codeView"
	var seq = $("input:hidden[name=CSeq]");
	
	var form = $("form[name=CLForm]"); 
	
	
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
	
	$("#execlBtn").on("click", function(){
   		alert("코드 리스트에서는 엑셀 기능을 제공하지 않습니다.");
	});
	</script>
	<script src="/resources/dmin/js/bootStrapSidebar.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/dmin/js/sidebar.js"></script>
	
<!-- end -->

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>