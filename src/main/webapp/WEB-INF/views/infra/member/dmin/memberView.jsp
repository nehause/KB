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
	<title>멤버 추가</title>
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
					<form method="post" id="MVForm" name="MVForm" autocomplete="off">
						<input type="hidden" id="mainKey" name="mainKey">
						<!-- *Vo.jsp s -->
						<%@include file="memberVo.jsp"%>		<!-- #-> -->
						<!-- *Vo.jsp e -->
						<div class="row">
							<h1>멤버 관리</h1>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="memberSeq">회원 번호</label>
								<input type="text" class="form-control" id="memberSeq" value="<c:out value="${item.memberSeq }"/>" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="id">아이디</label>
								<input type="text" class="form-control" id="id" name="id" value="<c:out value="${item.id }"/>">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="password">비밀번호</label>
								<input type="text" class="form-control" id="password" name="password" value="<c:out value="${item.password }"/>" placeholder="영문(대소문자),숫자">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="name">이름</label>
								<input type="text" class="form-control" id="name" name="name" value="<c:out value="${item.name }"/>" placeholder="한글, 숫자">
							</div>
							<div class="col-sm-5 gy-4">
								<label for="userName">닉네임</label>
								<input type="text" class="form-control" id="userName" name="userName" value="<c:out value="${item.userName }"/>" placeholder="영문(대소문자), 숫자">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<div style="padding-bottom: 10px;">
									성별
								</div>
								<input type="radio" class="col-sm-1" id="genderMan" name="gender" value="1" <c:if test="${item.gender eq 1 }">checked</c:if>>
								<label for="MGenderMan">남성</label>
								<input type="radio" class="col-sm-1" id="genderWoman" name="gender" value="2" <c:if test="${item.gender eq 2 }">checked</c:if>>
								<label for="MGenderWoman">여성</label>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="dob">생일</label>
								<input type="text" class="form-control" id="dob" name="dob" value="<c:out value="${item.dob }"/>" placeholder="숫자">
							</div>
							
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="phone">휴대폰 번호</label>
								<input type="text" class="form-control" id="phone" name="phone" value="<c:out value="${item.phone }"/>" placeholder="숫자">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-3 gy-4 offset-1">
								<label for="email">이메일</label>
								<input type="text" class="form-control" id="emailStart" name="emailStart" value="<c:out value="${item.emailStart }"/>" placeholder="이메일">
							</div>
							<div class="col-1" style="margin-top: 52px; text-align: center;"><span id="emailMiddle" name="emailMiddle">@</span></div>
							<div class="col-sm-3 gy-4" style="margin-top: 48px;">
								<input type="text" class="form-control" id="emailEnd" name="emailEnd" value="<c:out value="${item.emailEnd }"/>" placeholder="직접입력">
							</div>
							<div class="col-sm-3 gy-4" style="margin-top: 48px;">
								<select class="form-select" id="emailLast" name="emailLast">
									<option value="1" <c:if test="${item.emailLast eq 1 }">selected</c:if>>직접입력</option>
									<option value="2" <c:if test="${item.emailLast eq 2 }">selected</c:if>>네이버</option>
									<option value="3" <c:if test="${item.emailLast eq 3 }">selected</c:if>>구글</option>
									<option value="4" <c:if test="${item.emailLast eq 4 }">selected</c:if>>카카오</option>
								</select>
							</div>
							<input type="hidden" id="email" name="email" value="<c:out value="${item.email }"/>">
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="zip">우편번호</label>
								<input type="text" class="form-control" id="zip" name="zip" value="<c:out value="${item.zip }"/>" placeholder="우편번호" readonly>
							</div>
							<div class="col-sm-2 gy-4" style="margin-top: 48px;">
								<label for="searchTransport"> </label>
								<button type="button" class="btn btn-success" id="searchTransport" name="searchTransport" onclick="PostCode()">
									<i class="fa-solid fa-map"></i> 주소검색
								</button>
								<button class="btn btn-warning" type="button" id="transportClearBtn" name="transportClearBtn" style="width: 40px; height:38px; margin-right: 10px;">
									<i class="fa-solid fa-arrow-rotate-right"></i>
								</button>
							</div>
							<div class="col-sm-3 gy-4">
								<label for="extraaddress">참고항목</label>
								<input type="text" class="form-control" id="extraaddress" name="extraaddress" value="" placeholder=" 참고항목" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="address1">주소</label>
								<input type="text" class="form-control" id="address1" name="address1" value="<c:out value="${item.address1 }"/>" placeholder="주소" readonly>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="address2">상세주소</label>
								<input type="text" class="form-control" id="address2" name="address2" value="<c:out value="${item.address2 }"/>" placeholder="상세주소">
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="lag">위도</label>
								<input type="text" class="form-control" id="lag" name="lag" value="" placeholder="위도" readonly>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="lat">경도</label>
								<input type="text" class="form-control" id="lat" name="lat" value="" placeholder="경도" readonly>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<div style="padding-bottom: 10px;">
		                            <span>개인정보 유효기간</span>
		                        </div>
		                        <input type="radio" class="col-sm-1" id="privacy1" name="privacy" value="1" <c:if test="${item.privacy eq 1 }">checked</c:if>>
		                        <label for="privacy1">1년</label>
		                   
		                        <input type="radio" class="col-sm-1" id="privacy2" name="privacy" value="2" <c:if test="${item.privacy eq 2 }">checked</c:if>>
		                        <label for="privacy2">3년</label>
		                      
		                        <input type="radio" class="col-sm-1" id="privacy3" name="privacy" value="3" <c:if test="${item.privacy eq 3 }">checked</c:if>>
		                        <label for="privacy3">5년</label>
		               
		                        <input type="radio" class="col-sm-1" id="privacy4" name="privacy" value="4" <c:if test="${item.privacy eq 4 }">checked</c:if>>
		                        <label for="privacy4">탈퇴시까지</label>
		                      </div>
							<div class="col-sm-5 gy-4">
	                            <div style="padding-bottom: 10px;">
	                                 <input type="checkbox" id="adAllReceive" name="adAllReceive" value="adAllReceive" onclick="selectAll(this);">
	                                 <label for="adAllReceive" style="font-weight: bolder;">광고 전체 수신 동의</label>
	                             </div>
	                             <div style="display:inline;">
	                                 <input type="checkbox" id="email_ctr" name="email_ctr" value="1" class="adReceive" onclick="checkSelectAll();" <c:if test="${item.email_ctr eq 1 }">checked</c:if>>
	                                 <label for="email_ctr">이메일 수신</label>
	                             </div>
	                             <div style="display:inline; margin-left: 20px;">
	                                 <input type="checkbox" id="kakao_ctr" name="kakao_ctr" value="1" class="adReceive" onclick="checkSelectAll();" <c:if test="${item.kakao_ctr eq 1 }">checked</c:if>>
	                                 <label for="kakao_ctr">카카오톡 수신</label>
	                             </div>
	                             <div style="display:inline; margin-left: 20px;">
	                                 <input type="checkbox" id="sms_ctr" name="sms_ctr" value="1" class="adReceive" onclick="checkSelectAll();" <c:if test="${item.sms_ctr eq 1 }">checked</c:if>>
	                                 <label for="sms_ctr">SMS 수신 동의</label>
	                             </div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="memberDelNy">삭제 여부</label>
								<select class="form-select" id="memberDelNy" name="memberDelNy">
									<option value="0" <c:if test="${item.memberDelNy eq 0 }">selected</c:if>>N</option>
									<option value="1" <c:if test="${item.memberDelNy eq 1 }">selected</c:if>>Y</option>
								</select>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="memberUseNy">사용 여부</label>
								<select class="form-select" id="memberUseNy" name="memberUseNy">
									<option value="0" <c:if test="${item.memberUseNy eq 0 }">selected</c:if>>N</option>
									<option value="1" <c:if test="${item.memberUseNy eq 1 }">selected</c:if>>Y</option>
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="registration">등록일</label>
								<input type="text" class="form-control" id="registration" name="registration" value="<c:out value="${item.registration }"/>" placeholder="등록일" disabled>
							</div>
							<div class="col-sm-5 gy-4">
								<label for="correctation">수정일</label>
								<input type="text" class="form-control" id="correctation" name="correctation" value="<c:out value="${item.correctation }"/>" placeholder="수정일" disabled>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-5 gy-4 offset-1">
								<label for="accmulate">적립금</label>
								<input type="text" class="form-control" id="accmulate" name="accmulate" value="<c:out value="${item.accmulate }"/>" placeholder="숫자">
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
	<form name="MVFormVo" id="MVFormVo" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="memberVo.jsp"%>		<!-- #-> -->
	<!-- *Vo.jsp e -->
	</form>
	<script type="text/javascript">
		function checkSelectAll()  {

			const checkboxes = document.querySelectorAll('input[class="adReceive"]');

			const checked = document.querySelectorAll('input[class="adReceive"]:checked');

			const selectAll = document.querySelector('input[name="adAllReceive"]');
			  
			if(checkboxes.length === checked.length)  {
			  selectAll.checked = true;
			}else {
			  selectAll.checked = false;
			}
		}
		function selectAll(selectAll)  {
			const checkboxes = document.getElementsByClassName('adReceive');
			
			checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked
		  })
		}
	</script>
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
			
			
			document.getElementById("memberForm").submit;
			return false;
			
		}
	
	</script> -->
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
	                    document.getElementById("extraaddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("extraaddress").value = '';
	                }
	                
	                geocoder.addressSearch(data.address, function(results, status) {
	                    // 정상적으로 검색이 완료됐으면
	                    if (status === daum.maps.services.Status.OK) {

	                        var result = results[0]; //첫번째 결과의 값을 활용

	                        // 해당 주소에 대한 좌표를 받아서
	                        var coords = new daum.maps.LatLng(result.y, result.x);
	    	                document.getElementById("lag").value = coords.getLat(); // 위도 
	    	                document.getElementById("lat").value = coords.getLng(); // 경도
	    	                
//	    	                //위의 것과 같다
//	    	                document.getElementById("lag").value = result[0].y; // 위도
//	    	                document.getElementById("lat").value = result[0].x; // 경도
	    	                
	                    }
	                });
	               
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
	
		var goUrlList = "/member/memberList";					/* #-> */
		var goUrlInsert = "/member/memberInst";				/* #-> */
		var goUrlUpdate = "/member/memberUpdate";				/* #-> */
		var goUrlUelete = "/member/memberUelete";				/* #-> */
		var goUrlDelete = "/member/memberDelete";				/* #-> */
		
		var seq = $("input:hidden[name=memberSeq]");
		
		var form = $("form[name=MVForm]"); 
		var formVo = $("form[name=MVFormVo]");
		var mail = $("input:hidden[name=email]");
	
		$('input[type="checkbox"]').change(function(){
		    this.value = (Number(this.checked));
		});
		
		$("#transportClearBtn").on("click", function(){
			$("#zip").val('');
			$("#extraaddress").val('');
			$("#address1").val('');
			$("#address2").val('');
		}); 
		
		 function setMail() {
			const emailStart = $("#emailStart").val();
			const emailMiddle = $("#emailMiddle").text();
			const emailEnd = $("#emailEnd").val();
			if(emailStart != "" && emailEnd != "") {
				mail.val(emailStart+emailMiddle+emailEnd);
			}
		};
		
		$("#emailStart").focusout(function(){
			setMail()
		});
		$("#emailEnd").focusout(function(){
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