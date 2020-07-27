<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 인증</title>
</head>
<body>

<form action="./MemberMail.do">
이메일<input type="text" name="mem_email" value="<c:out value="${mem_email}"/>">
<input type="submit" value="인증 메일보내기">
</form>

<form action="./MemberMailCheck.do">
<input type="text" name="email_code" value="<c:out value="${AuthenticationKey}"/>">
인증코드<input type="text" name="mem_email_code">
<input type="submit" value="확인">


</form>

</body>
</html>