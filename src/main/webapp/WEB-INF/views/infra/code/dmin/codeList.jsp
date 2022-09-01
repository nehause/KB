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
					<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
						<ul class="list-unstyled ps-0">
							<li class="mb-1">
								<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="true">
									Home
								</button>
								<div class="collapse show" id="home-collapse">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">Overview</a></li>
										<li><a href="#" class="link-dark rounded">Updates</a></li>
										<li><a href="#" class="link-dark rounded">Reports</a></li>
									</ul>
								</div>
							</li>
							<li class="mb-1">
								<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">
									Dashboard
								</button>
								<div class="collapse" id="dashboard-collapse">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">Overview</a></li>
										<li><a href="#" class="link-dark rounded">Weekly</a></li>
										<li><a href="#" class="link-dark rounded">Monthly</a></li>
										<li><a href="#" class="link-dark rounded">Annually</a></li>
									</ul>
								</div>
							</li>
							<li class="mb-1">
								<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">
									Orders
								</button>
								<div class="collapse" id="orders-collapse">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">New</a></li>
										<li><a href="#" class="link-dark rounded">Processed</a></li>
										<li><a href="#" class="link-dark rounded">Shipped</a></li>
										<li><a href="#" class="link-dark rounded">Returned</a></li>
									</ul>
								</div>
							</li>
							<li class="border-top my-3"></li>
							<li class="mb-1">
								<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">
									Account
								</button>
								<div class="collapse" id="account-collapse">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">New...</a></li>
										<li><a href="#" class="link-dark rounded">Profile</a></li>
										<li><a href="#" class="link-dark rounded">Settings</a></li>
										<li><a href="#" class="link-dark rounded">Sign out</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-10">
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
								<select class="form-select bg-light" id="codeUse" name="codeUse" aria-label="codeUse">
									<option value="" selected>N</option>
									<option value="CodeUseAsc">오름차순</option>
									<option value="CodeUseDes">내림차순</option>
								</select>
							</div>
							<div class="col-2">
								<select class="form-select bg-light" id="codeDoc" name="codeDoc" aria-label="codeDoc"> <!-- doc = "day of correction" -->
									<option value="" selected>수정일</option>
									<option value="codeDocAsc">오름차순</option>
									<option value="codeDocDes">내림차순</option>
								</select>
							</div>
							<div class="col-2">
								<input type="text" class="form-control" id="codeDos" name="codeDos" placeholder="시작일"> <!-- dos = "day of start" -->
							</div>
							<div class="col-2">
								<input type="text" class="form-control" id="codeDoe" name="codeDoe" placeholder="종료일"> <!-- doe = "day of end" -->
							</div>
						</div>
						<div class="row" style="height: 10px;"></div>
						<div class="row" style="margin-bottom: 10px;">
							<form class="d-flex" role="search">
								<div class="col-lg-2">
									<select class="form-select bg-light" id="codeSearchType" name="codeSearchType" aria-label="selectsearch">
										<option selected>검색기준</option>
										<option value="typeCode">코드그룹 코드</option>
										<option value="typeNameKor">코드그룹 이름(한글)</option>
										<option value="typeNameEng">코드그룹 이름(영문)</option>
									</select>
								</div>
								<div class="col-lg-2">
									<input type="search" class="form-control" id="codeSearchValue" name="codeSearchValue" placeholder="검색어" aria-label="Search" >
								</div>
								<div class="col-lg-2">
									<button class="col-1 btn btn-outline-dark" type="submit" style="width: 40px; margin-right: 10px;">
										<i class="fa fa-search" aria-hidden="true"></i>
									</button>
									<button class="col-1 btn btn-warning" type="reset" style="width: 40px; margin-right: 10px;">
										<i class="fa-solid fa-arrow-rotate-right"></i>
									</button>
								</div>
							</form>	
						</div>
					</div>
					<div class="row">
						<div class="col">
							<table class="table table-striped table-hover border" id="codeTable" style="text-align:center;">
								<caption style="caption-side: top;">
									<div style="float: left;">
										<span>total: 42</span>
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
									<c:forEach items="${list}" var="list" varStatus="status">
										<tr>
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
											<td></td>
											<td></td>
										</tr>
									</c:forEach>
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
									<button type="button" class="btn btn-danger" name="codeDelect" id="codeDelect" data-bs-toggle="modal" data-bs-target="#codeDelectModal">
										<i class="fa-solid fa-trash"></i> 삭제
									</button>
									<div class="modal fade" id="codeDelectModal" tabindex="-1" aria-labelledby="#codeDelectModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="codeDelectModalLabel">테이블에서 삭제하시겠습니까?</h5>
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
									<button type="button" class="btn btn-outline-danger" id="codeListDelect" data-bs-toggle="modal" data-bs-target="#codeListDelectModal">
										<i class="fa-regular fa-trash-can"></i> 삭제
									</button>
									<div class="modal fade" id="codeListDelectModal" tabindex="-1" aria-labelledby="codeListDelectLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="codeListDelectModalLabel">리스트에서 삭제하시겠습니까?</h5>
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
									<a class="btn btn-primary" href="memberRegForm.html" role="button" id="listregform">
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
	<script src="/resources/dmin/js/bootStrapSidebar.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/dmin/js/sidebar.js"></script>
	
<!-- end -->

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>