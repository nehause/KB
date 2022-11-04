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
					<form method="post" id="WVForm" name="WVForm" autocomplete="off" enctype="multipart/form-data">
						<input type="hidden" id="mainKey" name="mainKey">
						<!-- *Vo.jsp s -->
						<%@include file="writerVo.jsp"%>
						<!-- *Vo.jsp e -->
						<div class="row">
							<H1 class="offset-1">작가 관리</H1>
							<div class="col-sm-5 gy-4 offset-1">
								<label for="writerSeq">작가 번호</label>
								<input type="text" class="form-control" id="writerSeq" value="<c:out value="${item.writerSeq }"/>" placeholder="자동생성" readonly>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="writerName">이름</label>
								<input type="text" class="form-control" id="writerName" name="writerName" value="<c:out value="${item.writerName }"/>" placeholder="숫자">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="writerIntroduce">소개</label>
								<textarea class="form-control" id="writerIntroduce" name="writerIntroduce" rows="" cols=""><c:out value="${item.writerIntroduce }"/></textarea>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<c:set var="type" value="1"/>		<!-- #-> -->
					        	<c:set var="name" value="uploadWriterImage"/>		<!-- #-> -->
					        	<input type="hidden" id="<c:out value="${name }"/>MaxNumber" name="<c:out value="${name }"/>MaxNumber" value="0"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeleteSeq" name="<c:out value="${name }"/>DeleteSeq"/>
					        	<input type="hidden" id="<c:out value="${name }"/>DeletePathFile" name="<c:out value="${name }"/>DeletePathFile"/>
					            <label for="uploadWriterImage" class="form-label input-file-button">이미지첨부</label>
					 			<input class="form-control form-control-sm" id="<c:out value="${name }"/>" name="<c:out value="${name }"/>" type="file" multiple="multiple" style="display: none;" onChange="upload('<c:out value="${name }"/>', <c:out value="${type }"/>, 1, 1, 0, 0, 1);">
								<div id="<c:out value="${name }"/>Preview" class="addScroll" style="width: 150px; height: 180px; padding: 5px;">
									<c:forEach items="${writerListUploaded}" var="writerListUploaded" varStatus="statusUploaded">
										<c:if test="${writerListUploaded.type eq type }">
											<div id="imgDiv_<c:out value="${type }"/>_<c:out value="${writerListUploaded.sort }"/>" style="display: inline-block; height: 95px;">
												<img src="<c:out value="${writerListUploaded.path }"/><c:out value="${writerListUploaded.uuidName }"/>" class="rounded" width= "140px" height="175px" style="cursor:pointer;" onClick="openViewer(<c:out value="${writerListUploaded.type }"/>, <c:out value="${writerListUploaded. sort }"/>);">
												<div style="position: relative; top:-176px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv('<c:out value="${name }"/>', <c:out value="${type }"/>,<c:out value="${writerListUploaded.sort }"/>, <c:out value="${writerListUploaded.seq }"/>, '<c:out value="${writerListUploaded.path }"/><c:out value="${writerListUploaded.uuidName }"/>')">X</span></div>
											</div>
										</c:if>
									</c:forEach>
								</div>
							</div>
							
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="writerDelNy">삭제여부</label>
								<select class="form-select" id="writerDelNy" name="writerDelNy">
									<option value="0" <c:if test="${item.writerDelNy eq 0 }">selected</c:if>>N</option>
									<option value="1" <c:if test="${item.writerDelNy eq 1 }">selected</c:if>>Y</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="writerRegistration">등록일</label>
								<input type="text" class="form-control" id="writerRegistration" name="writerRegistration" value="<c:out value="${item.writerRegistration }"/>" placeholder="등록일" disabled>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="writerCorrectation">수정일</label>
								<input type="text" class="form-control" id="writerCorrectation" name="writerCorrectation" value="<c:out value="${item.writerCorrectation }"/>" placeholder="수정일" disabled>
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
	<form name="WVFormVo" id="WVFormVo" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="writerVo.jsp"%>		<!-- #-> -->
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
		var goUrlList = "/writer/writerList";					/* #-> */
		var goUrlInsert = "/writer/writerInst";				/* #-> */
		var goUrlUpdate = "/writer/writerUpdate";				/* #-> */
		var goUrlUelete = "/writer/writerUelete";				/* #-> */
		var goUrlDelete = "/writer/writerDelete";				/* #-> */
		
		var seq = $("#writerSeq");
		
		var form = $("form[name=WVForm]"); 
		var formVo = $("form[name=WVFormVo]");
		
		
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
		
		upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
			
//			objName 과 seq 는 jsp 내에서 유일 하여야 함.
//			memberProfileImage: 1
//			memberImage: 2
//			memberFile : 3

//			uiType: 1 => 이미지형
//			uiType: 2 => 파일형
//			uiType: 3 => 프로필형

			var files = $("#" + objName +"")[0].files;
			var filePreview = $("#" + objName +"Preview");
			var numbering = [];
			var maxNumber = 0;
			
			if(uiType == 1) {
				var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
				var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
				
				for(var i=0; i<tagIds.length; i++){
					var tagId = tagIds[i].getAttribute("id").split("_");
					numbering.push(tagId[2]);
				}
				
				if(uploadedFilesCount > 0){
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
				}
			} else if(uiType == 2){
				var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div > img").length;
				var tagIds = document.querySelectorAll("#" + objName + "Preview > div");

				for(var i=0; i<tagIds.length; i++){
					var tagId = tagIds[i].getAttribute("id").split("_");
					numbering.push(tagId[2]);
				}
				
				if(uploadedFilesCount > 0){
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
				}
			} else {
				// by pass
			}
			
			$("#" + objName + "MaxNumber").val(maxNumber);

			var totalFileSize = 0;
			var filesCount = files.length;
			var filesArray = [];
			
			allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
			allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
			
			if(checkUploadedTotalFileNumber(files, allowedMaxTotalFileNumber, filesCount, uploadedFilesCount) == false) { return false; }
			
			for (var i=0; i<filesCount; i++) {
				if(checkUploadedExt(files[i].name, seq, allowedExtdiv) == false) { return false; }
				if(checkUploadedEachFileSize(files[i], seq, allowedEachFileSize) == false) { return false; }

				totalFileSize += files[i].size;
				
				filesArray.push(files[i]);
			}

			if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
			
			if (uiType == 1) {
				for (var i=0; i<filesArray.length; i++) {
					var file = filesArray[i];

					var picReader = new FileReader();
				    picReader.addEventListener("load", addEventListenerCustom (objName, seq, i, file, filePreview, maxNumber));
				    picReader.readAsDataURL(file);
				}			
			} else {
				return false;
			}
			return false;
		}
		
		
		addEventListenerCustom = function (objName, type, i, file, filePreview, maxNumber) { 
			return function(event) {
				var imageFile = event.target;
				var sort = parseInt(maxNumber) + i;
				if(sort == 0){
				var divImage = "";
				divImage += '<div id="imgDiv_'+type+'_'+ sort +'" style="display: inline-block; height: 95px;">';
				divImage += '	<img src="'+ imageFile.result +'" class="rounded" width= "140px" height="175px">';
				divImage += '	<div style="position: relative; top:-176px; left:5px"><span style="color: red; cursor:pointer;" onClick="delImgDiv(0,' + type +','+ sort +')">X</span></div>';
				divImage += '</div> ';
				
				filePreview.append(divImage);
				} else {
					alert("설정되있는 사진을 취소하고 다시 올려주세요");
				}
		    };
		}
		
		
		delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
			
			$("#imgDiv_"+type+"_"+sort).remove();
			
			var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
			var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

			if(objDeleteSeq.val() == "") {
				objDeleteSeq.val(deleteSeq);
			} else {
				objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
			}
			
			if(objDeletePathFile.val() == "") {
				objDeletePathFile.val(pathFile);
			} else {
				objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
			}
		}
		
		
		addUploadLi = function (objName, type, i, name, filePreview, maxNumber){

			var sort = parseInt(maxNumber) + i;
			
			var li ="";
			li += '<input type="hidden" id="'+ objName +'Process_'+type+'_'+ sort +'" name="'+ objName +'Process" value="1">';
			li += '<input type="hidden" id="'+ objName +'Sort_'+type+'_'+ sort +'" name="'+ objName +'Sort" value="'+ sort +'">';
			li += '<li id="li_'+type+'_'+sort+'" class="list-group-item d-flex justify-content-between align-items-center">';
			li += name;
			li +='<span class="badge bg-danger rounded-pill" onClick="delLi(0,'+ type +','+ sort +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
			li +='</li>';
			
			filePreview.append(li);
		}
		
		
		delLi = function(objName, type, sort, deleteSeq, pathFile) {
			
			$("#li_"+type+"_"+sort).remove();

			var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
			var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

			if(objDeleteSeq.val() == "") {
				objDeleteSeq.val(deleteSeq);
			} else {
				objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
			}
			
			if(objDeletePathFile.val() == "") {
				objDeletePathFile.val(pathFile);
			} else {
				objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
			}
		}
		
		openViewer = function (type, sort) {
			var str = '<c:set var="tmp" value="'+ type +'"/>';
			$("#modalImgViewer").append(str);
			$("#modalImgViewer").modal("show");
		}
		
		
	// 추가 밸리데이션 체크
		
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
//				$("#file"+seq).val("");
				return false;
			}
		}


		const MAX_EACH_FILE_SIZE = 5 * 1024 * 1024;		//	5M
		const MAX_TOTAL_FILE_SIZE = 7 * 1024 * 1024;	//	7M
		const MAX_TOTAL_FILE_NUMBER = 2;				//	2
		
		function kbToMb(bytes) {
		    var e = Math.floor(Math.log(bytes)/Math.log(1024));

		    if(e == "-Infinity") return 0;
		    else return (bytes/Math.pow(1024, Math.floor(e))).toFixed(2).slice(0, -3);
		}
		
	</script>

	
	<script src="/resources/dmin/js/bootStrapSidebar.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
    <script src="/resources/dmin/js/sidebar.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>