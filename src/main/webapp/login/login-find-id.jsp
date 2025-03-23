<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../assets/css/login/login-find-id.css">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
	<div class="find-id-container">
		<h2>아이디 찾기</h2>
			<input type="hidden" id="is-complete" value="${sessionScope.isComplete}"/>
			<input type="hidden" id="mail-code" value="${sessionScope.mailCode}" />
			<input type="hidden" id="check-email" value="${sessionScope.checkEmail}"/>
		<form action="login-find-id-ok.user" method="post">
			<div>
				<span>이름</span>
				<span>*</span>
				<input id="user-name" type="text" placeholder="이름을 입력하세요" value="${sessionScope.userName}">
			</div>
			<div>
				<span>이메일</span>
				<span>*</span>
				<input type="text" placeholder="이메일을 입력하세요">
				<button type="button">이메일 인증</button>
			</div>
			<div>
				<span>인증번호</span>
				<span>*</span>
				<input type="text" placeholder="인증번호를 입력하세요">
				<button type="button">인증번호 확인</button>
			</div>
			
			<button type="button" id="find-id-button">아이디 찾기</button>
		</form>
		<div id="id-account">
			<div id="id-account-container">
				<div id="id-account-wrap">
					<button id="find-id-close-button">
						<img class="close-icon" alt="닫기" src="../assets/images/login/close.png">
					</button>
					<div>
						<img class="big-icon" alt="유저" src="../assets/images/login/user1.png">
						<h2>가입된 계정 정보</h2>
					</div>
					<div>
						<span class="h5-text-black">아이디</span><span class="h4-text-black">gradation1234</span>
					</div>
					<div>
						<span class="h5-text-black">이메일</span><span class="h4-text-black">gradation1234@gmail.com</span>
					</div>
					
					<div>
						<a href="./login-find-password.jsp">비밀번호 찾기</a>
						<a href="./login-main.user">로그인</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="../assets/js/login/login-find-id.js"></script>
</html>