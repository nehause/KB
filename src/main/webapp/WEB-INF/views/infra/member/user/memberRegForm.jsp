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

	<!-- Start Header Area -->
	<!-- <header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					Brand and toggle get grouped for better mobile display
					<a class="navbar-brand logo_h" href="/" style="font-family: 'Pacifico', cursive; color: orange;">JHJ</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					Collect the nav links, forms, and other content for toggling
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="/">메인</a></li>
							<li class="nav-item"><a class="nav-link" href="/loginForm">로그인</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">국내도서</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="/book/bookIndex">책 목록</a></li>
									<li class="nav-item"><a class="nav-link" href="/book/bookView">책 상세</a></li>
								</ul>
							</li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">마이룸</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="/member/memberMyRoom/">주문/배송 조회</a></li>
									<li class="nav-item"><a class="nav-link" href="/member/memberRoomModCheck">회원정보 수정</a></li>
									<li class="nav-item"><a class="nav-link" href="/member/memberRoomModPassword">비밀번호 변경</a></li>
									<li class="nav-item"><a class="nav-link" href="/member/memberRoomTransportForm">나의 주소록</a></li>
								</ul>
							</li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li class="nav-item">
								<button class="search"><span class="lnr lnr-magnifier" id="search"></span></button>
							</li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="search_input" id="search_input_box">
			<div class="container">
				<form class="d-flex justify-content-between">
					<input type="text" class="form-control" id="search_input" placeholder="검색어를 입력해주세요">
					<button type="submit" class="btn"></button>
					<span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
				</form>
			</div>
		</div>
	</header> -->
	<!-- End Header Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>회원가입</h1>
					<nav class="d-flex align-items-center">
						<a href="/">메인<span class="lnr lnr-arrow-right"></span></a>
						<a href="/loginForm">회원가입</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->
	<form method="post" id="UMRForm" name="UMRForm">
		<input type="hidden" id="mainKey" name="mainKey">
		<input type="hidden" id="memberSeq" name="memberSeq" value="0">
		<section class="memberRegFormArea section_gap">
			<div class="billing_details">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h3>회원가입</h3>
                       	<div class="row mb-3">
                            <div class="col-md-4 gy-3 form-group p_star">
                                <input type="text" class="form-control" id="name" name="name" value="<c:out value="${dto.name }" />" placeholder="이름*">
                            </div>
                            <div class="col-md-1 gy-3 form-group">
                            	<span class="align-self-center">성별</span>
                            </div>
                            <div class="col-md-2 gy-3 form-group">
                                <div>
                                    <input type="radio" id="genderMan" name="gender" value="1">
                                    <label for="genderMan">남성</label>
                                </div>
                            </div>    
                            <div class="col-md-2 gy-3 form-group">
                                <div>
                                    <input type="radio" id="genderWoman" name="gender" value="2">
                                    <label for="genderWoman">여성</label>
                                </div>
                            </div>
                           </div>
                           <div class="row mb-3">
                           	<div class="col-md-4 form-group p_star">
                           		<input type="hidden" id="idAllowedNy" name="idAllowedNy" value="0">
                                <input type="text" class="form-control" id="id" name="id" value="<c:out value="${dto.id }"/>" placeholder="영대소문자, 숫자, 특수문자(-_.),4~20자리" maxlength="20" >
                            	<div class="invalid-feedback" id="idFeedback"></div>
                            </div>
                            <div class="col-md-2 form-group">
       	                        <input type="button" class="form-control genric-btn primary" id="idOverlap" name="idOverlap" value="중복확인">
   	                        </div>
                           </div>
                           <div class="row mb-3">
                           	<div class="col-md-4 form-group p_star">
                           		<input type="hidden" id="userNameAllowedNy" name="userNameAllowedNy" value="0">
                                <input type="text" class="form-control" id="userName" name="userName" value="<c:out value="${dto.userName }" />" placeholder="닉네임*">
                                <div class="invalid-feedback" id="userNameFeedback"></div>
                            </div>
                            <div class="col-md-2 form-group">
       	                        <input type="button" class="form-control genric-btn primary" id="userNameOverlap" name="userNameOverlap" value="중복확인">
   	                        </div>
                           </div>
                           <div class="row">
                            <div class="col-md-5 form-group p_star">
                                <input type="password" class="form-control" id="password" name="password" value="<c:out value="${dto.password }" />" placeholder="비밀번호*">
                            </div>
                            <div class="col-md-5 form-group p_star">
                                <input type="password" class="form-control" id="passwordCheck" name="passwordCheck" placeholder="비밀번호 확인*" onkeyup="regPasswordCk();">
                                <label><div name="checkWord" id="checkWord" style="display: none; color:red;">동일한 암호를 입력하세요.</div></label>
                            </div>
                           </div>
                           <div class="row mb-3">
                           	<div class="col-md-5 form-group p_star">
                                <input type="text" class="form-control" id="dob" name="dob" value="<c:out value="${dto.dob }" />" placeholder="ex)1999-01-23">
                                <!-- <input type="text" class="form-control" id="dob" name="dob" placeholder="생년월일 (ex:19990506)*" maxlength="8" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');"> -->
                       
                            </div>
                            <div class="col-md-5 form-group p_star">
                                <input type="text" class="form-control" id="phone" name="phone" value="<c:out value="${dto.phone }" />" placeholder="휴대폰번호 (ex:01012345678)*" maxlength="11" oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\/resources/g, '$1');">
                            </div>
                           </div>
                           <div class="row mb-3">
                            <div class="col-md-4 form-group p_star">
                                <input type="text" class="form-control" id="emailStart" name="emailStart" value="<c:out value="${dto.emailStart }"/>" placeholder="이메일*">
                            </div>
                            <span class="align-self-center" style="margin-bottom: 20px" id="emailMiddle" name="emailMiddle">@</span>
                            <div class="col-md-4 form-group p_star">
                                <input type="text" class="form-control" id="emailEnd" name="emailEnd" value="<c:out value="${dto.emailEnd }"/>" placeholder="직접입력">
                            </div>
                            <div class="col-md-3 form-group p_star">
                                <select class="country_select" id="emailLast" name="emailLast">
                                    <option value="1">직접입력</option>
                                    <option value="2">네이버</option>
                                    <option value="3">구글</option>
                                    <option value="4">카카오</option>
                                </select>
                            </div>
                            <input type="hidden" id="email" name="email" value="<c:out value="${dto.email }"/>">
                           </div>
                           <div class="row">
                            <div class="col-md-3 form-group">
                                <input type="text" class="form-control" id="zip" name="zip" value="<c:out value="${dto.zip }"/>" placeholder="우편번호">
                           	</div>
                           	<div class="col-md-2 form-group">
                                <input type="button" class="form-control genric-btn primary" id="searchTransport" name="searchTransport" value="주소검색" onclick="PostCode()">
                            </div>
                            </div>
                            <div class="row">
                            <div class="col-md-7 form-group p_star">
                                <input type="text" class="form-control" id="address1" name="address1" value="<c:out value="${dto.address1 }"/>" placeholder="주소">
                            </div>
                            <div class="col-md-2 form-group">
                                <input type="hidden" class="form-control" id="extraAddress" name="extraAddress">
                            </div>
                            <div class="col-md-7 form-group p_star">
                                <input type="text" class="form-control" id="address2" name="address2" value="<c:out value="${dto.address2 }"/>" placeholder="상세주소">
                            </div>
                           </div>
                           <div class="row" style="height: 30px;"></div>
                           <div class="row mb-5">
                            <div class="col-md-12 form-group">
                                <div class="Privacy">
                                    <span class="align-self-center" style="font-weight: bolder;">개인정보 유효기간</span>
                                </div>
                            </div>
                            <div class="col-md-2 form-group">
                                <div class="Privacy">
                                    <input type="radio" id="privacy1" name="privacy" value="1">
                                    <label for="Privacy1">1년</label>
                                </div>
                            </div>    
                            <div class="col-md-2 form-group">
                                <div class="Privacy">
                                    <input type="radio" id="privacy2" name="privacy" value="2">
                                    <label for="Privacy2">3년</label>
                                </div>
                            </div>
                            <div class="col-md-2 form-group">
                                <div class="Privacy">
                                    <input type="radio" id="privacy3" name="privacy" value="3">
                                    <label for="Privacy3">5년</label>
                                </div>
                            </div>
                            <div class="col-md-2 form-group">
                                <div class="Privacy">
                                    <input type="radio" id="privacy4" name="privacy" value="4">
                                    <label for="Privacy4">탈퇴시까지</label>
                                </div>
                            </div>
                        </div>
                           <div class="row mb-5">
                            <div class="col-md-12 form-group">
                                <div>
                                    <input type="checkbox" id="adAllReceive" name="adAllReceive" value="adAllReceive" onclick="selectAll(this);">
                                    <label for="adAllReceive" style="font-weight: bolder;">광고 전체 수신 동의</label>
                                </div>
                            </div>
                            <div class="col-md-2 form-group">
                                <div>
                                    <input type="checkbox" value="1" id="email_ctr" name="email_ctr" class="adReceive" onclick="checkSelectAll();">
                                    <label for="email_ctr">이메일 수신</label>
                                </div>
                            </div>    
                            <div class="col-md-2 form-group">
                                <div>
                                    <input type="checkbox" value="1" id="kakao_ctr" name="kakao_ctr" class="adReceive" onclick="checkSelectAll();">
                                    <label for="kakao_ctr">카카오톡 수신</label>
                                </div>
                            </div>
                            <div class="col-md-2 form-group">
                                <div>
                                    <input type="checkbox" value="1" id="sms_ctr" name="sms_ctr" class="adReceive" onclick="checkSelectAll();">
                                    <label for="sms_ctr">SMS 수신 동의</label>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="height: 40px;"></div>
                        <div class="row mb-5">
						   <div class="col-2">
						      <button type="button" class="genric-btn danger" id="cancelModalBtn" name="cancelModalBtn" data-toggle="modal" data-target="#cancelModal">
						      	<i class="fa-solid fa-xmark"></i> 취소
						      </button>
						   </div>
						   <div class="col-2 offset-8">
						     <button type="button" class="genric-btn primary" id="insertBtn" name="insertBtn">
						    	 <i class="fa-solid fa-plus"></i> 가입
						     </button>
						   </div>
						</div>
                    </div>
                </div>
             </div>
		</section>
	</form>
	<!-- start modal area -->
	<div class="modal fade" id="cancelModal" tabindex="-1" aria-labelledby="cancelModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="cancelModalLabel">돌아가시겠습니까?</h5>
	        <button type="button" class="border-0" style="background-color: white;" data-dismiss="modal"><i class="fa-solid fa-xmark fa-2x" style="color:gray"></i></button>
	      </div>
	      <div class="modal-body">
	        <span>지금까지 기입한 정보가 전부 초기화 됩니다. 돌아가시겠습니까?</span>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="genric-btn default border-0" data-dismiss="modal">닫기</button>
	        <button type="button" class="genric-btn danger" id="cancelBtn" name="cancelBtn">취소</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- end modal area -->
	
	<!-- footer Start -->
	<%@include file="../../../common/user/include/footer.jsp"%>
	<!-- footer End -->
	
	
	
	<script type="text/javascript">

		function checkSelectAll()  {

			const checkboxes = document.querySelectorAll('input[name="adReceive"]');

			const checked = document.querySelectorAll('input[name="adReceive"]:checked');

			const selectAll = document.querySelector('input[name="adAllReceive"]');
			  
			if(checkboxes.length === checked.length)  {
			  selectAll.checked = true;
			}else {
			  selectAll.checked = false;
			}
		}
		function selectAll(selectAll)  {
			const checkboxes = document.getElementsByName('adReceive');
			
			checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked
		  })
		}

	</script>
	
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbcf9729cf4cb4a9f70ddf30309fa210&libraries=services"></script>
	<script>
	    function PostCode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	                var geocoder = new daum.maps.services.Geocoder(); // 주소-좌표 변환 객체
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("extraAddress").value = '';
	                }
	                
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('zip').value = data.zonecode; // 우편번호
	                document.getElementById("address1").value = addr; // 주소
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("address2").focus();

	            }
	        }).open();
	    }
	</script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>	
	<script>
	
		var goUrlInsert = "/member/memberInst";				/* #-> */
		var goUrlLogin = "/loginForm";
		var seq = $("input:hidden[name=memberSeq]");
		var form = $("form[name=UMRForm]"); 
		var mail = $("input:hidden[name=email]");
	
		$('input[type="checkbox"]').change(function(){
		    this.value = (Number(this.checked));
		});
		
/* 		$("#transportClearBtn").on("click", function(){
			$("#zip").val('');
			$("#extraaddress").val('');
			$("#address1").val('');
			$("#address2").val('');
		});  */
		
		$("#cancelBtn").on("click", function(){
			$(location).attr("href", goUrlLogin);
		});  
		
		$("#insertBtn").on("click", function(){
				form.attr("action", goUrlInsert).submit();
		}); 
		
/*  		$("#emailStart").blur(function(){
			alert("a");
			mail();	
		});
 		
 		$("#emailEnd").blur(function(){
			alert("b");
		});
*/
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
		
		
		$("#idOverlap").on("click", function(){
			/* if(!checkId('ifmmId', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
				return false;
			} else { */
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/checkId"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val() }
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("id").classList.remove('is-invalid');
						document.getElementById("id").classList.add('is-valid');
	
						document.getElementById("idFeedback").classList.remove('invalid-feedback');
						document.getElementById("idFeedback").classList.add('valid-feedback');
						document.getElementById("idFeedback").innerText = "사용 가능한 아이디 입니다.";
						
						document.getElementById("idAllowedNy").value = 1;
						
					} else {
						document.getElementById("id").classList.remove('is-valid');
						document.getElementById("id").classList.add('is-invalid');
						
						document.getElementById("idFeedback").classList.remove('valid-feedback');
						document.getElementById("idFeedback").classList.add('invalid-feedback');
						document.getElementById("idFeedback").innerText = "사용 불가능한 닉네임 입니다";
						
						document.getElementById("idAllowedNy").value = 0;
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		
		$("#userNameOverlap").on("click", function(){
			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/checkUserName"
				/* ,data : $("#formLogin").serialize() */
				,data : { "userName" : $("#userName").val() }
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("userName").classList.remove('is-invalid');
						document.getElementById("userName").classList.add('is-valid');
	
						document.getElementById("userNameFeedback").classList.remove('invalid-feedback');
						document.getElementById("userNameFeedback").classList.add('valid-feedback');
						document.getElementById("userNameFeedback").innerText = "사용 가능한 닉네임 입니다.";
						
						document.getElementById("userNameAllowedNy").value = 1;
						
					} else {
						document.getElementById("userName").classList.remove('is-valid');
						document.getElementById("userName").classList.add('is-invalid');
						
						document.getElementById("userNameFeedback").classList.remove('valid-feedback');
						document.getElementById("userNameFeedback").classList.add('invalid-feedback');
						document.getElementById("userNameFeedback").innerText = "사용 불가능한 닉네임 입니다";
						
						document.getElementById("userNameAllowedNy").value = 0;
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