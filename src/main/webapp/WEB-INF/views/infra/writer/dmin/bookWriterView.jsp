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
	<title>작가 관리</title>
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
      .addScroll{
		overflow-y:auto;
		height: 200px;
		background-color:#E9ECEF;
		padding-top:5px; 
		padding-left:5px;
	}
 	
	.input-file-button{
		padding: 4px 25px;
		background-color:#808080;
		border-radius: 4px;
		color: white;
		cursor: pointer;
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
					<form method="post" id="BWVForm" name="BWVForm" autocomplete="off" enctype="multipart/form-data">
						<input type="hidden" id="mainKey" name="mainKey">
						<!-- *Vo.jsp s -->
						<%@include file="bookWriterVo.jsp"%>
						<!-- *Vo.jsp e -->
						<div class="row">
							<H1 class="offset-1">작가 저서 관리</H1>
							<div class="col-sm-5 gy-4 offset-1">
								<label for="writerSeq">작가 저서 번호</label>
								<input type="text" class="form-control" id="book_writerSeq" value="<c:out value="${item.book_writerSeq }"/>" placeholder="자동생성" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="book_bookSeq">책 번호</label>
								<input type="text" class="form-control" id="book_bookSeq" name="book_bookSeq" value="<c:out value="${item.book_bookSeq }"/>" placeholder="숫자" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="name">책 이름</label>
								<input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name }"/>" placeholder="자동 생성"  readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="writerSeq">작가 번호</label>
								<input type="text" class="form-control" id="writer_writerSeq" name="writer_writerSeq" value="<c:out value="${item.writer_writerSeq }"/>" placeholder="숫자" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="writerName">작가 이름</label>
								<input type="text" class="form-control" id="writerName" name="writerName" value="<c:out value="${item.writerName }"/>" placeholder="자동 생성" readonly>
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
	<form id="BWVFormVo" name="BWVFormVo" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="bookWriterVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
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
		var goUrlList = "/writer/bookWriterList";					/* #-> */
		var goUrlInsert = "/writer/bookWriterInsert";				/* #-> */
		var goUrlUpdate = "/writer/bookWriterUpdate";				/* #-> */
		var goUrlUelete = "/writer/bookWriterUelete";				/* #-> */
		var goUrlDelete = "/writer/bookWriterDelete";				/* #-> */
		
		var seq = $("input:hidden[name=book_writerSeq]");
		
		var form = $("form[name=BWVForm]"); 
		var formVo = $("form[name=BWVFormVo]");
		
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
		
		$("#book_bookSeq").on("keyup", function(){
			/* if(!checkId('ifmmId', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
				return false;
			} else { */
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/writer/bookName"
				/* ,data : $("#formLogin").serialize() */
				,data : { "book_bookSeq" : $("#book_bookSeq").val() }
				,success: function(response) {
					if(response.rt == "success") {
						$("#name").val(response.result.name);
					} else {
						alert("없는 책 번호입니다.");
						$("#writerName").val("");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		
		$("#writer_writerSeq").on("keyup", function(){
			/* if(!checkId('ifmmId', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
				return false;
			} else { */
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/writer/writerName"
				/* ,data : $("#formLogin").serialize() */
				,data : { "writer_writerSeq" : $("#writer_writerSeq").val() }
				,success: function(response) {
					if(response.rt == "success") {
						$("#writerName").val(response.result.writerName);						
					} else {
						alert("없는 작가 번호입니다.");
						$("#writerName").val("");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
	</script>

	
	<!-- <script src="/resources/dmin/js/bootStrapSidebar.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script> -->
    <script src="/resources/dmin/js/sidebar.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>