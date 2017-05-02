<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css">
<link rel="stylesheet" type="text/css" href="css/main/SkyBanner.css">
<title>Insert title here</title>
<style type="text/css">
.contents_top{
	padding-top: 5px;
	border-bottom: 1px solid #b5b5b5;
}
.contents_top>span{
	font-size: 12px;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="container">
		<div class="header">
	  		<div class="searchArea">
	  			<div class="imgArea">
	  				<img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로"/>
	  			</div>
	  		</div>	
	    <!-- end .header --></div>
	    	<nav style="margin-top: 20px;">
		  <ul id="menu">
		    <li><a href="index.do">홈으로</a></li>
		    <li><a href="#">인력찾기</a></li>
		    <li><a href="comBoardList.do">구직 정보</a>
		    	<ul>
		    		<li><a href="comBoardList.do">구직 등록 현황</a></li>
		    		<li><a href="comWriteForm.do">구직 등록하기</a></li>	
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
	     <div class="SkyBanner">
	   		<div class="Sky_blank" ></div>
	   		<div class="Sky_contents">
	   			<ul>
	   				<li><a href="#">구인검색하기</a></li>
	   				<li><a href="comBoardList.do">구직등록 현황</a></li>
	   				<li><a href="#">구직등록 하기</a></li>
	   			</ul>
	   		</div>
	   		<div class="Sky_topinfo"><span>오늘본 공고 <a href="">0</a></span></div>
	   		<div class="Sky_info">
	   			<a href="">
		   			<p class="Sky_info_p" id="Sky_info_p">거성산업</p>
		   			<p class="Sky_info_p" id="Sky_info_p2">용접분야</p>
		   			<p class="Sky_info_p" id="Sky_info_p3">서울 관악구</p>
		   			<p class="Sky_info_p" id="Sky_info_p4">일수 <span>무관</span></p>
	   			</a>
	   		</div>
	   		<div class="Sky_bottom">
	   			<p>전체보기 1/1</p>
	   		</div>
	   		<div>
	   			<div><img alt="이전공고" src="img/main/up.png" style="float: left; width: 50%;"></div>
	   			<div><img alt="다음공고" src="img/main/down.png"style="width: 50%;"></div>
	   		</div>
	   <!-- end SkyBanner --></div>
	   <div class="contents_top">
		   <span onclick="location.href='index.do'">홈</span>>
		   <span onclick="location.href='comMain.do'">업체메인</span>>
		   <span onclick="location.href='comBoardList.do'">구인등록 현황</span>>
		   <span onclick="location.href='comWriteForm.do'" style="font-weight: bold;">구인등록</span>
	   </div>
	</div>
	<div class="contents_top2" style="padding-top: 10px">
		<div class="contents_top2_1">
			<span class="top2_1">구인등록 페이지</span>ㅣ<span class="top2_2">총 <span>${totalPag</span>
		</div>
		<div class="contents_top2_2">
			<input type="button" value="구직등록하기" onclick="location.href='comWriteForm.do'">
		</div>
	</div> 
</body>
</html>