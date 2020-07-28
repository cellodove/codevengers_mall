<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<% String mem_id = (String) session.getAttribute("mem_id"); %><%=mem_id %>님 환영합니다.

<form action="./MemberInfo.do" method="post">
<input type="hidden" name="mem_id" value="<%=mem_id%>">
<input type="submit" value="회원정보">
</form>

<nav class="navbar navbar-default">
  <div class="navbar-header">

   <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expaned="false">
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
    </button>
<p>
    <a class="navbar-brand" href="./main_form.jsp" >Codevengers Shoes</a>
</p>
  </div>
  <div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">

   <ul class="nav navbar-nav navbar-right">

    <li class="dropdown">

     <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
     접속하기
     <span class="caret"></span>
     </a>
     <ul class="dropdown-menu">
      <li class="active"><a href="http://localhost:8090/codevengers_mall/MemberLogin.do">로그인</a></li>
      
      <li><a href="http://localhost:8090/codevengers_mall/MemberWrite.do">회원가입</a></li>
      <li><a href="http://localhost:8090/codevengers_mall/MemberWrite.do">회원정보</a></li>
      <li><a href="../member_wishlist.jsp">장바구니</a></li>
     </ul>
    </li>
   </ul>
  </div> 
 </nav>
 <table border="1">
  <tr align="center" >
  
  <td width="650" height="850" style="cursor:pointer;" onclick="location.href='../item/item_category.jsp'" onmouseover="window.status='../item/item_category.jsp'">
  전체상품</td>
  
  <td width="650" height="850" style="cursor:pointer;" onclick="location.href='../board/board_category.jsp'" onmouseover="window.status='../board/board_category.jsp'">
  게시판</td>
  
  <td width="650" height="850" style="cursor:pointer;" onclick="location.href='./MemberLogin.do'" onmouseover="window.status='../member/member_login.jsp'">
  로그인</td>
  </tr>
  </table>
  <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 
 <script src="../js/bootstrap.js"></script>
</body>
</html>