<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" errorPage=""%>
<meta name="viewport" content="width=device-width">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="js/main/boardInfo.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>무제 문서</title>
<script src="js/main/jquery.bxslider.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main/jquery.bxslider.css?var=2">
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css?var=2">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css?var=2">
<link rel="stylesheet" type="text/css" href="css/com/comMain_con.css?var=2">
<script type="text/javascript">

	function logOut() {
		var url = "logoutForm.do";
		window
				.open(url, "_blank_1",
						"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450, height=200");
	}
	
	function showValues(){
		var key=document.shows.njob.options[document.shows.njob.selectedIndex].value;
		document.shows.tabless.value = key;
	}
	
	function Mesege() {
		var url = "mesegeForm.do";
		window
		.open(url, "_blank_1",
				"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=500, height=400");
	}
	function mainSearch(){
		var dos= 'nomalSearch.do?page=1&';
		var keyword =$('.keyword').val(); 
		var checkbox = $('.license').val();
		var radiobox = $('#careerType').val();
		
			if(keyword.value !=''){
			dos+='&keyword='+keyword;
		}
		if(checkbox.value !=''){
			dos= dos+'&checkbox='+checkbox;
		} 
		if(radiobox.value != ''){
			dos = dos+'&radiobox='+radiobox;
		} 
		location.href=dos;
	} 
</script>
</head>
<body>
<div class="container">
		<div class="header">
			<div class="searchArea">
				<dir class="searchs">
					<img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로" style="margin-top: 30px;" />
					<div class="serachs_div">
						<input type="text" alt="전체검색" class="searchText" style="padding: 5px;"><img
							src="img/main/btn_search.gif" alt="홈으로" style="float: left;" /></input>
					</div>
				</dir>
			</div>
			<!-- end .header -->
		</div>
		<nav style="margin-top: 20px;">
		<ul id="menu">
			<li><a href="index.do">홈으로</a></li>
			<c:choose>
				<c:when test="${userInfo == 1}">
					<li><a href="nomalSearch.do">일자리찾기</a></li>
					<li><a href="nomalBoardList.do">일자리등록정보</a>
						<ul>
							<li><a href="nomalBoardList.do">구직 등록 현황</a></li>
							<li><a href="nomalWriteForm.do">구직 등록하기</a></li>
						</ul></li>
				</c:when>
				<c:when test="${userInfo ==2}">
		  			<li><a href="comSearch.do">인력찾기</a></li>
					<li><a href="comBoardList.do">구인 정보</a>
					<ul>
						<li><a href="comBoardList.do">구인 등록 현황</a></li>
				    		<li><a href="comWriteForm.do">구인 등록하기</a></li>	
					</ul></li>
		  		</c:when>
		  		<c:otherwise>
		  			<li><a href="comSearch.do">인력찾기</a></li>
					<li><a href="comBoardList.do">구인 정보</a>
					<ul>
						<li><a href="comBoardList.do">구인 등록 현황</a></li>
				    		<li><a href="comWriteForm.do">구인 등록하기</a></li>	
					</ul></li>
				</c:otherwise>
			</c:choose>
			<li><a href="#">게시판</a>
				<ul>
					<li><a href="freeBoardList.do">자유게시판</a></li>
					<li><a href="#">후기게시판</a></li>
				</ul></li>
			<li><a href="#">공지사항</a></li>
		</ul>
		</nav>
		<div class="side">
			<div class="sideLogin">
				<div class="loginArea" style="text-align: center;">
					<%
						if (session.getAttribute("user") == null) {
					%>
					<div class="loginArea_div">
						<div class="loginArea_div_1">
							<img src="img/main/nomallogin.png" alt="일반 회원 로그인"
								onclick="location.href='login.do?a=2'" />
						</div>
						<div class="loginArea_div_2">
							<img src="img/main/comlogin.png" alt="기업회원 로그인"
								onclick="location.href='login.do?a=1'" />
						</div>
					</div>
					<div class="loginArea_div2">
						<a class="loginArea_div2_a" href="joinForm.do">회원가입</a> <span>l</span>
						<a class="loginArea_div2_a2" href="#">아이디 찾기</a> <span>l</span> <a
							class="loginArea_div2_a3" href="#">비밀번호 찾기</a>
					</div>
					<%
						} else {
					%>

					<div class="loginArea_div3">
						<img src="img/com/mans.png" alt="일반회원" />
					</div>
					<div class="loginArea_div4">
						<c:choose>
							<c:when test="${userInfo == 1}">
								<span class="loginArea_div4_1" onclick="logOut()"><span>로그아웃</span></span>
								<span class="loginArea_div4_2"><span>일반</span>회원</span><br> 
								<span class="loginArea_div4_3" style="margin-right: 70px;"><span>${user.name}</span>님</span><br>
								<span class="loginArea_div4_4">등록 구직글 : <a>0</a></span>
								<span style="font-size: 13px; margin-right: 30px;float: right;">메세지 : 
									<c:choose>
										<c:when test="${countNew ==0}"><a>0</a></c:when>
										<c:when test="${countNew > 0}"><a style="color: red; cursor:pointer;" onclick="Mesege()">${countAll}</a></c:when>											 
									</c:choose>/${countNew}
								</span>
							</c:when>
							<c:when test="${userInfo == 2}">
								<span class="loginArea_div4_1" onclick="logOut()"><span>로그아웃</span></span>
								<span class="loginArea_div4_2"><span>기업</span>회원</span><br> 
								<span class="loginArea_div4_3" style="margin-right: 70px;"><span>${user.name}</span>님</span><br>
								<span class="loginArea_div4_4">등록 구직글 : <a>0</a></span>
								<span style="font-size: 13px; margin-right: 30px;float: right;">메세지 : 
									<c:choose>
										<c:when test="${countNew ==0}"><a>0</a></c:when>
										<c:when test="${countNew > 0}"><a style="color:red; cursor:pointer;" onclick="Mesege()">${countAll}</a></c:when>											 
									</c:choose>/${countNew}
								</span>
							</c:when>
						</c:choose>
					</div>
					<%
						}
					%>
				</div>
			</div>
	<div class="Shortcut">
		<div class="ShortcutMain"> <!-- 우측의 6개 숏컷 가이드 -->
			<div class="ShortcutMain_dvi" ><div><img src="img/main/Newquick3.png"/></div><div>구직검색</div></div>
			<div class="ShortcutMain_dvi" onclick="nomalWriteCheck()"><div><img src="img/main/Newquick2.png"/></div><div>구직등록</div></div>
			<div class="ShortcutMain_dvi" onclick="nomalBoardListCheck()"><div ><img src="img/main/Newquick1.png"/></div><div>구직 등록현황</div></div>
			<div class="ShortcutMain_dvi" ><div><img src="img/main/Newquick5.png"/></div><div>구인검색 가이드</div></div>
			<div class="ShortcutMain_dvi" ><div><img src="img/main/Newquick7.png"/></div><div>구직등록 가이드</div></div>
			<div class="ShortcutMain_dvi" ><div><img src="img/main/Newquick6.png"/></div><div>공지사항</div></div>
		</div>
	</div>
	
	<div class="Advertising">
		<ul class="bxslider"><!-- 광고판 3개 사진 -->
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
		  pause: 2000,
		  speed: 1000,
		  controls : false
		});
	</script>
    <!-- end .sidebar1 --></div>
  <div class="content">
			<div class="recentHelp">
				<div class="recentHelp_1">
					<p class="recentHelp_1_p">
						<span>일자리</span>검색
					</p>
					<div class="recentHelp_1_d">
						<div class="recentHelp_1_div">
							<ul style="list-style: none;">
								<li><span>키워드 입력</span>
									<div style="float: right; margin-right: 40px;">
										<dt class="recentHelp_1_dt">
											<input type="text" name="keyword" class="keyword"/>
										</dt>
										<dd class="recentHelp_1_dd">
											<a href="javascript:;" onclick="mainSearch()">검색</a>
										</dd>
									</div></li>
							</ul>
						</div>
						<div class="recentHelp_1_div2">
							<ul style="list-style: none;">
								<li style="float: left; width: 50%;">
									<dl style="float: left;">
										<dt style="float: left;" class="recentHelp_1_div2_dt">전문분야</dt>
										<dd style="padding-left: 30px;" class="recentHelp_1_div2_dd">
											<select id='fruits' name='license'class="license"
												style="width: 195px; height: 32px">
												<option value='' selected>-- 선택 --</option>
											</select>
										</dd>
									</dl>
								</li>
								<li style="float: left; width: 50%;">
									<dl style="width: 100%;">
										<dt style="margin-left: 9px;" class="recentHelp_1_div2_dt2">경력</dt>
										<dd style="padding-left: 10px;" class="recentHelp_1_div2_dd2">
											<select id="careerType" name="careerType" title="경력 선택"><option
													value="">전체</option>
												<option value="없음">없음</option>
												<option value="1년">1년</option>
												<option value="2년">2년</option>
												<option value="3년">3년</option>
											</select>
										</dd>
									</dl>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="bestinfo">
					<p class="info_p">＊최근 구인공고</p>
					<div class="infoBox">
						<c:forEach items="${comList}" var="c" varStatus="r">
							<div class="first_info">
								<c:choose>
									<c:when test="${r.count <= 5}">
										<div class="info_span1">${c.cjob}</div>
									</c:when>
									<c:when test="${r.count > 5}">
										<div class="info_span1_1">${c.cjob}</div>
									</c:when>
								</c:choose>
								<div class="info_span2" id="info_span2">
									<a href="comView.do?cnum=${c.cnum}"
										style="color: #0372ab; text-decoration: none">${c.ctitle}</a>
								</div>
								<div class="info_span2" id="span_info">
									<span class="span_info_in">${c.cday}</span>
									<c:choose>
										<c:when test="${fn:length(c.carea) > 19}">
											<span class="span_info_in"> <c:out
													value="${fn:substring(c.carea, 0, 19)}"></c:out>...
											</span>
										</c:when>
										<c:otherwise>
											<span class="span_info_in">${c.carea}</span>
										</c:otherwise>
									</c:choose>
									<span>${c.ccarrer}</span>
								</div>
								<a></a>
							</div>
						</c:forEach>
					</div>
				</div>

				<div class="recentFreeTable">
					<p>＊자유게시판 & 공지사항</p>
					<div id="boardTabs">
						<ul class="tabs">
							<li class="active" rel="tab1">자유게시판</li>
							<li rel="tab2">지역별 구인등록 현황</li>
						</ul>
						<div class="tab_container">
							<div id="tab1" class="tab_content">
								<c:forEach items="${freeList}" var="f" varStatus="fst">
									<ul class="tab_content_in">
										<c:forEach items="${timeList}" var="t" varStatus="tst">
											<c:if test="${fst.count eq tst.count}">
												<c:choose>
													<c:when
														test="${fn:contains(t, '일전') or fn:contains(t, '어제')}">
														<li class="content_in_li"><img
															src="img/main/dumy.png" /></li>
													</c:when>
													<c:otherwise>
														<li class="content_in_li"><img src="img/main/new.png" /></li>
													</c:otherwise>
												</c:choose>
											</c:if>
										</c:forEach>
										<li class="content_in_lis" id="content_item"><span><a
												href="">${f.title}</a></span></li>
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
							<!-- 	<div id="tab2" class="tab_content">2222Mortal Kombat
								returns after a lengthy hiatus and puts players back into the
								Tournament for 2D fighting with gruesome combat.</div> -->
							<!-- 여기는 지역별 검색량 받아오는 클라쓰 -->

							<div id="tab2" class="tab_content">
								<form name="shows">
									<!-- <select id="keyType" onchange="showValues()" name='njob'> -->

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<div class="panel panel-primary">
<div class="panel-heading">최근 구인공고</div>
<div class="panel-body panel-warning" id="gaegosaeng">
<!--<c:forEach items="${area}" var="a">

	<c:forEach items="a.value" var="v">
	</c:forEach>
	<button class="btn btn-primary btn-xs" type="button" onclick = "areaChoose('${a.value}')">
	${a.key}</button>
</c:forEach>
</div>
<table class="table">
	<thead>
		<tr>

		</tr>
	</thead>
	<span class="badge"></span>
	<tbody>
		
	</tbody>

	
	
</table>

			</div>-->
   
									
<select id="keyType" onchange="showValues()" name='njob'>
										<c:forEach items="${area}" var="a">
											<option value="${a.value}">${a.key}</option>
										</c:forEach>
									</select>
									<textarea cols="30" rows="2" name="tabless">
									</textarea>
								</form>
							</div>

							<!-- #tab2 -->
						</div>
		</div>
		<!-- #container -->
	</div>
	</div>
	<!-- end .content -->
	</div>
	<div class="footer">
		<div class="copy">
			<address>
				서울특별시 강남구 역삼동 819-10 한빛교육센터 강의실,<br> 대표연락처 : 1577-0000, FAX :
				052-000-0000, E-mail : asdf@naver.com
			</address>
			<p>Copyrights 2017~~~~ MPMcompany All rights Reserved</p>
		</div>
		<!-- end .footer -->
	</div>
	<!-- end .container -->
	</div>
	<script>
	
		$(window).load(

				function() {
					$.ajax({
						url : "json/job.json",
						dataType : "json",
						success : function(result) {
							$.each(result.job, function(i, d) {
								$("#fruits").append(
										"<option value=" + d["value"] + ">"
												+ d["value"] + "</option>");
							});
						}
					});
				});
		function nomalWriteCheck() {
			var a = '${userInfo}';
			if (a == '') {
				alert('로그인 후 이용해주세요');
				location.href = 'login.do';
			} else {
				if (a == 2) {
					alert("기업회원은 이용하실 수 없습니다.");
				} else {
					location.href = 'nomalWriteForm.do';
				}
			}
		}
		function nomalBoardListCheck() {
			var a = '${userInfo}';
			if (a == '') {
				alert('로그인 후 이용해주세요');
				location.href = 'login.do';
			} else {
				if (a == 2) {
					alert("기업회원은 이용하실 수 없습니다.");
				} else {
					location.href = 'nomalBoardList.do';
				}
			}
		}
		
	</script>
</body>
</html>
