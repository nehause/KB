<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<div class="header">
	<div class="row" style="height: 50px;">
		<div class="col-sm-2 offset-1">
			<h1>JHJ</h1>
		</div>
		<div class="col-sm-2 gy-3">
			<span><b>KB Book Management System</b></span>
		</div>
		<div class="col-sm-2 offset-3">
			<div style="float:left">
				<i class="fa-solid fa-circle-user" style="font-size:50px; padding-right: 20px;"></i>
			</div>
			<span style="text-align: center;"> admin <br> administrator </span>			
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
		<a class="navbar-brand" href="#">관리 메뉴</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link active" href="/member/memberList">회원관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="/transport/transportList">주소 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="/book/bookList">책 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="/order/orderList">주문 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="/writer/writerList">작가 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="/codeGroup/codeGroupList">코드 그룹 관리</a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" href="/code/codeList">코드 관리</a>
				</li>
			</ul>
		</div>
	</div>
</nav>