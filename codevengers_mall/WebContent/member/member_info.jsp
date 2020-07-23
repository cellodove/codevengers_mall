<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>codevengers 회원정보</title>
<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/jboard.css">
</head>
<body>
	<div id="contentsArea">
		<section id="titlename">
			<h1>회원정보</h1>
			<p class="formSign">회원정보</p>
			<div id="joinForm">
				<%--hidden 값으로 임의의 게시판 번호를 호출한다.--%>
				<input type="hidden" name="num" value="<c:out value='${boardDTO.num}' />">
				<fieldset>
					<legend> 회원정보 내용</legend>
					
					<p>
						<label for="name"> 아이디 </label> <br/>
						<c:out value="${boardDTO.num}"/>
						
					</p>
					
					<p>
						<label for="subject"> 비밀번호 </label> <br/>
						<c:out value="${boardDTO.num}"/>
					</p>
					
					<p>
						<label for="name"> 이름 </label> <br/>
						<c:out value="${boardDTO.num}"/>
						
					</p>
					
					<p>
						<label for="content"> 생일 </label> <br/>
						<c:out value="${boardDTO.num}"/>
					</p>
					
					<p>
						<label for="content"> 전화번호 </label> <br/>
						<c:out value="${boardDTO.num}"/>
					</p>
					
					<p>
						<label for="content"> 우편번호 </label> <br/>
						<c:out value="${boardDTO.num}"/>
					</p>
					
					<p>
						<label for="content"> 주소 </label> <br/>
						<c:out value="${boardDTO.num}"/>
					</p>
					
					<p>
						<label for="content"> 성별 </label> <br/>
						<c:out value="${boardDTO.num}"/>
					</p>
					
					<p>
						<label for="content"> 이메일 </label> <br/>
						<c:out value="${boardDTO.num}"/>
					</p>
					
					
					<p>
						<label for="content"> 회원등급 </label> <br/>
						<c:out value="${boardDTO.num}"/>
					</p>
					
					<p>
						<label for="content"> 포인트 </label> <br/>
						<c:out value="${boardDTO.num}"/>
					</p>
					
					<p>
						<label for="content"> 이메일수신여부 </label> <br/>
						<c:out value="${boardDTO.num}"/>
					</p>
					
					<p>
						<label for="content"> 문자수신여부 </label> <br/>
						<c:out value="${boardDTO.num}"/>
					</p>
					
					<p>
						<label for="content"> 회원등록일 </label> <br/>
						<c:out value="${boardDTO.num}"/>
					</p>
					
					<%--게시판의 첨부 파일에 관해 확인한다.--%>
						
					<div class="btnJoinArea">
						
						<a href="./BoardModify.do?num=<c:out value="${boardDTO.num}"/>">
							<button type="button" class="btnOk">수정</button>
						</a> 
						<a href="./BoardDelete.do?num=<c:out value="${boardDTO.num}"/>">
							<button type="button" class="btnOk">탈퇴</button>
						</a>
						<button type="button" value="button"onclick="location.href='./BoardList.do'" class="btnOk">	목록</button>
					</div>
				</fieldset>
			</div>
		</section>
	</div>
</body>
</html>