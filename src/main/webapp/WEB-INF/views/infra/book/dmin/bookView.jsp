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
	<title>책 추가</title>
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
				<!-- navBar start -->
				<%@include file="../../../common/dmin/include/dminSideBar.jsp"%>
				<!-- navBar end -->
				<div class="col-lg-10">
					<form method="post" id="BVForm" name="BVForm" autocomplete="off">
						<input type="hidden" id="mainKey" name="mainKey">
						<!-- *Vo.jsp s -->
						<%@include file="bookVo.jsp"%>		<!-- #-> -->
						<!-- *Vo.jsp e -->
						<div class="row">
							<h1>책 관리</h1>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="bookSeq">책 번호</label>
								<input type="text" class="form-control" id="bookSeq" value="<c:out value="${item.bookSeq }"/>" readonly>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="writer_writerSeq">작가 번호</label>
								<input type="text" class="form-control" id="writer_writerSeq" name="writer_writerSeq" value="<c:out value="${item.writer_writerSeq }"/>">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="sign">표지</label>
								<input type="text" class="form-control" id="sign" name="sign" value="<c:out value="${item.sign }"/>">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="name">이름</label>
								<input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name }"/>" placeholder="한글, 숫자">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="subName">부제</label>
								<input type="text" class="form-control" id="subName" name="subName" value="<c:out value="${item.subName }"/>" placeholder="">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="publisher">출판사</label>
								<input type="text" class="form-control" id="publisher" name="publisher" value="<c:out value="${item.publisher }"/>" placeholder="한글, 숫자">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="dop">출간일</label>
								<input type="text" class="form-control" id="dop" name="dop" value="<c:out value="${item.dop }"/>" placeholder="숫자">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="dor">등록일</label>
								<input type="text" class="form-control" id="dor" name="dor" value="<c:out value="${item.dor }"/>" placeholder="숫자">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="cost">가격</label>
								<input type="text" class="form-control" id="cost" name="cost" value="<c:out value="${item.cost }"/>" placeholder="숫자">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="sale">할인율</label>
								<input type="text" class="form-control" id="sale" name="sale" value="<c:out value="${item.sale }"/>" placeholder="숫자">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="accmulate">적립률</label>
								<input type="text" class="form-control" id="accmulate" name="accmulate" value="<c:out value="${item.accmulate }"/>" placeholder="숫자">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="isbn">isbn</label>
								<input type="text" class="form-control" id="isbn" name="isbn" value="<c:out value="${item.isbn }"/>" placeholder="isbn">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="page">쪽 수</label>
								<input type="text" class="form-control" id="page" name="page" value="<c:out value="${item.page }"/>" placeholder="우편번호">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="size">사이즈</label>
								<input type="text" class="form-control" id="size" name="size" value="<c:out value="${item.size }"/>" placeholder="주소">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="image">이미지</label>
								<input type="text" class="form-control" id="image" name="image" value="<c:out value="${item.image }"/>" placeholder="이미지">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="topic">주제</label>
								<textarea class="form-control" id="topic" name="topic" rows="" cols=""><c:out value="${item.topic }"/></textarea>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="introduce">소개</label>
								<textarea class="form-control" id="introduce" name="introduce" rows="" cols=""><c:out value="${item.introduce }"/></textarea>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="list">목차</label>
								<textarea class="form-control" id="list" name="list" rows="" cols=""><c:out value="${item.list }"/></textarea>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="content">내용</label>
								<textarea class="form-control" id="content" name="content" rows="" cols=""><c:out value="${item.content }"/></textarea>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="rop">출판사 서평</label>
								<textarea class="form-control" id="rop" name="rop" rows="" cols=""><c:out value="${item.rop }"/></textarea>
							</div>
							<div class="col-sm-5 gy-4">
								
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="stock">재고</label>
								<input type="text" class="form-control" id="stock" name="stock" value="<c:out value="${item.stock }"/>" placeholder="숫자">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="amount">판매량</label>
								<input type="text" class="form-control" id="amount" name="amount" value="<c:out value="${item.amount }"/>" placeholder="숫자">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="delNy">삭제 여부</label>
								<select class="form-select" id="delNy" name="delNy">
									<option value="0" <c:if test="${item.delNy eq 0 }">selected</c:if>>Y</option>
									<option value="1" <c:if test="${item.delNy eq 1 }">selected</c:if>>N</option>
								</select>
							</div>
						</div>
						<!-- viewBtn start -->
						<%@include file="../../../common/dmin/include/viewBtn.jsp"%>
						<!-- viewBtn end -->
					</form>
				</div>
			</div>
		</div>
		<!-- viewModal start -->
		<%@include file="../../../common/dmin/include/viewModal.jsp"%>
		<!-- viewModal end -->
	<form name="BVFormVo" id="BVFormVo" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="bookVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	</form>
	
	<!-- <script type="text/javascript">
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
			
			
			document.getElementById("bookForm").submit;
			return false;
			
		}
	
	</script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	
	<script>
	
		var goUrlList = "/book/bookList";					/* #-> */
		var goUrlInsert = "/book/bookInst";				/* #-> */
		var goUrlUpdate = "/book/bookUpdate";				/* #-> */
		var goUrlUelete = "/book/bookUelete";				/* #-> */
		var goUrlDelete = "/book/bookDelete";				/* #-> */
		
		var seq = $("input:hidden[name=bookSeq]");
		
		var form = $("form[name=BVForm]"); 
		var formVo = $("form[name=BVFormVo]");
		
		$("#listBtn").on("click", function(){
			formVo.attr("action", goUrlList).submit();
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
<!-- end -->
	<script src="/resources/dmin/js/bootStrapSidebar.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/dmin/js/sidebar.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>