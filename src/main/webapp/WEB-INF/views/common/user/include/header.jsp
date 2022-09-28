<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>


<!-- Start Header Area -->
	<header class="header_area sticky-header">
		<div class="main_menu">
			<nav class="navbar navbar-expand-lg navbar-light main_box">
				<div class="container">
					<!-- Brand and toggle get grouped for better mobile display -->
					<a class="navbar-brand logo_h" href="/" style="font-family: 'Pacifico', cursive; color: orange;">JHJ</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<c:choose>
								<c:when test="${sessSeq eq null}">
									<li class="nav-item"><a class="nav-link" href="/member/loginForm">로그인</a></li>
									<li class="nav-item"><a class="nav-link" href="/member/memberRegForm">회원가입</a></li>
									<li class="nav-item"><a class="nav-link" href="/book/bookIndex">도서 목록</a></li>
								</c:when>
								<c:otherwise>
									<li class="nav-item" style="padding-top: 10px;"><b><c:out value="${sessName }"/></b>님 안녕하세요</li>
									<li class="nav-item"><a class="nav-link" id="logoutBtn" name="logoutBtn" onclick="logOut();" style="cursor: pointer;">로그아웃</a></li>
									<li class="nav-item"><a class="nav-link" href="/book/bookIndex">도서 목록</a></li>
									<li class="nav-item submenu dropdown">
										<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">마이룸</a>
									<ul class="dropdown-menu">
										<li class="nav-item"><a class="nav-link" href="/member/memberMyRoom/">주문/배송 조회</a></li>
										<li class="nav-item"><a class="nav-link" href="/member/memberRoomModCheck">회원정보 수정</a></li>
										<li class="nav-item"><a class="nav-link" href="/member/memberRoomModPassword">비밀번호 변경</a></li>
										<li class="nav-item"><a class="nav-link" href="/transport/transportForm">나의 주소록</a></li>
									</ul>
								</li>
								</c:otherwise>
								
							</c:choose>
							
							
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
	</header>
	<div style="display:none;">
		sessSeq: <c:out value="${sessSeq }"/><br>
		sessName: <c:out value="${sessName }"/><br>
		sessId: <c:out value="${sessId }"/><br>
	</div>
	<!-- End Header Area -->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	var URL_MAIN = "/";
	function logOut(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/logoutProc"
			/* ,data : $("#formLogin").serialize() */
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
	</script>