<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="/resources/images/fav_jhj.png">
	<!-- Author Meta -->
	<meta name="author" content="CodePixar">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>JHJ Shop</title>
	<!--
		CSS
		============================================= -->
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
	<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
</head>

<body>

	<!-- pagination s -->
	<%@include file="../../../common/user/include/header.jsp"%>
	<!-- pagination e -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>마이룸</h1>
					<nav class="d-flex align-items-center">
						<a href="main.html">메인<span class="lnr lnr-arrow-right"></span></a>
						<a href="memberRoomForm.html">마이룸<span class="lnr lnr-arrow-right"></span></a>
						<a href="#">회원정보수정</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	
	<!--================Blog Area =================-->
    <section class="blog_area">
        <div class="container">
            <div class="row">
            
            	<!-- myRoomSidebar Start -->
     			<%@include file="../../../common/user/include/myRoomSidebar.jsp"%>
     			<!-- myRoomSidebar End -->
            	
                <div class="col-lg-9">
                	<form name="memberModCheckForm" method="post" id="memberModCheckForm">
	                	<div style="height: 20px;"></div>
						<table class="col-lg-12	border-top border-bottom">
							<tr>
								<td class="col-lg-3">
									<div class="user_name"><b><c:out value="${sessName }"/></b> 회원님</div>
								</td>
								<td>
									<span>통합 포인트</span><br>
									<strong><c:out value="${item.accmulate }"/></strong><span><b> p</b></span>
								</td>
							</tr>
						</table>
	                	<div style="height: 20px;"></div>
	                    <h3><b>비밀번호 재확인</b></h3>
	                    <hr>
	                    <span>
	                    회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 한 번 확인합니다.
						<br>비밀번호는 다른 사람에게 노출되지 않도록 주의해주시기 바랍니다.
						</span>
						<div style="height: 10px;"></div>
	                    <table class="table col-lg-12">
	                    	<tr>
	                    		<td class="col-lg-2">
	                    			<span>아이디</span>
	                    		</td>
	                    		<td>
	                    			<input type="text" class="form-control col-md-4" id="id" name="id" value="<c:out value="${item.id }"/>" readonly>
	                    		</td>
	                    	</tr>
	                    	<tr>
	                    		<td class="col-lg-2">
	                    			<span>비밀번호</span>
	                    		</td>
	                    		<td>
	                    			<input type="password" class="form-control col-md-4" id="password" name="password" value="" onkeyup="enterCheck();">
	                    		</td>
	                    	</tr>
	                    </table>
                    	<button type="button" class="genric-btn primary col-lg-2" style="float:right;" id="passwordCheckBtn"> 확인 </button>
                    </form>
                </div>
            </div>
        </div>
    </section>
	<!-- end product Area -->
	
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	<script type="text/javascript">
	
	function enterCheck() {
        if (window.event.keyCode == 13) {
            // 엔터키가 눌렸을 때 실행할 내용
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/checkPassword"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val(), "password" : $("#password").val() }/* , "autoLogin" : $("#autoLogin").is(":checked")}*/
				,success: function(response) {
					if(response.rt == "success") {
						
						location.href = URL_MOD;
						
					} else {
						alert("비밀번호가 틀렸습니다");
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
	var URL_MOD = "/member/memberRoomModForm";
	
	$("#passwordCheckBtn").on("click", function(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/checkPassword"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(), "password" : $("#password").val() }/* , "autoLogin" : $("#autoLogin").is(":checked")}*/
			,success: function(response) {
				if(response.rt == "success") {
					
					location.href = URL_MOD;
					
				} else {
					alert("비밀번호가 틀렸습니다");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	</script>
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