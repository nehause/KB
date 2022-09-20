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
	<title>멤버 관리</title>
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
<form>
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
						<h1>멤버 관리</h1>
						<div class="row" style="height: 20px;"></div>
					</div>
				<div class="container-fluid border border-gray">
						<!-- 빈공간을 위해 col은 10까지만 -->
						<div class="row" style="margin-top: 10px;">
							<div class="col-2">
								<select class="form-select bg-light" id="searchDelNy" name="searchDelNy" aria-label="memberUse">
									<option value="" <c:if test="${empty vo.searchDelNy}">selected</c:if>>삭제 여부</option>
									<option value="0" <c:if test="${vo.searchDelNy eq 0}">selected</c:if>>N</option>
									<option value="1" <c:if test="${vo.searchDelNy eq 1}">selected</c:if>>Y</option>
								</select>
							</div>
							<div class="col-2">
								<select class="form-select bg-light" id="searchGender" name="searchGender" aria-label="memberUse">
									<option value="" <c:if test="${empty vo.searchDelNy}">selected</c:if>>성별</option>
									<option value="0" <c:if test="${vo.searchDelNy eq 0}">selected</c:if>>남자</option>
									<option value="1" <c:if test="${vo.searchDelNy eq 1}">selected</c:if>>여자</option>
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
							<div class="col-2">
								<select class="form-select bg-light" id="searchPrivacy" name="searchPrivacy" aria-label="memberUse">
									<option value="" <c:if test="${empty vo.searchDelNy}">selected</c:if>>개인정보 유효기간</option>
									<option value="1" <c:if test="${vo.searchDelNy eq 1}">selected</c:if>>1년</option>
									<option value="2" <c:if test="${vo.searchDelNy eq 2}">selected</c:if>>3년</option>
									<option value="3" <c:if test="${vo.searchDelNy eq 3}">selected</c:if>>5년</option>
									<option value="4" <c:if test="${vo.searchDelNy eq 4}">selected</c:if>>탈퇴시까지</option>
								</select>
							</div>
							<div class="col-lg-2">
								<select class="form-select bg-light" id="searchOption" name="searchOption" aria-label="selectsearch">
									<option value="" <c:if test="${empty vo.searchOption}">selected</c:if>>검색기준</option>
									<option value="1" <c:if test="${vo.searchOption eq 1}">selected</c:if>>멤버 번호</option>
									<option value="2" <c:if test="${vo.searchOption eq 2}">selected</c:if>>이름</option>
									<option value="3" <c:if test="${vo.searchOption eq 3}">selected</c:if>>아이디</option>
									<option value="4" <c:if test="${vo.searchOption eq 4}">selected</c:if>>닉네임</option>
									<option value="5" <c:if test="${vo.searchOption eq 5}">selected</c:if>>이메일</option>
								</select>
							</div>
							<div class="col-lg-2">
								<input class="form-control" type="search" id="searchValue" name="searchValue" placeholder="검색어" aria-label="Search" >
							</div>
							<div class="col-lg-2">
								<button class="col-1 btn btn-outline-dark" type="submit" style="width: 40px; height:38px; margin-right: 10px;">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
								<button class="col-1 btn btn-warning" type="reset" style="width: 40px; height:38px; margin-right: 10px;">
									<i class="fa-solid fa-arrow-rotate-right"></i>
								</button>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<table class="table table-striped table-hover border" id="memberTable" style="text-align:center;">
								<caption style="caption-side: top;">
									<div style="float: left;">
										<span>total: total</span>
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
											<input class="form-check-input" type="checkbox" name="allmemberCheck" value="allMemeberChecked" onclick="selectAll(this);">
										</td>
										<th>#</th>
										<th>번호</th>
										<th>이름</th>
										<th>아이디</th>
										<th>닉네임</th>
										<th>성별</th>
										<th>생년월일</th>
										<th>전화번호</th>
										<th>이메일</th>
										<th>개인정보유효기간</th>	
										<th>적립금</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${fn:length(list) eq 0}"> <!-- length(list)가 0이면 이걸 하고 -->
											<td class="text-center" colspan="12">There is no data!</td>
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="list" varStatus="status">
												<tr>
													<td>
														<input class="form-check-input" type="checkbox" name="memberCheck" value="memberChecked" onclick="checkSelectAll();">
													</td>
													<td><c:out value="${status.count }"/></td>
													<td><c:out value="${list.memberSeq }"/></td>
													<td><c:out value="${list.name }"/></td>
													<td><c:out value="${list.id }"/></td>
													<td><c:out value="${list.userName }"/></td>
													<td><c:out value="${list.gender }"/></td>
													<td><a><c:out value="${list.dob }"/></a></td>
													<td><c:out value="${list.number }"/></td>
													<td><c:out value="${list.email }"/></td>
													<td><c:out value="${list.privacy }"/></td>
													<td><c:out value="${list.accmulate }"/></td>
												</tr>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							<div class="d-flex justify-content-center">
								<nav aria-label="Page navigation example">
									<ul class="pagination">
										<li class="page-item"><a class="page-link" href="#"><<</a></li>
										<li class="page-item"><a class="page-link" href="#"><</a></li>
										<li class="page-item active"><a class="page-link" href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">4</a></li>
										<li class="page-item"><a class="page-link" href="#">5</a></li>
										<li class="page-item"><a class="page-link" href="#">></a></li>
										<li class="page-item"><a class="page-link" href="#">>></a></li>
									</ul>
								</nav>
							</div>
							<div>
								<div style="float: left;">
									<button type="button" class="btn btn-danger" name="memberTableDelect" id="memberTableDelect" data-bs-toggle="modal" data-bs-target="#memberTableDelectModal">
										<i class="fa-solid fa-trash"></i> 삭제
									</button>
									<div class="modal fade" id="memberTableDelectModal" tabindex="-1" aria-labelledby="memberTableDelectLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="memberTableDelectLabel">테이블에서 삭제하시겠습니까?</h5>
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
									<button type="button" class="btn btn-outline-danger" id="memberListDelect" data-bs-toggle="modal" data-bs-target="#memberListDelectModal">
										<i class="fa-regular fa-trash-can"></i> 삭제
									</button>
									<div class="modal fade" id="memberListDelectModal" tabindex="-1" aria-labelledby="memberListDelectLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="memberListDelectLabel">리스트에서 삭제하시겠습니까?</h5>
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
								<div style="float: right;">
									<button type="button" class="btn btn-success" id="listexecl">
										<i class="fa-solid fa-file-excel"></i> 액셀
									</button>
									<a class="btn btn-primary" href="memberForm" role="button" id="listregform">
										<i class="fa-solid fa-square-plus"></i> 추가
									</a>
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

		const checkboxes = document.querySelectorAll('input[name="memberCheck"]');

		const checked = document.querySelectorAll('input[name="memberCheck"]:checked');

		const selectAll = document.querySelector('input[name="allMemberCheck"]');
		  
		if(checkboxes.length === checked.length)  {
		  selectAll.checked = true;
		}else {
		  selectAll.checked = false;
		}
		
	}
	function selectAll(selectall)  {
		const checkboxes = document.getElementsByName('memberCheck');
		
		checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectall.checked
	  })
	}
		
	</script>
	<script src="/resources/dmin/js/bootStrapSidebar.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/dmin/js/sidebar.js"></script>
	
<!-- end -->

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>