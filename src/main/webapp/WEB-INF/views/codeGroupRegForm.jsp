<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="sample" %>
<%@ page session="false" %>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<title>코드 관리</title>
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
				<div class="col-lg-10">
					<div class="row">
					<H1>코드 그룹 관리</H1>
						<div class="col-sm-5 gy-4 offset-1">
							<label for="testCodeid">코드그룹 코드</label>
							<input type="text" class="form-control" id="testCodeid" placeholder="영문(대소문자),숫자">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="testCodePasswordCheck">코드그룹 코드(Another)</label>
							<input type="text" class="form-control" id="testCodePasswordCheck" placeholder="영문(대소문자),숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="testCodePassword">코드그룹 이름(한글)</label>
							<input type="text" class="form-control" id="testCodePassword" placeholder="한글, 숫자">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="testCodePasswordCheck">코드그룹 이름(영문)</label>
							<input type="text" class="form-control" id="testCodePasswordCheck" placeholder="영문(대소문자), 숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="testCodeName">사용여부</label>
							<select class="form-select" id="codeUseNy">
								<option>Y</option>
								<option>N</option>
							</select>
						</div>
						<div class="col-sm-5 gy-4">
							<label for="testCodeNameEng">순서</label>
							<input type="text" class="form-control" id="CodeNameEng" placeholder="숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="testCodeNameFirst">설명</label>
							<textarea class="form-control"></textarea>
						</div>
						<div class="col-sm-5 gy-4">
							<label for="testCodeNameLast">삭제여부</label>
							<select class="form-select" id="codeDelNy">
								<option>Y</option>
								<option>N</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="testCodeNameEngFirst">예비1 (varchar type)</label>
							<input type="text" class="form-control" id="testCodeNameEngFirst" placeholder="영문(대소문자), 숫자">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="testCodeNameEngFirst">예비2 (varchar type)</label>
							<input type="text" class="form-control" id="testCodeNameEngFirst" placeholder="영문(대소문자), 숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="testCodeNameEngFirst">예비3 (varchar type)</label>
							<input type="text" class="form-control" id="testCodeNameEngFirst" placeholder="영문(대소문자), 숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="testCodeNameEngFirst">예비1 (int type)</label>
							<input type="text" class="form-control" id="testCodeNameEngFirst" placeholder="숫자">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="testCodeNameEngFirst">예비2 (int type)</label>
							<input type="text" class="form-control" id="testCodeNameEngFirst" placeholder="숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="testCodeNameEngFirst">예비3 (int type)</label>
							<input type="text" class="form-control" id="testCodeNameEngFirst" placeholder="숫자">
						</div>
					</div>
					<div style="height: 20px;"></div>
					<div class="col-lg-10 offset-1">
						<div style="float:left;">
							<button type="button" class="btn btn-secondary">
								<i class="fa-solid fa-bars"></i>
							</button>
						</div>
						<div style="float:right;">
							<button type="button" class="btn btn-danger">
								<i class="fa-solid fa-x"></i>
							</button>
							<button type="button" class="btn btn-danger">
								<i class="fa-solid fa-trash-can"></i>
							</button>
							<button type="button" class="btn btn-success" onclick()="codeGroupList">
							<i class="fa-solid fa-bookmark"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

<!-- end -->
	<script src="/resources/dmin/js/bootStrapSidebar.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/dmin/js/sidebar.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>