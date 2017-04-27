<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<meta name="viewport" content="width=device-width">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="js/main/boardInfo.js"></script>
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
	height: 45px;
	width: 230px;
	border: 2px solid #BDBDBD; 
	border-radius: 3px;
	text-align: center;
	background-color: #f2f2f2;
}

.search{
	padding-left: 20px;
	padding-top: 7px;
	float: left;
	font-size: 12px;
}
.LoginJoin{
	padding-right:	20px;
	padding-top: 7px;
	float: right;
	font-size: 12px;
	
}
.recentHelp, .recentFreeTable{
	height: auto;
	border-top: 3px solid #0d73d1; 
}
.recentFreeTable{
	margin-top: 15px;
}
.bestinfo{
}
.bestinfo p, .recentFreeTable p{
	margin-top: 20px;
	font-weight: 900;
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
	height: 220px;
	width: 100%;
}
.ShortcutMain{
	width: 100%;
	height: 180px;
	border: 3px solid #f2f2f2;
}
.ShortcutMain_dvi{
	float: left; 
	width:32.5%; 
	height: 50%;
	margin: 0 auto;
	text-align: center;
	font-size: 11px;
	border: 1px solid #f2f2f2;
	cursor:pointer;
}
/* 구직정보 표기테이블 */
.infoBox{
	height:300px; 
	list-style: none; 
	margin: 0 auto; 
	padding: 1px 0 0;
	background-color: #ffffff;
}
.first_info{
	width: 50%; 
	height : 20%; 
	border: 1px solid #d5dbe9; 
	display: list-item;
	position: relative; 
	float: left; 
	margin: -1px 0 0 -1px; 
	box-sizing: border-box;
}
.first_info>a{
	padding: 14px 0 0 158px; 
	text-decoration: none;
}

.info_span1, .info_span1_1{
	color: #0372ab; 
	position: absolute; 
	top: 0; 
	left: 0; 
	width: 130px; 
	height: 41px; 
	padding: 15px 0 0 15px;
}
.info_span1{
	background-color: #ebf8ff; 
}
.info_span2{
	margin-left: 170px;
	margin-top: 5px;
}
#span_info{
	font-size: 10px;
}
#span_info> span{
	padding-right: 5px;
	padding-left: 5px;
	margin-top: -5px;
}
.span_info_in{
	border-right: 1px solid #f2f2f2;
}
/* 게시판 탭부분 */
ul.tabs {
    margin: 0;
    padding: 0;
    float: left;
    list-style: none;
    height: 50px;
    border-bottom: 1px solid #f2f2f2;
    border-left: 1px solid #f2f2f2;
    width: 100%;
    font-family:"dotum";
    font-size:16px;
}
ul.tabs li {
    float: left;
    text-align:center;
    cursor: pointer;
    width:49.8%;
    height: 50px;
    line-height: 31px;
    border: 1px solid #f2f2f2;
    border-top: 1px solid #034f96;
    border-left: none;
    font-weight: bold;
    background: #f2f2f2;
    overflow: hidden;
    position: relative;
}
ul.tabs li.active {
    background: #FFFFFF;
    border-bottom: 1px solid #FFFFFF;
}
.tab_container {
    border: 3px solid #f2f2f2;
    border-top: none;
    clear: both;
    float: left;
    width: 100%;
    background: #FFFFFF;
}
.tab_content {
    padding: 5px;
    font-size: 15px;
    display: none;
}
.tab_container .tab_content ul {
    width:100%;
    margin:0px;
    padding:0px;
    
}
.tab_container .tab_content ul li {
    padding:5px;
    display:inline;
}

 #boardTabs {
    width: 100%;
    margin: 0 auto;
}
.content_in_lis{
	margin-left: 20px;
	height: 20px;
	width: 80%;
	list-style: none;	
}

.content_in_lis>span>a{
	text-decoration:none;
}
.content_in_li{
	margin-left: 50px;
}
#content_item{
	font-size: 15px;
}
#content_item2>span{
	clolr:#4E5869;
	font-size: 12px;
}
#content_item3{
	color:#034f96;
	font-size: 12px;
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
  <div class="side">
	<div class="sideLogin">
		<div class="loginArea">
			<p>보다안전하게 인력몬 사이트를 이용하세요</p>
			<div class="loginBtn">
				<a href="login.do" clsss="loginComent"><img src="img/main/logoB_07_s.png"></img></a>
			</div>
			<div class="loginBottom">
				<a href="" class="LoginJoin">회원가입</a>
				<span class="search">
				<a>아이디 찾기</a>
				/
				<a>비밀번호 찾기</a>
				</span>
			</div>
		</div>
	</div>
	<div class="Shortcut">
		<div class="ShortcutMain">
			<div class="ShortcutMain_dvi" ><div><img src="img/main/Newquick4.png"/></div><div>구인검색</div></div>
			<div class="ShortcutMain_dvi" ><div><img src="img/main/Newquick2.png"/></div><div>구직등록</div></div>
			<div class="ShortcutMain_dvi" ><div><img src="img/main/Newquick1.png"/></div><div>구직 등록현황</div></div>
			<div class="ShortcutMain_dvi" ><div><img src="img/main/Newquick5.png"/></div><div>구인검색 가이드</div></div>
			<div class="ShortcutMain_dvi" ><div><img src="img/main/Newquick7.png"/></div><div>구직등록 가이드</div></div>
			<div class="ShortcutMain_dvi" ><div><img src="img/main/Newquick6.png"/></div><div>공지사항</div></div>
		</div>
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
  	<div class="recentHelp">
    	<div class="bestinfo">
    		<p class="info_p">＊최근  구직공고</p>
			<div class="infoBox">
				<c:forEach items="${nomalList}" var="n" varStatus="r">
				<div class="first_info">
				<c:choose>
					<c:when test="${r.count <= 5}">
						<div class="info_span1">${n.njob}</div>
					</c:when>
					<c:when test="${r.count > 5}">
						<div class="info_span1_1">${n.njob}</div>
					</c:when>
				</c:choose>
					<div class="info_span2"><span>${n.ntitle}</span></div>
					<div class="info_span2" id="span_info">
						<span class="span_info_in">${n.nday}</span><span class="span_info_in">${n.narea}</span><span>${n.ncareer}</span>
					</div>					
					<a></a>
				</div>
				</c:forEach>					
    		</div>
    	</div>
    <div class="recentFreeTable" >
    	<p>＊자유게시판 & 공지사항</p>
			<div id="boardTabs">
			    <ul class="tabs">
			        <li class="active" rel="tab1">자유게시판</li>
			        <li rel="tab2">공지사항</li>
			    </ul>
			    <div class="tab_container">
			        <div id="tab1" class="tab_content">
						<c:forEach items="${freeList}" var="f" varStatus="fst">
							<ul class="tab_content_in">
								<c:forEach items="${timeList}" var="t" varStatus="tst">
									<c:if test="${fst.count eq tst.count}">
										<c:choose>
											<c:when test="${fn:contains(t, '일전') or fn:contains(t, '어제')}">
												<li class="content_in_li"><img src="img/main/dumy.png"/></li>
											</c:when>
											<c:otherwise>
												<li class="content_in_li"><img src="img/main/new.png"/></li>
											</c:otherwise>
										</c:choose>
									</c:if>
								</c:forEach>
								<li class="content_in_lis" id="content_item"><span><a href="">${f.title}</a></span></li>
								<li class="content_in_lis" id="content_item2"><span>${f.createName}</span></li>
								<c:forEach items="${timeList}" var="t2" varStatus="tst2">
								 	<c:if test="${fst.count eq tst2.count}">
										<li class="content_in_lis" id="content_item3"><span>${t2}</span></li>
								 	</c:if>
								</c:forEach>
							</ul>
						</c:forEach>
			        </div>
			        <!-- #tab1 -->
			        <div id="tab2" class="tab_content">2222Mortal Kombat returns after a lengthy hiatus and puts players back into the Tournament for 2D fighting with gruesome combat.</div>
			        <!-- #tab2 -->
			    </div>
			    <!-- .tab_container -->
			</div>
			<!-- #container -->
    	</div>
    </div>
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
