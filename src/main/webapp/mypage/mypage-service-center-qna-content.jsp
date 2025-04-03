<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="../assets/css/font/font.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/mypage/mypage-service-center-qna-content.css" />
<title>고객센터 / 1 : 1 문의</title>
</head>
<body>
	<%@ include file="../layout/header.jsp" %>
	
	<div id="container-wrap">
		<div id="container">
			<!-- 카테고리 include 할 위치잡음 -->
			<div id="category">
				<div class="category-div">
					<h1>고객센터</h1>
				</div>
				<div class="category-div">
					<a id="text-red" href="mypage-service-center-qna-list.mypage">1:1 문의하기</a>
				</div>
				<div class="category-div">
					<a href="mypage-service-center-faq-list.mypage">자주묻는 질문</a>
				</div>
			</div>
			<div id="content-wrap">
				<h2 id="title">고객센터 / 자주 묻는 질문</h2>
				<h6 id="content-kind">${qna.qnaCategory} 관련 문의</h6>
				<div id="question-wrap">
					<div id="question"><h2>Q</h2></div>
					<h3 id="question-title">${qna.qnaTitle}</h3>
					<p id="question-date">${qna.dateData}</p>
				</div>
				<p id="question-content">${qna.qnaContent}</p>
                <div id="answer-div">
					<div id="answer-wrap">
						<div id="answer"><h2>A</h2></div>
						<h3 id="answer-title">답변완료</h3>
						<p id="answer-date">${qna.answerDateData}</p>
					</div>
					<p id="answer-content">${qna.qnaAnswerContent}</p>
                </div>

				<div id="button-div">
					<button type="button" class="qna-button" id="update-qna" onclick="location.href='mypage-service-center-qna-update.mypage?contentId=${qna.qnaId}'">수정</button>
					<button type="button" class="qna-button" id="delete-qna" onclick="location.href='mypage-service-center-qna-delete-ok.mypage?contentId=${qna.qnaId}'">삭제</button>
					<button type="button" class="qna-button" id="list-qna" onclick="location.href='mypage-service-center-qna-list.mypage'">목록</button>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="../layout/footer.jsp" %>
</body>
<script type="text/javascript" src="../assets/js/mypage/mypage-service-center-qna-content.js"></script>
</html>




