<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css">
<title>Insert title here</title>
<style type="text/css">
<!--
.SkyBanner{
	position: fixed; 
	left:20px; 
	width: 130px; 
	border:1px solid red;
}
.Sky_blank{
	height: 20px; 
	border: 1px solid red;
}
.Sky_contents>ul{
	font-size: 13px;
}
.Sky_contents>ul>li{
	margin-left: -20px;
}
.Sky_info>p{
	text-align: center;
	margin-top: -15px;
}
 -->
</style>
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
	    <li><a href="index.do">홈으로</a></li>
	    <li><a href="#">인력찾기</a></li>
	    <li><a href="#">구직 정보</a>
	    	<ul>
	    		<li><a href="#">구직 등록 현황</a></li>
	    		<li><a href="#">구직 등록하기</a></li>	
	    	</ul>
	    </li>
	    <li>
	        <a href="#">게시판</a>
	        <ul>
	            <li><a href="freeBoardList.do">자유게시판</a></li>
	            <li><a href="#">후기게시판</a></li>
	        </ul>
	    </li>
	    <li><a href="#">공지사항</a></li>
	</ul>
   </nav>
   <!-- end .container --></div>
   <div class="SkyBanner">
   		<div class="Sky_blank" ></div>
   		<div class="Sky_contents">
   			<ul>
   				<li><a href="#">구인검색하기</a></li>
   				<li><a href="#">구직등록 상세현황</a></li>
   				<li><a href="#">구직등록 하기</a></li>
   			</ul>
   		</div>
   		<div class=""><h3>오늘본 공고 0</h3></div>
   		<div class="Sky_info">
   			<p>거성산업</p>
   			<p>용접분야</p>
   			<p>서울 관악구</p>
   			<p>일수 무관</p>
   		</div>
   		<div style="width:100%; text-align: center;">
   			<p>전체보기 0/0</p>
   		</div>
   		<div>
   			<div><img alt="이전공고" src="img/main/up.png" style="float: left; width: 50%;"></div>
   			<div><img alt="다음공고" src="img/main/down.png"style="width: 50%;"></div>
   		</div>
   </div>
</body>
</html>