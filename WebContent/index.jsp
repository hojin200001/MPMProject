<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>무제 문서</title>
<!-- <link href="bootStrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script> -->
<script src="js/main/jquery.bxslider.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="css/main/main.css">
<script>
$(document).ready(function(){
	  $('.bxslider').bxSlider({
		  minSlides: 2,
	  maxSlides: 2,
	  slideWidth: 750,
	  slideMargin: 10,
	  auto: true,
	  pause: 10000,
	  speed: 5000,
	  autoHover: true
	});  // ul에 있는 class명을 기준으로 선언을 합니다. 즉, 이미지구성요소들을 감싸고있는 객체에 선언해 줍니다. 
});
</script>
</head>

<body>

<div class="container">
  <div class="header">
  	<ul class="bxslider">
  		<li><a><img src="img/main/1.PNG" /></a></li>
  		<li><a><img src="img/main/2.PNG" /></a></li>
  		<li><a><img src="img/main/3.PNG" /></a></li>
  		<li><a><img src="img/main/4.PNG" /></a></li>
</ul>
    <!-- end .header --></div>
  <div class="naviLine">
	 <ul class="headerNev">
  		<li class="Nev1"><%if(session.getAttribute("user")==null){%>
			<a href="login.do">로그인</a></li>
		<li><a href="#">회원 가입</a></li><%
			}else{%>${user.name}님 환영합니다. &nbsp;&nbsp;&nbsp;
		<a href="logoutForm.do">로그아웃</a></li>
  		<li><a href="#">마이 페이지</a></li>
  		<%}%>
  	</ul>
  </div>
  <div class="content">
  	<div class="conSpace" style="text-align: center; margin-bottom: 5px; padding-right: 10px;">
  		<img class="logoImage" src="img/main/logoB_07.png" alt="인력몬 로고" style="width: 250px; height: 130px;"/>
  	</div>
    <div clsss="itemOneArea">
    	<div class="nomalLink" onclick="location.href='nomalMain.do'">
        	<ul>
            	<li class="infotxt">당신에게 알맞는 일자리를 찾아보세요.</li>
                <li class="subject">구직<a href="nomalMain.do"><img src="img/main/btn_more.png" alt="더보기"></a></li>
            </ul>
            <p class="sub_txt">
            	<a href="nomalSignup.do">구직등록</a> / 
            	<a href="index.do">일자리검색</a> / 
            	<a href="index.do">지역별 일자리</a>
            </p>
        </div>
        <div class="companyLink" onclick="location.href='comMain.do'">
        	<ul>
                <li class="infotxt">기업에 필요한 인력을 찾으세요.</li>
                <li class="subject">구인<a href="comMain.do"><img src="img/main/btn_more.png" alt="더보기"></a></li>
           	</ul>
            <p class="sub_txt">구인공고 / 인력검색 / 지역별 인력검색</p>
       	</div>
    </div>
    <div class="itemTwoArea">
    	<div class="nomalGuide">
		    <p class="infotxt">일자리 찾기의 방법을 알려드립니다.</p>
	       	<dl>
	       	<dt>일자리 찾기 가이드</dt>
	           <dd><a href=""><img src="img/main/btn_more_s.png" alt="더보기"></a></dd>
	  	    </dl>
    	</div>
    	<div class="companyGuide">
    		<p class="infotxt">인력 찾기의 방법을 알려드립니다.</p>
	       	<dl>
	       	<dt>인력 찾기 가이드</dt>
	           <dd><a href=""><img src="img/main/btn_more_s.png" alt="더보기"></a></dd>
	  	    </dl>
    	</div>
    </div>
  </div>
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
