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
	<nav class="navbar navbar-expand-lg" style="background-color: #e3f2fd;">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="#">회원관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">서비스관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">사이트관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">로그관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">시스템관리</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">시스템관리</a>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<form method="post" id="TVForm" name="TVForm" autocomplete="off">
	<input type="hidden" id="mainKey" name="mainKey">
		<!-- *Vo.jsp s -->
		<%@include file="transportVo.jsp"%>		<!-- #-> -->
		<!-- *Vo.jsp e -->
		<div class="container-fluid">
			<div class="row" style="padding-left: 20px; padding-right: 20px;">
				<div class="col-lg-2">
					<div class="flex-shrink-0 p-3 bg-white">
						<ul class="list-unstyled ps-0">
							<li class="mb-1">
								<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#codeGroup-collapse" aria-expanded="true">
									코드그룹 관리
								</button>
								<div class="collapse show" id="codeGroup-collapse">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">코드그룹 리스트</a></li>
										<li><a href="#" class="link-dark rounded">코드그룹 추가</a></li>
										<li><a href="#" class="link-dark rounded">코드그룹 수정</a></li>
									</ul>
								</div>
							</li>
							<li class="mb-1">
								<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#code-collapse" aria-expanded="true">
									코드 관리
								</button>
								<div class="collapse show" id="code-collapse">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">코드 리스트</a></li>
										<li><a href="#" class="link-dark rounded">코드 추가</a></li>
										<li><a href="#" class="link-dark rounded">코드 수정</a></li>
									</ul>
								</div>
							</li>
							<li class="mb-1">
								<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#member-collapse" aria-expanded="false">
									회원 관리
								</button>
								<div class="collapse" id="member-collapse">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">회원 리스트</a></li>
										<li><a href="#" class="link-dark rounded">회원 추가</a></li>
										<li><a href="#" class="link-dark rounded">회원 수정</a></li>
									</ul>
								</div>
							</li>
							<li class="mb-1">
								<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#book-collapse" aria-expanded="false">
									책 관리
								</button>
								<div class="collapse" id="book-collapse">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">책 리스트</a></li>
										<li><a href="#" class="link-dark rounded">책 추가</a></li>
										<li><a href="#" class="link-dark rounded">책 수정</a></li>
									</ul>
								</div>
							</li>
							<li class="mb-1">
								<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#writer-collapse" aria-expanded="false">
									작가 관리
								</button>
								<div class="collapse" id="writer-collapse">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">작가 리스트</a></li>
										<li><a href="#" class="link-dark rounded">작가 추가</a></li>
										<li><a href="#" class="link-dark rounded">작가 수정</a></li>
									</ul>
								</div>
							</li>
							<li class="mb-1">
								<button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="collapse" data-bs-target="#order-collapse" aria-expanded="false">
									주문 관리
								</button>
								<div class="collapse" id="order-collapse">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">주문 리스트</a></li>
										<li><a href="#" class="link-dark rounded">주문 추가</a></li>
										<li><a href="#" class="link-dark rounded">주문 수정</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
					<div>
				    	<button class="navbar-toggler" style="width:100%; height:80px; text-align: left;" type="button" onclick="logOut();">
				      		로그아웃 <i class="fa-solid fa-right-from-bracket"></i>
				      	</button>
					</div>
				</div>
				<div class="col-lg-10">
					<div class="row">
						<h1>주소 관리</h1>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="transportSeq">회원 번호</label>
							<input type="text" class="form-control" id="transportSeq" value="<c:out value="${item.transportSeq }"/>" readonly>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="id">멤버 번호</label>
							<input type="text" class="form-control" id="member_memberSeq" name="member_memberSeq" value="<c:out value="${item.member_memberSeq }"/>">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="transportDiv">주소 구분</label>
							<select class="form-select" id="transportDiv" name="transportDiv">
								<option value="1" <c:if test="${item.transportDiv eq 1 }">selected</c:if>>집</option>
								<option value="2" <c:if test="${item.transportDiv eq 2 }">selected</c:if>>그 외</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="phone">휴대전화번호</label>
							<input type="text" class="form-control" id="phone" name="phone" value="<c:out value="${item.phone }"/>" placeholder="ex)01012345678">
						</div>
						<div class="col-sm-5 gy-4">
							<label for="home">집전화번호</label>
							<input type="text" class="form-control" id="home" name="home" value="<c:out value="${item.home }"/>" placeholder="ex)021234567">
						</div>
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
							<input type="text" class="form-control" id="lag" name="lag" value="<c:out value="${item.lag }"/>" placeholder="위도" readonly>
						</div>
						<div class="col-sm-5 gy-4">
							<label for="lat">경도</label>
							<input type="text" class="form-control" id="lat" name="lat" value="<c:out value="${item.lat }"/>" placeholder="경도" readonly>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="delNy">삭제 여부</label>
							<select class="form-select" id="delNy" name="delNy">
								<option value="0" <c:if test="${item.delNy eq 0 }">selected</c:if>>Y</option>
								<option value="1" <c:if test="${item.delNy eq 1 }">selected</c:if>>N</option>
							</select>
						</div>
						<div class="col-sm-5 gy-4">
							<label for="useNy">사용 여부</label>
							<select class="form-select" id="useNy" name="useNy">
								<option value="0" <c:if test="${item.useNy eq 0 }">selected</c:if>>Y</option>
								<option value="1" <c:if test="${item.useNy eq 1 }">selected</c:if>>N</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5 gy-4 offset-1">
							<label for="registration">등록일</label>
							<input type="text" class="form-control" id="registration" name="registration" value="<c:out value="${item.registration }"/>" placeholder="등록일">
						</div>
						<%-- <div class="col-sm-5 gy-4">
							<label for="correctation">수정일</label>
							<input type="text" class="form-control" id="correctation" name="correctation" value="<c:out value="${item.correctation }"/>" placeholder="수정일">
						</div> --%>
					</div>
					<div style="height: 20px;"></div>
					<div class="col-lg-10 offset-1">
						<div style="float:left;">
							<button type="button" class="btn btn-secondary" id="listBtn" name="listBtn">
								<i class="fa-solid fa-bars"></i>
							</button>
						</div>
						<div style="float:right;">
							<button class="btn btn-danger" id="ueleteModalBtn" name="ueleteModalBtn" data-bs-toggle="modal" data-bs-target="#ueleteModal" type="button">
								<i class="fa-solid fa-x"></i>
							</button>
							<button class="btn btn-danger" id="deleteModalBtn" name="deleteModalBtn" data-bs-toggle="modal" data-bs-target="#deleteModal" type="button">
								<i class="fa-solid fa-trash-can"></i>
							</button>
							<button class="btn btn-success" id="updateBtn" name="updateBtn" type="button">
								<i class="fa-solid fa-bookmark"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="ueleteModal" tabindex="-1" aria-labelledby="ueleteModallabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="ueleteModalLabel">리스트에서 삭제하시겠습니까?</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        테이블 리스트에서 보이지 않게 됩니다 삭제하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
		        	<i class="fa-solid fa-x"></i> 취소
		        </button>
		        <button type="button" class="btn btn-outline-danger" id="ueleteBtn" name="ueleteBtn">
		        	<i class="fa-solid fa-trash-can"></i> 삭제
		        </button>
		      </div>
		    </div>
		  </div>
		</div>
		<div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="delectModallabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="delectModalLabel">데이터를 삭제하시겠습니까?</h5>
		        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		      </div>
		      <div class="modal-body">
		        테이블에서 데이터가 삭제 됩니다 삭제하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
		        	<i class="fa-solid fa-x"></i> 취소
		        </button>
		        <button type="button" class="btn btn-outline-danger" id="deleteBtn" name="deleteBtn">
		        	<i class="fa-solid fa-trash-can"></i> 삭제
		        </button>
		      </div>
		    </div>
		  </div>
		</div>
	</form>
	<form name="TVFormVo" id="TVFormVo" method="post">
	<!-- *Vo.jsp s -->
	<%@include file="transportVo.jsp"%>		<!-- #-> -->
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
	
		var goUrlList = "/transport/transportList";					/* #-> */
		var goUrlInsert = "/transport/transportInst";				/* #-> */
		var goUrlUpdate = "/transport/transportUpdate";				/* #-> */
		var goUrlUelete = "/transport/transportUelete";				/* #-> */
		var goUrlDelete = "/transport/transportDelete";				/* #-> */
		
		var seq = $("input:hidden[name=transportSeq]");
		
		var form = $("form[name=TVForm]"); 
		var formVo = $("form[name=TVFormVo]");
	
		/* $('input[type="checkbox"]').change(function(){
		    this.value = (Number(this.checked));
		}); */
		
		$("#transportClearBtn").on("click", function(){
			$("#zip").val('');
			$("#extraaddress").val('');
			$("#address1").val('');
			$("#address2").val('');
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