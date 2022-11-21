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
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
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
					<h1>로그인/회원가입</h1>
					<nav class="d-flex align-items-center">
						<a href="/main">메인<span class="lnr lnr-arrow-right"></span></a>
						<a href="/member/loginForm">로그인/회원가입</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Login Box Area =================-->
	<section class="login_box_area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<img class="img-fluid" src="/resources/template/karma/img/login.jpg" alt="">
						<div class="hover">
							<h4>이 사이트에 처음 오셨나요?</h4>
							<p>이 사이트는 karma 템플릿을 이용한 프로젝트로 이용하시려면 회원가입 바랍니다.</p>
							<a class="primary-btn" href="/member/memberRegForm">회원 가입</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>로그인 해주세요</h3>
						<form class="row login_form" method="post" id="loginForm" name="loginForm" novalidate="novalidate" onsubmit="return false">
							<div class="col-md-12 form-group">
								<input type="text" class="form-control" id="id" name="id" value="<c:out value="${dto.id }" />user" placeholder="아이디" onfocus="this.placeholder = ''" onblur="this.placeholder = '아이디'">
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="password" name="password" value="<c:out value="${dto.password }" />1234" placeholder="비밀번호" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'" onkeyup="enterLogin()">
							</div>
							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="autoLogin" name="autoLogin">
									<label for="loginMaintain">로그인 상태 유지</label>
								</div>
							</div>
							<div class="col-md-12 form-group">
								<button type="button" id="loginBtn" name="loginBtn" class="primary-btn">로그인</button>
								<a href="#findIdModal" data-toggle="modal" data-target="#findIdModal" style="margin-top: 10px; margin-bottom: 10px;">아이디 찾기</a>
								<button type="button" id="kakaoBtn" name="kakaoBtn" class="primary-btn genric-btn warning">
									<i class="fa-solid fa-comment"></i> 카카오
								</button>
								<button type="button" id="naverBtn" class="primary-btn genric-btn naver">
									<i class="fa-solid fa-n"></i> 네이버
								</button>
								<button type="button" value="kakao" class="primary-btn genric-btn danger">
									<i class="fa-brands fa-google"></i> 구글
								</button>
								<button type="button" value="kakao" class="primary-btn genric-btn facebook">
									<i class="fa-brands fa-square-facebook"></i> 페이스북
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<form name="form">
		<input type="hidden" name="name"/>
		<input type="hidden" name="snsId"/>
		<input type="hidden" name="phone"/>
		<input type="hidden" name="email"/>
		<input type="hidden" name="gender"/>
		<!-- <input type="hidden" name="dob"/> -->
		<input type="hidden" name="token"/>
		<input type="hidden" name="access_token">
	</form>
	
	<!-- start modal area -->
	<section class="product_description_area" style="margin-top: 0px; padding-bottom: 0px;">
		<div class="modal fade" id="findIdModal" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<ul class="nav nav-tabs col-lg-12" id="myTab" role="tablist">
							<li class="col-lg-10">
								<h3 style="margin-top: 10px; margin-bottom: 10px; text-align: left;">아이디 찾기</h3>
							</li>
							<li>
								<button type="button" class="border border-0" style="vertical-align: middle; background-color: #E8F0F2;" data-dismiss="modal" aria-label="Close"><i class="fa-solid fa-x fa-2x"></i></button>
							</li>
							<li class="nav-item col-lg-5" style="margin:0px;">
								<a class="nav-link active" id="home-tab" data-toggle="tab" href="#findId" role="tab" aria-controls="findId" aria-selected="true">전화번호로 찾기</a>
							</li>
							<li class="nav-item col-lg-5">
								<a class="nav-link" id="writer-tab" data-toggle="tab" href="#findPassword" role="tab" aria-controls="findPassword" aria-selected="false">이메일로 찾기</a>
							</li>
						</ul>
					</div>
					<div class="modal-body">
						<div class="tab-content" id="findIDPasswordContent">
							<div class="tab-pane fade show active" id="findId" role="tabpanel" aria-labelledby="findIdTab">
								<form method="post" id="FIPForm" name="FIPForm">
									<h5>등록된 휴대폰 번호로 찾기</h5>
									<input type="text" class="form-control my-2" id="FIPName" name="FIPName" placeholder="이름">
									<input type="text" class="form-control my-2" id="FIPhone" name="FIPhone" placeholder="전화번호 ex)01012345678">
									<div style="height: 30px;"></div>
								</form>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary" id="FIPBtn" name="FIPBtn" data-toggle="modal" data-target="#FIRModal">확인</button>
									<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
								</div>
							</div>
							<div class="tab-pane fade" id="findPassword" role="tabpanel" aria-labelledby="findPasswordTab">
								<form method="post" id="FIEForm" name="FIEForm">
									<h5>등록된 이메일로 찾기</h5>
									<input type="text" class="form-control my-2" id="FIEName" name="FIEName" placeholder="이름">
									<div class="row">
			                            <div class="col-md-4 form-group">
			                                <input type="text" class="form-control" id="emailStart" name="emailStart" placeholder="이메일*">
			                            </div>
			                            <span class="align-self-center" style="margin-bottom: 20px" id="emailMiddle" name="emailMiddle">@</span>
			                            <div class="col-md-4 form-group">
			                                <input type="text" class="form-control" id="emailEnd" name="emailEnd" placeholder="직접입력">
			                            </div>
			                            <div class="col-md-3 form-group" style="padding-left: 12px;">
			                                <select class="country_select" id="emailLast" name="emailLast" style="width: 76px;">
			                                    <option value="1">직접입력</option>
			                                    <option value="2">네이버</option>
			                                    <option value="3">구글</option>
			                                    <option value="4">카카오</option>
			                                </select>
			                            </div>
			                            <input type="hidden" id="email" name="email">
		                            </div>
								</form>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary" id="FIEBtn" name="FIEBtn" data-toggle="modal" data-target="#FIRModal">확인</button>
									<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end modal area -->
	
	<!--Modal start-->
	<div class="modal fade" id="FIRModal" tabindex="-1" aria-labelledby="FIRModalLabel" aria-hidden="true">
	  <div class="modal-dialog modal-dialog-centered">
	    <div class="modal-content">
	      <div class="modal-body" id="FIRModalText" name="FIRModalText" style="font-size: large; text-align: center;">
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">확인</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- Modal End -->
	
	
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	<!-- 로그인 스크립트 -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
	
	<script>
	/* naver login test s */
   		
   		/* var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "sDzp_r8VgNgKzkpNv7e6",
				callbackUrl: "http://localhost:8080/userLogin",
				isPopup: false,
				loginButton: {color: "green", type: 3, height: 70} 
			}
		); */
   		/* var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "sDzp_r8VgNgKzkpNv7e6",
				callbackUrl: "http://localhost:8080/member/loginForm",
				isPopup: false,
				callbackHandle: true
				//loginButton: {color: "green", type: 3, height: 70} 
			}
		);

    	naverLogin.init(); */
   		/*  window.addEventListener('load', function () {
   			naverLogin.getLoginStatus(function (status) {
   				if (status) {
//   					 (6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. 
   					setLoginStatus();
   				}
   			});
   		}); */
   		
   		
   		var naverLogin = new naver.LoginWithNaverId(
				{
					clientId: "sDzp_r8VgNgKzkpNv7e6",
					callbackUrl: "http://localhost:8080/member/loginForm",
//					clientId: "_Ep2NDg_yNG1Xouf65sw",
//					callbackUrl: "http://3.35.48.216/member/loginForm",
					isPopup: true
				}
			);
   		
   		/* $("#naverBtn").on("click", function(){ //이 함수는 네이버 버튼을 두번 클릭해야하는 함수
   		
			naverLogin.init();
			
			naverLogin.getLoginStatus(function (status) {
				
				if(!status)
					naverLogin.authorize();
                else
                    setLoginStatus();  //하늘님 메소드 실행 -> Ajax
			});
   		}); */ 
   		
   		naverLogin.init();
   		
   		$("#naverBtn").on("click", function() {
   			naverLogin.getLoginStatus(function (status) { // 이 함수는 아래 함수와 연동되어 네이버 버튼을 한번만 누르면 되는 함수
  				if (!status) {
  					naverLogin.authorize();
  				} else {
					setLoginStatus();
  				}
  			});
		})
   		
		window.addEventListener('load', function () {
			if (naverLogin.accessToken != null) { 
	  			naverLogin.getLoginStatus(function (status) {
	  				if (status) {
	  					setLoginStatus();
	  				}
  				});
			}
   		});
   		
   		function setLoginStatus() {
   			
			if (naverLogin.user.gender == 'M'){
				$("input[name=gender]").val(1);
			} else {
				$("input[name=gender]").val(2);
			} 
			
			$.ajax({
				async: true
				,cache: false
				,type:"POST"
				,url: "/member/naverLoginProc"
				,data: {"name": naverLogin.user.name, "id": "네이버로그인", "phone": naverLogin.user.mobile, "email": naverLogin.user.email, "gender": $("input[name=gender]").val(), "dob": naverLogin.user.birthyear+"-"+naverLogin.user.birthday, "userName": naverLogin.user.name,"name": naverLogin.user.name}
				,success : function(response) {
					if (response.rt == "fail") {
						alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
						return false;
					} else {
						window.location.href = "/main";
					}
				},
				error : function(jqXHR, status, error) {
					//alert("알 수 없는 에러 [ " + error + " ]");
				}
			});
		}
    	/* naver login test e */
    </script>
	
	<script type="text/javascript">
	
	var URL_MAIN = "/main";
	
	function enterLogin() {
        if (window.event.keyCode == 13) {
            // 엔터키가 눌렸을 때 실행할 내용
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/loginProc"
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
	
	$("#loginBtn").on("click", function(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
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
	<script>
	var mail = $("input:hidden[name=email]");
	
	function setMail() {
		const emailStart = $("#emailStart").val();
		const emailMiddle = $("#emailMiddle").text();
		const emailEnd = $("#emailEnd").val();
		if(emailStart != "" && emailEnd != "") {
			mail.val(emailStart+emailMiddle+emailEnd);
		}
	};
	
	$("#emailStart").change(function(){
		setMail()
	});
	
	//직접 입력용
	$("#emailEnd").change(function(){
		setMail()
	});
	
	$(function(){
		$(document).ready(function(){
			$('select[name=emailLast]').change(function() {
				if($(this).val()=="1"){				
					$('#emailEnd').val("");		
					$("#emailEnd").attr("readonly", false);
					setMail();
				} else if($(this).val()=="2") {				
					$('#emailEnd').val('naver.com');				
					$("#emailEnd").attr("readonly", true);
					setMail();
				} else if($(this).val()=="3") {				
					$('#emailEnd').val('google.com');				
					$("#emailEnd").attr("readonly", true);
					setMail();
				} else {		
					$('#emailEnd').val('kakao.com');				
					$("#emailEnd").attr("readonly", true);
					setMail();
				}
			});	
		});
	});	
	
	</script>

	<script>
	Kakao.init('fbcf9729cf4cb4a9f70ddf30309fa210'); // localhost 
	console.log(Kakao.isInitialized()); 
//  Kakao.init('28ebc8834117458183ac33ed6cbb0505'); // server
//	console.log(Kakao.isInitialized());  
	
	$("#kakaoBtn").on("click", function() {
		/* Kakao.Auth.authorize({
		      redirectUri: 'http://localhost:8080/member/kakaoCallback',
		    }); */
		
		Kakao.Auth.login({
		      success: function (response) {
		        Kakao.API.request({
		          url: '/v2/user/me',
		          success: function (response) {
		        	  
		        	  var accessToken = Kakao.Auth.getAccessToken();
		        	  Kakao.Auth.setAccessToken(accessToken);

		        	  var account = response.kakao_account;
		        	  
		        	  console.log(response)
		        	  console.log("email : " + account.email);
		        	  console.log("name : " + account.name);
		        	  console.log("nickname : " + account.profile.nickname);
		        	  console.log("picture : " + account.gender);
		        	  console.log("picture : " + account.birthday);
		        	  console.log("picture : " + account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
	        	  
  	        	  $("input[name=snsId]").val("카카오로그인");
  	        	  $("input[name=name]").val(account.profile.nickname);
  	        	  $("input[name=phone]").val(account.profile.phone_number);
  	        	  $("input[name=email]").val(account.email);
  	        	  //$("input[name=dob]").val(account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
  	        	  $("input[name=token]").val(accessToken);
  	        	  
  	        	  if (account.gender === "male") {
  	        		  $("input[name=gender]").val(1);
          		  } else {
          			  $("input[name=gender]").val(2);
     			  } 
  	        	  
  	        	 /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
				
  	        	  $.ajax({
					async: true
					,cache: false
					,type:"POST"
					,url: "/member/kakaoLoginProc"
					,data: {"name": $("input[name=name]").val(), "id": "카카오로그인", "phone": $("input[name=phone]").val(), "email": $("input[name=email]").val(), "gender": $("input[name=gender]").val(), /* "dob": $("input[name=dob]").val(), */ "token": $("input[name=token]").val()}
					,success : function(response) {
						if (response.rt == "fail") {
							alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
							return false;
						} else {
							window.location.href = "/main";
						}
					},
					error : function(jqXHR, status, error) {
						alert("알 수 없는 에러 [ " + error + " ]");
					}
				});
		          },
		          fail: function (error) {
		            console.log(error)
		          },
		        })
		      },
		      fail: function (error) {
		        console.log(error)
		      },
		    })
	});
	</script>
	
	<!-- 로그인 스크립트 -->

	
	<!-- 아이디 찾기 스트립트 -->
	
	<script>
	$("#FIPBtn").on("click", function(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/findIdPhone"
			/* ,data : $("#formLogin").serialize() */
			,data : { "name" : $("#FIPName").val(), "phone" : $("#FIPhone").val() }/* , "autoLogin" : $("#autoLogin").is(":checked")}*/
			,success: function(response) {
				if(response.rt == "success") {
					$('#findIdModal').modal('hide');
					document.getElementById("FIRModalText").innerText = "아이디는 "+ response.id +" 입니다";
				} else {
					$('#findIdModal').modal('hide');
					document.getElementById("FIRModalText").innerText = "해당하는 정보의 아이디가 존재하지 않습니다.";
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	$("#FIEBtn").on("click", function(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/findIdEmail"
			/* ,data : $("#formLogin").serialize() */
			,data : { "name" : $("#FIEName").val(), "email" : $("#email").val() }/* , "autoLogin" : $("#autoLogin").is(":checked")}*/
			,success: function(response) {
				if(response.rt == "success") {
					$('#findIdModal').modal('hide');
					document.getElementById("FIRModalText").innerText = "아이디는 "+response.id+" 입니다";
				} else {
					$('#findIdModal').modal('hide');
					document.getElementById("FIRModalText").innerText = "해당하는 정보의 아이디가 존재하지 않습니다.";
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
	<!-- <script src="/resources/template/karma/js/countdown.js"></script> -->
	<script src="/resources/template/karma/js/jquery.magnific-popup.min.js"></script>
	<script src="/resources/template/karma/js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="/resources/template/karma/js/gmaps.min.js"></script>
	<script src="/resources/template/karma/js/main.js"></script>
</body>

</html>