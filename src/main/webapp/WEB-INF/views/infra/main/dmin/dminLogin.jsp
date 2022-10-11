<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html lang="zxx" class="no-js">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>로그인</title>
	<link rel="stylesheet" href="/resources/template/karma/css/linearicons.css">
	<link rel="stylesheet" href="/resources/template/karma/css/font-awesome.min.css">
	<link rel="stylesheet" href="/resources/template/karma/css/themify-icons.css">
	<link rel="stylesheet" href="/resources/template/karma/css/bootstrap.css">
	<link rel="stylesheet" href="/resources/template/karma/css/owl.carousel.css">
	<link rel="stylesheet" href="/resources/template/karma/css/nice-select.css">
	<link rel="stylesheet" href="/resources/template/karma/css/nouislider.min.css">
	<link rel="stylesheet" href="/resources/template/karma/css/ion.rangeSlider.css" />
	<link rel="stylesheet" href="/resources/template/karma/css/ion.rangeSlider.skinFlat.css" />
	<link rel="stylesheet" href="/resources/template/karma/css/magnific-popup.css">
	<link rel="stylesheet" href="/resources/template/karma/css/main.css">
	<script src="https://kit.fontawesome.com/dca973ab96.js" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
	<!-- cdn = 온라인 해석기 --> 
</head>
<body>

<!-- start -->

<form>
	<div class="container">
		<div class="row" style="height: 160px;"></div>
		<div class="row justify-content-center">
			<div class="col-1">
				<h1 style="text-align: center; font-family: 'Pacifico', cursive; color:orange;">JHJ</h1>
			</div>
		</div>
		<div class="row" style="height: 80px;"></div>
		<form id="DLForm" name="DLForm">
			<div>
				<div class="mb-3 row">
				    <div class="col-sm-4 offset-4">
				    	<input type="text" class="form-control" id="id" name="id" value="<c:out value="${dto.id }" />">
				    </div>
				</div>
				<div class="mb-3 row">
				    <div class="col-sm-4 offset-4">
				    	<input type="password" class="form-control" id="password" name="password" value="<c:out value="${dto.password }" />" onkeyup="enterLogin()">
				    </div>
				</div>
				<div class="mb-3 row gx-1">
					<div class="col-sm-2 offset-4 form-check form-switch">
					  <input class="form-check-input" type="checkbox" role="switch" id="loginAuto">
					  <label class="form-check-label" for="loginAuto">Auto login</label>
					</div>
				</div>
				<div class="mb-3 row">
					<button type="button" class="col-sm-4 offset-4 btn btn-secondary btn-lg" id="loginBtn" name="loginBtn">login</button>
				</div>
			</div>
		</form>
	</div>
</form>
	<script type="text/javascript">
	function enterLogin() {
        if (window.event.keyCode == 13) {
            // 엔터키가 눌렸을 때 실행할 내용
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/loginProc"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val(), "password" : $("#password").val() }/* , "autoLogin" : $("#autoLogin").is(":checked")}*/
				,success: function(response) {
					if(response.rt == "success") {
						/* if(response.changePwd == "true") {
							location.href = URL_CHANGE_PWD_FORM;
						} else {
							location.href = URL_MAIN;
						} */
						location.href = URL_MAIN;
						
					} else {
						alert("회원없음");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
        }
	}
	
	</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	
	<script>
	var URL_MAIN = "/codeGroup/codeGroupList";
	
	$("#loginBtn").on("click", function(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(), "password" : $("#password").val() }/* , "autoLogin" : $("#autoLogin").is(":checked")}*/
			,success: function(response) {
				if(response.rt == "success") {
					/* if(response.changePwd == "true") {
						location.href = URL_CHANGE_PWD_FORM;
					} else {
						location.href = URL_MAIN;
					} */
					location.href = URL_MAIN;
					
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	</script>

<!-- end -->
<script src="/resources/template/karma/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
	 crossorigin="anonymous"></script>
	<script src="/resources/template/karma/js/vendor/bootstrap.min.js"></script>
	<script src="/resources/template/karma/js/jquery.ajaxchimp.min.js"></script>
	<script src="/resources/template/karma/js/jquery.nice-select.min.js"></script>
	<script src="/resources/template/karma/js/jquery.sticky.js"></script>
	<script src="/resources/template/karma/js/nouislider.min.js"></script>
	<script src="/resources/template/karma/js/countdown.js"></script>
	<script src="/resources/template/karma/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/template/karma/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/resources/template/karma/js/gmaps.min.js"></script>
	<script src="/resources/template/karma/js/main.js"></script>
</body>
</html>