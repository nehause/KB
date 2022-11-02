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
	<title>코드그룹 관리</title>
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
					<form method="post" id="CGVForm" name="CGVForm" autocomplete="off">
						<input type="hidden" id="mainKey" name="mainKey">
						<!-- *Vo.jsp s -->
						<%@include file="codeGroupVo.jsp"%>
						<!-- *Vo.jsp e -->
						<div class="row">
							<H1>코드 그룹 관리</H1>
							<div class="col-sm-5 gy-4 offset-1">
								<label for="CGSeq">코드그룹 코드</label>
								<input type="text" class="form-control" id="CGSeq" value="<c:out value="${item.CGSeq }"/>" placeholder="자동생성" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="CGNameKor">코드그룹 이름(한글)</label>
								<input type="text" class="form-control" id="CGNameKor" name="CGNameKor" value="<c:out value="${item.CGNameKor }"/>" placeholder="한글, 숫자">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="CGNameEng">코드그룹 이름(영문)</label>
								<input type="text" class="form-control" id="CGNameEng" name="CGNameEng" value="<c:out value="${item.CGNameEng }"/>" placeholder="영문(대소문자), 숫자">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="codeGroupSequence">순서</label>
								<input type="text" class="form-control" id="CGOrder" name="CGOrder" value="<c:out value="${item.CGOrder }"/>" placeholder="숫자">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="CGDelNy">삭제여부</label>
								<select class="form-select" id="CGDelNy" name="CGDelNy">
									<option value="0" <c:if test="${item.CGDelNy eq 0 }">selected</c:if>>N</option>
									<option value="1" <c:if test="${item.CGDelNy eq 1 }">selected</c:if>>Y</option>
								</select>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="CGUseNy">사용여부</label>
								<select class="form-select" id="CGUseNy" name="CGUseNy">
									<option value="0" <c:if test="${item.CGUseNy eq 0 }">selected</c:if>>N</option>
									<option value="1" <c:if test="${item.CGUseNy eq 1 }">selected</c:if>>Y</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="CGRegistration">등록일</label>
								<input type="text" class="form-control" id="CGRegistration" name="CGRegistration" value="<c:out value="${item.CGRegistration }"/>" placeholder="등록일" disabled>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="CGCorrectation">수정일</label>
								<input type="text" class="form-control" id="CGCorrectation" name="CGCorrectation" value="<c:out value="${item.CGCorrectation }"/>" placeholder="수정일" disabled>
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
	<form name="CGVFormVo" id="CGVFormVo" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="codeGroupVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	</form>
	
<!-- end -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	
	<script>
		var goUrlList = "/codeGroup/codeGroupList";					/* #-> */
		var goUrlInsert = "/codeGroup/codeGroupInst";				/* #-> */
		var goUrlUpdate = "/codeGroup/codeGroupUpdate";				/* #-> */
		var goUrlUelete = "/codeGroup/codeGroupUelete";				/* #-> */
		var goUrlDelete = "/codeGroup/codeGroupDelete";				/* #-> */
		
		var seq = $("input:hidden[name=CGSeq]");
		
		var form = $("form[name=CGVForm]"); 
		var formVo = $("form[name=CGVFormVo]"); 
		
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
	<script src="/resources/dmin/js/bootStrapSidebar.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/dmin/js/sidebar.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>