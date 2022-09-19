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
	<form method="post" id="CVForm" name="CVForm" autocomplete="off">
		<input type="hidden" id="mainKey" name="mainKey">
		<!-- *Vo.jsp s -->
		<%@include file="codeVo.jsp"%>
		<!-- *Vo.jsp e -->
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
					<div class="row">
						<H1>코드 관리</H1>
						<div class="col-sm-5 gy-4 offset-1">
							<label for="CCG_CGSeq">코드그룹</label>
							<select class="form-select" id="CCG_CGSeq" name="CCG_CGSeq">
								<option value="">
									코드그룹 선택
								</option>
								<c:forEach items="${view}" var="view" varStatus="status">
									<option value="${view.CGSeq}"  <c:if test="${view.CGSeq eq item.CCG_CGSeq}">selected</c:if>>
										<c:out value="${view.CGNameKor }"/>
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="CSeq">코드 번호</label>
							<input type="text" class="form-control" id="CSeq" value="<c:out value="${item.CSeq }"/>" placeholder="자동생성">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="COrder">순서</label>
							<input type="text" class="form-control" id="COrder" name="COrder" value="<c:out value="${item.COrder }"/>" placeholder="숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="CNameKor">코드 이름(한글)</label>
							<input type="text" class="form-control" id="CNameKor" name="CNameKor" value="<c:out value="${item.CNameKor }"/>" placeholder="한글, 숫자">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="CNameEng">코드 이름(영문)</label>
							<input type="text" class="form-control" id="CNameEng" name="CNameEng" value="<c:out value="${item.CNameEng }"/>" placeholder="영문(대소문자), 숫자">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="CUseNy">사용여부</label>
							<select class="form-select" id="CUseNy" name="CUseNy">
								<option value="0" <c:if test="${item.CUseNy eq 0 }">selected</c:if>>N</option>
								<option value="1" <c:if test="${item.CUseNy eq 1 }">selected</c:if>>Y</option>
								
							</select>
						</div>
						<div class="col-sm-5 gy-4">
							<label for="codeDelNy">삭제여부</label>
							<select class="form-select" id="CDelNy" name="CDelNy">
								<option value="0" <c:if test="${item.CDelNy eq 0 }">selected</c:if>>N</option>
								<option value="1" <c:if test="${item.CDelNy eq 1 }">selected</c:if>>Y</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="CRegistration">등록일</label>
							<input type="text" class="form-control" id="CRegistration" name="CRegistration" value="<c:out value="${item.CRegistration }"/>" placeholder="숫자">
						</div>
					</div>
					<div style="height: 20px;"></div>
					<div class="col-lg-10 offset-1">
						<div style="float:left;">
							<button type="button" class="btn btn-secondary" id="listBtn" name="listBtn">
								<i class="fa-solid fa-bars"></i>
							</button>
						</div>
						<div style="float:right;">
							<button class="btn btn-danger" id="ueleteModalBtn" name="ueleteModalBtn" data-bs-toggle="modal" data-bs-target="#ueleteModal" type="button">
								<i class="fa-solid fa-x"></i>
							</button>
							<button class="btn btn-danger" id="deleteModalBtn" name="deleteModalBtn" data-bs-toggle="modal" data-bs-target="#deleteModal" type="button">
								<i class="fa-solid fa-trash-can"></i>
							</button>
							<button class="btn btn-success" id="updateBtn" name="updateBtn" type="button">
								<i class="fa-solid fa-bookmark"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="ueleteModal" tabindex="-1" aria-labelledby="ueleteModallabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="ueleteModalLabel">리스트에서 삭제하시겠습니까?</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        테이블 리스트에서 보이지 않게 됩니다 삭제하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
		        	<i class="fa-solid fa-x"></i> 취소
		        </button>
		        <button type="button" class="btn btn-outline-danger" id="ueleteBtn" name="ueleteBtn">
		        	<i class="fa-solid fa-trash-can"></i> 삭제
		        </button>
		      </div>
		    </div>
		  </div>
		</div>
		<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="delectModallabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="delectModalLabel">데이터를 삭제하시겠습니까?</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        테이블에서 데이터가 삭제 됩니다 삭제하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
		        	<i class="fa-solid fa-x"></i> 취소
		        </button>
		        <button type="button" class="btn btn-outline-danger" id="deleteBtn" name="deleteBtn">
		        	<i class="fa-solid fa-trash-can"></i> 삭제
		        </button>
		      </div>
		    </div>
		  </div>
		</div>
	</form>

<!-- end -->
	<!-- <script type="text/javascript">
	function check(){
		
		if(document.getElementById('CCG_CGSeq').value == '' || document.getElementById('CCG_CGSeq').value == null){
			alert("코드그룹을 분류해주세요");
			document.getElementById('CCG_CGSeq').value = "";
			document.getElementById('CCG_CGSeq').focus();
			return false;
		}
		
		
		if(document.getElementById('COrder').value == '' || document.getElementById('COrder').value == null){
			alert("순서를 입력해주세요");
			document.getElementById('COrder').value = "";
			document.getElementById('COrder').focus();
			return false;
		}
		
		
		if(document.getElementById('CNameKor').value == '' || document.getElementById('CNameKor').value == null){
			alert("한글명을 입력해주세요");
			document.getElementById('CNameKor').value = "";
			document.getElementById('CNameKor').focus();
			return false;
		}
		
		
		if(document.getElementById('CNameEng').value == '' || document.getElementById('CNameEng').value == null){
			alert("영문명을 입력해주세요");
			document.getElementById('CNameEng').value = "";
			document.getElementById('CNameEng').focus();
			return false;
		}
		
		
		if(document.getElementById('CRegistration').value == '' || document.getElementById('CRegistration').value == null){
			alert("등록일을 입력해주세요");
			document.getElementById('CRegistration').value = "";
			document.getElementById('CRegistration').focus();
			return false;
		}
		
		document.getElementById('regCodeForm').submit();
		return false;

	}
	</script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	
	<script>
		var goUrlList = "/code/codeList";					/* #-> */
		var goUrlInsert = "/code/codeInst";				/* #-> */
		var goUrlUpdate = "/code/codeUpdate";				/* #-> */
		var goUrlUelete = "/code/codeUelete";				/* #-> */
		var goUrlDelete = "/code/codeDelete";				/* #-> */
		
		var seq = $("input:hidden[name=CSeq]");
		
		var form = $("form[name=CVForm]"); 
		
		
		$("#listBtn").on("click", function(){
			$(location).attr("href", goUrlList);
		}); 
		
		$("#updateBtn").on("click", function(){
			if(seq.val() == "0" || seq.val() == ""){
				form.attr("action", goUrlInsert).submit();
			} else{
				form.attr("action", goUrlUpdate).submit();	
			}
		});
		
		$("#deleteBtn").on("click", function(){
	   		form.attr("action", goUrlDelete).submit();
		}); 
		
		$("#ueleteBtn").on("click", function(){
	   		form.attr("action", goUrlUelete).submit();
		}); 
	</script>
	
	<script src="/resources/dmin/js/bootStrapSidebar.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/dmin/js/sidebar.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>