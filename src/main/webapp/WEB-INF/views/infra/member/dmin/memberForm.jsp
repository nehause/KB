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
				<form method="post" action="memberInst" id="memberForm" name="memberForm">
					<div class="row">
						<h1>멤버 관리</h1>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="id">아이디</label>
							<input type="text" class="form-control" id="id" name="id" value="<c:out value="${dto.id }"/>">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="password">비밀번호</label>
							<input type="text" class="form-control" id="password" name="password" value="<c:out value="${dto.password }"/>" placeholder="영문(대소문자),숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="name">이름</label>
							<input type="text" class="form-control" id="name" name="name" value="<c:out value="${dto.name }"/>" placeholder="한글, 숫자">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="userName">닉네임</label>
							<input type="text" class="form-control" id="userName" name="userName" value="<c:out value="${dto.userName }"/>" placeholder="영문(대소문자), 숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<div style="padding-bottom: 10px;">
								성별
							</div>
							<input type="radio" class="col-sm-1" id="genderMan" name="gender" value="0">
							<label for="MGenderMan">남성</label>
							<input type="radio" class="col-sm-1" id="genderWoman" name="gender" value="1">
							<label for="MGenderWoman">여성</label>
						</div>
						<div class="col-sm-5 gy-4">
							<label for="dob">생일</label>
							<input type="text" class="form-control" id="dob" name="dob" value="<c:out value="${dto.dob }"/>" placeholder="숫자">
						</div>
						
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="phone">휴대폰 번호</label>
							<input type="text" class="form-control" id="phone" name="phone" value="<c:out value="${dto.phone }"/>" placeholder="숫자">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="number">집전화 번호</label>
							<input type="text" class="form-control" id="number" name="number" value="<c:out value="${dto.number }"/>" placeholder="숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="email">이메일</label>
							<input type="text" class="form-control" id="email" name="email" value="<c:out value="${dto.email }"/>" placeholder="영문(대소문자), 숫자">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="zip">우편번호</label>
							<input type="text" class="form-control" id="zip" name="zip" value="<c:out value="${dto.zip }"/>" placeholder="영문(대소문자), 숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="address1">주소</label>
							<input type="text" class="form-control" id="address1" name="address1" value="<c:out value="${dto.address1 }"/>" placeholder="숫자">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="address2">상세주소</label>
							<input type="text" class="form-control" id="address2" name="address2" value="<c:out value="${dto.address2 }"/>" placeholder="숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<div style="padding-bottom: 10px;">
	                            <span>개인정보 유효기간</span>
	                        </div>
	                        <input type="radio" class="col-sm-1" id="privacy1" name="privacy" value="1">
	                        <label for="privacy1">1년</label>
	                   
	                        <input type="radio" class="col-sm-1" id="privacy2" name="privacy" value="2">
	                        <label for="privacy2">3년</label>
	                      
	                        <input type="radio" class="col-sm-1" id="privacy3" name="privacy" value="3">
	                        <label for="privacy3">5년</label>
	               
	                        <input type="radio" class="col-sm-1" id="privacy4" name="privacy" value="4">
	                        <label for="privacy4">탈퇴시까지</label>
	                      </div>
						<div class="col-sm-5 gy-4">
                            <div style="padding-bottom: 10px;">
                                 <input type="checkbox" id="adAllReceive" name="adAllReceive" value="adAllReceive" onclick="selectAll(this);">
                                 <label for="adAllReceive" style="font-weight: bolder;">광고 전체 수신 동의</label>
                             </div>
                             <div style="display:inline;">
                                 <input type="checkbox" id="email_ctr" name="adReceive" onclick="checkSelectAll();">
                                 <label for="email_ctr">이메일 수신</label>
                             </div>
                             <div style="display:inline; margin-left: 20px;">
                                 <input type="checkbox" id="kakao_ctr" name="adReceive" onclick="checkSelectAll();">
                                 <label for="kakao_ctr">카카오톡 수신</label>
                             </div>
                             <div style="display:inline; margin-left: 20px;">
                                 <input type="checkbox" id="sms_ctr" name="adReceive" onclick="checkSelectAll();">
                                 <label for="sms_ctr">SMS 수신 동의</label>
                             </div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="codeSpareInt3">적립금</label>
							<input type="text" class="form-control" id="accumlate" placeholder="숫자" disabled>
						</div>
						<div class="col-sm-5 gy-4">
							<label for="useCodeUseNy">삭제 여부</label>
							<select class="form-select" id="memberDelNy" name="memberDelNy" disabled>
								<option>선택하세요</option>
								<option value="0">Y</option>
								<option value="1" selected>N</option>
							</select>
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
							<button type="button" class="btn btn-success" onclick="check();">
							<i class="fa-solid fa-bookmark"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function checkSelectAll()  {

			const checkboxes = document.querySelectorAll('input[name="adReceive"]');

			const checked = document.querySelectorAll('input[name="adReceive"]:checked');

			const selectAll = document.querySelector('input[name="adAllReceive"]');
			  
			if(checkboxes.length === checked.length)  {
			  selectAll.checked = true;
			}else {
			  selectAll.checked = false;
			}
		}
		function selectAll(selectAll)  {
			const checkboxes = document.getElementsByName('adReceive');
			
			checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked
		  })
		}
	</script>
	<script type="text/javascript">
		function check(){
			
			if(document.getElementById('id').value == '' || document.getElementById('id').value == null){
				alert("아이디를 입력해주세요");
				document.getElementById('id').value = "";
				document.getElementById('id').focus();
				return false;
			}
			if(document.getElementById('password').value == '' || document.getElementById('password').value == null){
				alert("비밀번호를 입력해주세요");
				document.getElementById('password').value = "";
				document.getElementById('password').focus();
				return false;
			}
			if(document.getElementById('name').value == '' || document.getElementById('name').value == null){
				alert("이름을 입력해주세요");
				document.getElementById('name').value = "";
				document.getElementById('name').focus();
				return false;
			}
			if(document.getElementById('userName').value == '' || document.getElementById('userName').value == null){
				alert("닉네임을 입력해주세요");
				document.getElementById('userName').value = "";
				document.getElementById('userName').focus();
				return false;
			}
			if(document.querySelector('intput[name="gender"]').checked == false){
				alert("성별을 입력해주세요");
				document.querySelector("intput[name='gender']").focus();
				return false;
			}
			if(document.getElementById('dob').value == '' || document.getElementById('dob').value == null){
				alert("생일을 입력해주세요");
				document.getElementById('dob').value = "";
				document.getElementById('dob').focus();
				return false;
			}
			if(document.getElementById('phone').value == '' || document.getElementById('phone').value == null){
				alert("휴대전화번호를 입력해주세요");
				document.getElementById('phone').value = "";
				document.getElementById('phone').focus();
				return false;
			}
			if(document.getElementById('number').value == '' || document.getElementById('number').value == null){
				alert("집전화번호를 입력해주세요");
				document.getElementById('number').value = "";
				document.getElementById('number').focus();
				return false;
			}
			if(document.getElementById('email').value == '' || document.getElementById('email').value == null){
				alert("이메일을 입력해주세요");
				document.getElementById('email').value = "";
				document.getElementById('email').focus();
				return false;
			}
			if(document.getElementById('zip').value == '' || document.getElementById('zip').value == null){
				alert("우편번호를 입력해주세요");
				document.getElementById('zip').value = "";
				document.getElementById('zip').focus();
				return false;
			}
			if(document.getElementById('address1').value == '' || document.getElementById('address1').value == null){
				alert("주소를 선택해주세요");
				document.getElementById('address1').value = "";
				document.getElementById('address1').focus();
				return false;
			}
			if(document.getElementById('address2').value == '' || document.getElementById('address2').value == null){
				alert("상세주소를 입력해주세요");
				document.getElementById('address2').value = "";
				document.getElementById('address2').focus();
				return false;
			}
			if(document.querySelector("intput[name='privacy']:unchecked")){
				alert("개인정보 유효기간을 선택해주세요");
				document.querySelector("intput[name='privacy']:unchecked").focus();
				return false;
			}
			
			
			document.getElementById("memberForm").submit;
			return false;
			
		}
	
	</script>
<!-- end -->
	<script src="/resources/dmin/js/bootStrapSidebar.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/dmin/js/sidebar.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>