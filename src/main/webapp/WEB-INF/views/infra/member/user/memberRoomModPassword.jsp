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
					<h1>?????????</h1>
					<nav class="d-flex align-items-center">
						<a href="/main">??????<span class="lnr lnr-arrow-right"></span></a>
						<a href="/member/memberMyRoom">?????????<span class="lnr lnr-arrow-right"></span></a>
						<a href="/member/memberRoomModPassword">??????????????????</a>
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
                	<form method="post" id="MPForm" name="MPForm">
	                	<div style="height: 20px;"></div>
						<table class="col-lg-12	border-top border-bottom">
							<tr>
								<td class="col-lg-3">
									<div class="user_name"><b><c:out value="${sessName }"/></b> ?????????</div>
								</td>
								<td>
									<span>?????? ?????????</span><br>
									<strong><c:out value="${item.accmulate }"/></strong><span><b> p</b></span>
								</td>
							</tr>
						</table>
	                	<div style="height: 20px;"></div>
	                    <h3><b>???????????? ??????</b></h3>
						<div style="height: 10px;"></div>
	                    <table class="table col-lg-12">
	                    	<input type="hidden" id="id" name="id" value="<c:out value="${item.id }"/>" >
	                    	<input type="hidden" id="memberSeq" name="memberSeq" value="<c:out value="${item.memberSeq }"/>">
	                    	<tr>
	                    		<td class="col-lg-3">
	                    			<span>?????? ????????????</span>
	                    		</td>
	                    		<td class="col-lg-3">
	                    			<input type="password" class="form-control" id="nowPassword" name="nowPassword">
	                    			<input type="hidden" id="PWCNY" name="PWCNY">
	                    		</td>
	                    		<td>
	                    		</td>
	                    		<td>
	                    		</td>
	                    	</tr>
	                    	<tr>
	                    		<td class="col-lg-3">
	                    			<span>??? ????????????</span>
	                    		</td>
	                    		<td class="col-lg-3">
	                    			<input type="password" class="form-control" id="modPassword" name="modPassword">
	                    			<input type="hidden" id="password" name="password">
	                    		</td>
	                    		<td class="col-lg-2">	
	                    		</td>
	                    		<td class="col-lg-4">
	                    			<span>8~15????????? ??????+??????+???????????? ????????? ?????? ???????????????.</span>
	                    		</td>
	                    	</tr>
	                    	<tr>
	                    		<td class="col-lg-3">
	                    			<span>??? ???????????? ??????</span>
	                    		</td>
	                    		<td class="col-lg-3">
	                    			<input type="password" class="form-control" id="checkModPassword" name="checkModPassword">
	                    		</td>
	                    		</td>
	                    		<td class="col-lg-2" style="padding-top:20px;">
	                    			<span id="checkWord" name="checkWord"></span>
	                    		</td>
	                    		<td>
	                    		</td>
	                    	</tr>
	                    	<tr>
	                    		</td>
	                    		<td>
	                    		</td>
	                    		<td>
	                    		</td>
		                    	<td>
		                    	</td>
		                    	<td>
		                    	</td>
	                    	</tr>
	                    </table>
                   		<button type="button" class="genric-btn primary col-lg-2" style="float:right;" id="PWUBtn" name="PWUBtn"> 
                   			<i class="fa-solid fa-pencil"></i> ??????
                		</button>
                    </form>
                    <div style="height: 80px;"></div>
                   	<div class="border">
                   		<div style="background-color: #F0F0F0;">
                   			<h4 style="padding: 10px;"><b><i class="fa-solid fa-circle-exclamation"></i></b> ???????????? ?????? ?????? ?????? </h4>
                   		</div>
                   		<div>
                   			<ul style="margin: 10px; padding:10px;">
                   				<li>
                   					<h5>???????????? ????????? ????????? ??????</h5>
                   				</li>
                   				<li>
	                    			<ol>
	                    				<li>8?????? ?????? 15?????? ????????? ??????</li>
	                    				<li>???????????? ???????????? ????????? ??????</li>
	                    				<li>?????? ???????????? ??????????????? ????????? ??????</li>
	                    				<li>????????? ????????? ??????</li>
	                    			</ol>
                    			</li>
                    			<li>
                    				<h5>???????????? ????????????</h5>
                    			</li>
                    			<li>
                    				<ol>
                    					<li>???????????? 8~15????????? ??????(???/????????? ??????), ??????, ??????????????? ???????????? ???????????????.</li>
										<li>??????+??????+???????????? ??? 3??? ?????? 8?????? ?????? ?????? 2??? ?????? 10?????? ?????? (???, ?????? 15??????)</li>
										<li>??????+??????+??????????????? ????????? ????????? ?????? ????????? ???????????? ?????????.</li>
										<li>????????? ????????? ??????, ??????????????? ????????? ??????????????? ?????? ?????? ????????? ????????? ????????? ??????????????????.</li>
										<li>??????????????? ??????????????? ????????? ????????????.
										    <br>~ ` ! @ # $ % ^ & * ( ) _ - + = | { [ } ] : ; < , > . ? / " ' \</li>
                    				</ol>
                    			</li>
                    			<div style="height: 20px;"></div>
                    			<li>
                    				<h5><b>?????? ????????? ???????????? ????????? 13~15????????? ??????+??????+??????????????? ??????</b>????????? ?????????,
                    				<br> ???????????? ???????????? ?????? ????????????.</h5>
                    			</li>
                   			</ul>
                   		</div>
                    </div>
                    <div style="height: 50px;"></div>
                </div>
            </div>
        </div>
    </section>
	<!-- end product Area -->
	
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	
	<script>
	var passwordChange = "/member/passwordUpdate"
	var form = $("form[name=MPForm]"); 
	
	$("#modPassword").on("focusout", function(){
		$("#password").val($("#modPassword").val());
	});
	
	$("#nowPassword").on("focusout", function(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/checkPassword"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(), "password" : $("#nowPassword").val() }/* , "autoLogin" : $("#autoLogin").is(":checked")}*/
			,success: function(response) {
				if(response.rt == "success") {
					$("#PWCNY").val('yes');
				} else {
					$("#PWCNY").val('no');
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	$('#modPassword, #checkModPassword').on('keyup', function () {
		if($("#modPassword").val() == $("#checkModPassword").val()){
			$("#checkWord").text('??????').css('color', 'orange');
		} else{
			$("#checkWord").text('?????????').css('color', 'red');
		}
		
	});
	
	$("#PWUBtn").on("click", function(){
		if($("#PWCNY").val() == 'yes'){
			if($("#checkWord").text() == '??????'){
				form.attr("action", passwordChange).submit();
			} else{
				alert("????????? ??????????????? ???????????? ????????????.")
				return false;
			}
		} else {
			alert("?????? ??????????????? ???????????? ????????????.")
			return false;
		}
		
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