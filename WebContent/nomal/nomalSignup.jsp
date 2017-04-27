<%@page import="model.FreeBoard"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<meta name="viewport" content="width=device-width">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>무제 문서</title>
<style type="text/css">
<!--
/* 요기부터 나의 CSS */
.sideLogin{
	margin-top: 10px;
	height:120px;
	border: 2px solid #c0c0c0; 
	border-top: 3px solid #0d73d1;
	background-color: #ffffff;
}
.loginArea p{
	padding-top: 10px;
	font-size: 12px;
}
.loginArea div a{
	text-decoration:none;
}
.loginBtn{
	margin: 0 auto;
	height: 35px;
	width: 200px;
	border: 2px solid #c0c0c0; 
	background-color: #EAEAEA;
	text-align: center;
}

.search{
	padding-left: 20px;
	float: left;
	font-size: 12px;
}
.LoginJoin{
	padding-right:	20px;
	float: right;
	font-size: 12px;
	
}
.recentHelp, .recentFreeTable{
	height: auto;
	border-top: 3px solid #0d73d1;
    border-left: 1px solid #0d73d1;
    border-right: 1px solid #0d73d1;
    
}
.recentFreeTable{
margin-top: 30px;
}
.bestinfo{
 margin-left: 20px;
}
.bestinfo p{
	margin-top: 10px;
}
.searchs{
	height: 100px;
}
.searchArea{
	margin : 0 auto;
}
.searchText{
    width: 350px;
    padding: 9px;
    float: left;
    border: 3px solid #034f96;
    background: #fff;
}
.searchIcn{
    float: left;
    background: #034f96;
    cursor: pointer;
}
.table6_6{
	margin: 20px auto;
}
.table6_6 table {
	width:300%;
	margin:15px 0;
	border:0;
}
.table6_6 th {

	color:#000000;
}
.table6_6,.table6_6 th,.table6_6 td {
	font-size:10em;
	text-align:center;
	padding:4px;
	border-collapse:collapse;
}
.table6_6 th{
	border: 2px solid blue;
	border-width:1px 0 1px 0;
	font-size: 14px;
}
.table6_6 td {
	border: 1px solid #111111;
	border-width:1px 0 1px 0;
	font-size: 10px;
}
.table6_6 tr {
	border: 1px solid #ffffff;
}
.table6_6 tr:nth-child(even){
	background-color:#ffffff;
}
.n2 {
	width:400px;
}
.imgArea{
	width: 100%; 
	text-align: center;
	padding-top: 10px;
}
.imageLogo{
	width: 250px; 
	height: 110px; 
	padding-right: 40px;
}
.searchs{
	padding-top: 0px;
}
.searchsdumi{
float: left;
width: 25%;
}
.Shortcut{
	height: 100px;
	width: 100%;
}

-->

</style>
<script src="js/main/jquery.bxslider.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/nomalMain.css">
</head>

<body>
<div class="container">
  <div class="header">
  		<div class="searchArea">
  			<div class="imgArea">
  				<img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로"/>
  			</div>
  			<dir class="searchsdumi"></dir>
  			<dir class="searchs">
	  		<input type="text" alt="전체검색" class="searchText"><img src="img/main/btn_search.gif" alt="홈으로" style="float: left;"/></input>
  			</dir>
  		</div>	
    <!-- end .header --></div>
   <nav style="margin-top: 20px;">
	  <ul id="menu">
	    <li><a href="#">홈으로</a></li>
	    <li><a href="#">일자리찾기</a></li>
	    <li><a href="#">일자리등록하기</a></li>
	    <li>
	        <a href="#">게시판</a>
	        <ul>
	            <li><a href="MPMServlet?command=freeBoardList">자유게시판</a></li>
	            <li><a href="#">후기게시판</a></li>
	        </ul>
	    </li>
	    <li><a href="#">공지사항</a></li>
	</ul>
   </nav>
  <div class="side">
	<div class="sideLogin">
		<div class="loginArea">
		<%if(session.getAttribute("user")==null){%>
			<p>보다안전하게 인력몬 사이트를 이용하세요</p>
			<div class="loginBtn">
				<a href="MPMServlet?command=nomalUserLogin" clsss="loginComent"><i><span>인력몬</span>로그인</i></a>
			</div>
			<div class="loginBottom">
				<a href="" class="LoginJoin">회원가입</a>
				<span class="search">
				<a>아이디 찾기</a>
				/
				<a>비밀번호 찾기</a>
				</span>
			</div>
			<%}else{%>
			<div>${user.name}님 환영합니다. &nbsp;&nbsp;&nbsp;
			<a href="logoutForm.do">로그아웃</a></li>
  			<li><a href="#">마이 페이지</a></li>
			</div>
			<%} %>
		</div>
	</div>
	<div class="Shortcut">
		<div class="ShortcutMain">뭔가 등록할 자리임</div>
	</div>
	<div class="Advertising">
		<ul class="bxslider">
  			<li><img src="img/main/advertising/1.jpg"/></li>
  			<li><img src="img/main/advertising/2.png"/></li>
  			<li><img src="img/main/advertising/3.jpg"/></li>
		</ul>
	</div>
	<script>
	$('.bxslider').bxSlider({
		  mode: 'fade', // 옵션들을 다중으로 쓸경우 , 로 옵션들을 구분시켜줍니다. 중요포인트입니다.
		  auto: true,
		  autoHover: true,
		  pause: 7000,
		  speed: 5000,
		  controls : false
		});
	</script>
    <!-- end .sidebar1 --></div>
  <div class="content">
  	<h1>현재 준비중...</h1>
    <!-- end .content --></div>
  <div class="footer">
  	 <div class="copy">
            <address>서울특별시 강남구 역삼동 819-10 한빛교육센터 강의실,<br>
            대표연락처 : 1577-0000, FAX : 052-000-0000, E-mail : asdf@naver.com</address>
            <p>Copyrights 2017~~~~ MPMcompany All rights Reserved</p>
        </div>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>