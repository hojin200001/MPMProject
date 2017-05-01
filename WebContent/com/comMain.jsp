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
<script src="js/main/jquery.bxslider.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/nomalMain.css">
<link rel="stylesheet" type="text/css" href="css/com/comMain_con.css">
</head>
<script type="text/javascript">
</script>
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
	    <li><a href="comSearch.do">인력찾기</a></li>
	    <li><a href="#">구직 정보</a>
	    	<ul>
	    		<li><a href="comBoardList.do">구직 등록 현황</a></li>
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
		<%if(session.getAttribute("user")==null){%>
			<p>보다안전하게 인력몬 사이트를 이용하세요</p>
			<div class="loginBtn">
				<a href="login.do" clsss="loginComent"><img src="img/main/logoB_07_login.png"></img></a>
			</div>
			<div class="loginBottom">
				<a href="joinForm.do" class="LoginJoin">회원가입</a>
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
		<div class="ShortcutMain">
			<div class="ShortcutMain_dvi" ><div><img src="img/main/Newquick4.png"/></div><div>구인검색</div></div>
			<div class="ShortcutMain_dvi" ><div><img src="img/main/Newquick2.png"/></div><div>구직등록</div></div>
			<div class="ShortcutMain_dvi" onclick="location.href='comBoardList.do'"><div ><img src="img/main/Newquick1.png"/></div><div>구직 등록현황</div></div>
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
