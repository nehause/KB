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
					<form method="post" id="BVForm" name="BVForm" autocomplete="off" enctype="multipart/form-data">
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
								 <label for="sign" class="form-label input-file-button">표지</label>
					 			<input class="form-control form-control-sm" id="sign" name="sign" type="file" multiple="multiple" style="display: none;" onChange="upload('sign', 1, 1, 1, 0, 0, 1);">
					 			<div class="addScroll">
									<ul id="ulFile1" class="list-group">
									</ul>
					 			</div>
					 			<!-- <input type="file" class="form-control" id="sign" name="sign" multiple="multiple" onChange="upload('sign', 1, 2, 1, 0, 0);"> -->
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
								<label for="cost">가격</label>
								<input type="text" class="form-control" id="cost" name="cost" value="<c:out value="${item.cost }"/>" placeholder="숫자">
							</div>
							<div class="col-sm-5 gy-4">
								
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
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="image" class="form-label input-file-button">이미지</label>
					 			<input class="form-control form-control-sm" id="image" name="image" type="file" multiple="multiple" style="display: none;" onChange="upload('image', 2, 1, 1, 0, 0, 1);">
								<div class="addScroll">
									<ul id="ulFile2" class="list-group">
									</ul>
					 			</div>
								<!-- <input type="file" class="form-control" id="image" name="image" multiple="multiple" onChange="upload('image', 2, 2, 1, 0, 0;"> -->
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
								<label for="dor">등록일</label>
								<input type="text" class="form-control" id="dor" name="dor" value="<c:out value="${item.dor }"/>" placeholder="등록일" disabled>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="doc">수정일</label>
								<input type="text" class="form-control" id="doc" name="doc" value="<c:out value="${item.doc }"/>" placeholder="수정일" disabled>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="delNy">삭제 여부</label>
								<select class="form-select" id="delNy" name="delNy">
									<option value="0" <c:if test="${item.delNy eq 0 }">selected</c:if>>N</option>
									<option value="1" <c:if test="${item.delNy eq 1 }">selected</c:if>>Y</option>
								</select>
							</div>
						</div>
						<div>
							<button type="button" class="btn btn-warning" id="testBtn" name="testBtn">테스트 버튼</button>
							<button type="button" class="btn btn-danger" id="valiBtn" name="valiBtn">벨리데이션 버튼</button>
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
		<script>
		
		$("#testBtn").on("click", function(){
			/* var obj = $("#input[name=sign]").files; // 배열
			var obj2 = $("#input[name=image]").files;  */
			var obj = document.querySelector("#sign").files; // 배열
			var obj2 = document.querySelector("#image").files;
			var objSum = 0;
			var obj2Sum = 0;
			
			alert(obj);
			alert(obj.length);
			
			for(var i=0; i<obj.length; i++){
				alert(obj[i].name + " : " + obj[i].size);
			}
			for(var i=0; i<obj.length; i++){
				objSum +=  obj[i].size
			}
			alert("objSum: " + objSum);
			
			alert(obj2);
			alert(obj2.length);
			
			for(var i=0; i<obj2.length; i++){
				alert(obj2[i].name + " : " + obj2[i].size);
			}
			for(var i=0; i<obj2.length; i++){
				obj2Sum +=  obj2[i].size
			}
			alert("obj2Sum: " + obj2Sum);
			
		});
		
		// validation check 직접 만들어보기
		/* $("#valiBtn").on("click", function(){
			var obj = document.querySelector("#sign").files; // 배열
			var obj2 = document.querySelector("#image").files;
			var objSum = 0;
			var obj2Sum = 0;
			var byteSize = 1024;
			var megaSize = byteSize*byteSize;
			var insertOver = 3;
			
			if(obj.length > insertOver){
				alert("등록 최대 갯수를 초과했습니다.")
				return false;
			} else{
				
			}
			for(var i=0; i<obj.length; i++){
				if(obj[i].size > megaSize){
					alert("개별용량을 초과했습니다.")
					return false;
				} else{
					objSum += obj[i].size
				}
				
			}
			if(objSum > 10*megaSize){
				alert("전체용량을 초과했습니다")
				return false;
			} else{
				
			}
			
			if(obj2.length > insertOver){
				alert("등록 최대 갯수를 초과했습니다.")
				return false;
			} else{
				
			}
			for(var i=0; i<obj.length; i++){
				if(obj2[i].size > megaSize){
					alert("개별용량을 초과했습니다.")
					return false;
				} else{
					obj2Sum += obj2[i].size
				}
				
			}
			if(obj2Sum > 10*megaSize){
				alert("전체용량을 초과했습니다")
				return false;
			} else{
				
			}
			
		}); */
		
	
		
		upload = function(objName, seq, fileNumber, extDiv, eachFileSize, totalFileSize, uiType ) {
//			objName 과 seq 는 jsp 내에서 유일 하여야 함.
//			sgin: 1
//			name: 2

			var MegaSize = 1024 * 1024;
			
			var allFileSize = 0;
			var obj = $("#" + objName +"")[0].files;	
			var fileCount = obj.length;
			
			const MAX_EACH_FILE_SIZE = 1 * 1024 * 1024;		//	1M
			const MAX_TOTAL_FILE_SIZE = 2 * 1024 * 1024;	//	2M
			const MAX_TOTAL_FILE_NUMBER = 1;
			
			fileNumber = fileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : fileNumber;
			eachFileSize = eachFileSize == 0 ? MAX_EACH_FILE_SIZE : eachFileSize;
			totalFileSize = totalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : totalFileSize;
			
			if(checkUploadedTotalFileNumber(obj, fileNumber, fileCount) == false) { return false; }
			for (var i = 0 ; i < fileCount ; i++) {
				if(checkUploadedExt($("#" + objName +"")[0].files[i].name, seq, extDiv) == false) { return false; }
				if(checkUploadedEachFileSize($("#" + objName +"")[0].files[i], seq, eachFileSize) == false) { return false; }

				allFileSize += $("#" + objName +"")[0].files[i].size;
			}

			if(checkUploadedTotalFileSize(seq, allFileSize, totalFileSize) == false) { return false; }
		
			if (uiType == 1) {
				$("#ulFile" + seq).children().remove();
				
				for (var i = 0 ; i < fileCount ; i++) {
					addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
				}
			} 
		}
		
		
		
		addUploadLi = function (seq, index, name){
			
			var ul_list = $("#ulFile0");
			
			li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li = li + name;
			li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+ index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li = li + '</li>';
			
			$("#ulFile"+seq).append(li);
		}
		
		
		delLi = function(seq, index) {
			$("#li_"+seq+"_"+index).remove();
		}
		
		
		
		
	var MegaSize = 1024 * 1024;
	
	var extArray1 = new Array();
	extArray1 = ["jpg","gif","png","jpeg","bmp","tif"];
	
	checkUploadedTotalFileNumber = function(obj, allowedMaxTotalFileNumber, fileCount) {
		if(allowedMaxTotalFileNumber < fileCount){
			alert("전체 파일 갯수는 "+ allowedMaxTotalFileNumber +"개 까지 허용됩니다.");
			$("#file"+seq).val("");
			obj.val("");
			return false;
		}
	}
	
	checkUploadedEachFileSize = function(obj, seq, allowedEachFileSize) {

		if(obj.size > allowedEachFileSize){
			alert("각 첨부 파일 사이즈는 "+kbToMb(allowedEachFileSize)+"MB 이내로 등록 가능합니다.");
			$("#file"+seq).val("");
			return false;
		}
	}


	checkUploadedTotalFileSize = function(seq, totalSize, allowedTotalFileSize) {
		if(totalSize > allowedTotalFileSize){
			alert("전체 용량은 "+kbToMb(allowedTotalFileSize)+"MB를 넘을 수 없습니다.");
			$("#file"+seq).val("");
			return false;
		}
	}
	
	checkUploadedExt = function(objName, seq, div) {
		var ext = objName.split('.').pop().toLowerCase();
		var extArray = eval("extArray" + div);
		
		if(extArray.indexOf(ext) == -1) {	
			alert("허용된 확장자가 아닙니다.");
//			$("#file"+seq).val("");
			return false;
		}
	}
	
	function kbToMb(bytes) {
	    var e = Math.floor(Math.log(bytes)/Math.log(1024));

	    if(e == "-Infinity") return 0;
	    else return (bytes/Math.pow(1024, Math.floor(e))).toFixed(2).slice(0, -3);
	}
	
	
	</script>
	<!-- <script src="/resources/dmin/js/commonXdmin.js"></script> -->
<!-- end -->
    <script src="/resources/dmin/js/sidebar.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>