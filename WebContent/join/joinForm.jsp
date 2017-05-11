<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script type="text/javascript" src="js/main/addr.js"></script>
<link rel="stylesheet" href="css/main/join.css" type="text/css">
<link rel="stylesheet" href="css/main/joinForm.css" type="text/css">
</head>

<body>
	<div class="hader">
		<div class="hader_div">
			<div class="hader_div_1">
				<img alt="홈으로" src="img/main/logoB_07.png">
			</div>
			<div class="hader_div_2">
				<p></p>
				<a href="index.do">HOME</a>
				<a>|</a>
				<a href="login.do">로그인</a>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="content" align="center">
			<div class="content_div">
				<h1 class="content_div_h1" >
				인력몬 회원가입
				<span>웹 인력소개소의 최종판 인력몬사이트에 오신것을 환영합니다.</span>
				</h1>
				<div class="content_div_1">
					<div class="content_div_1_1">
						<p><img alt="일반회원가입" src="img/main/nomal.png"></p>
						<p><strong>좋은 일자리를  찾으세요?</strong></p>
						<p><span>회원정보를 등록하고, 일자리를 찾으실분</span></p>
					</div>
					<div class="content_div_1_2" onclick="location.href='nomalJoinFormIndex.do'">
						<p style="margin-top: -5px"></p>
						<span>일반 회원가입</span>
					</div>
				</div>
				<div class="content_div_2">
					<div class="content_div_2_1">
						<p><img alt="일반회원가입" src="img/main/com.png"></p>
						<p><strong>좋은 인력을 찾으세요?</strong></p>
						<p><span>기업 정보를 등록하고, 인력을 찾으실분</span></p>
					</div>
					<div class="content_div_2_2" onclick="location.href='comJoinFormIndex.do'">
						<p style="margin-top: -5px"></p>
						<span>기업 회원가입</span>
					</div>
					<span class="content_span_bottom">법인 및 개인사업자는 기업회원으로 가입해 주세요</span>
				</div>
				<dl class="joinCaution">
					<dt>※ <strong>Windows10, edge</strong> 이용고객 <strong>주의사항</strong></dt>
					<dd>본페이지는 1260x780의 화면, google Chrome에 최적화되어있습니다. 화면이 깨질 우려가 있으니,<br>Windows10, edge 이용고객께서는, <strong>google Chrome로 접속</strong>하여 이용해 주십시오.</dd>
				</dl>
				<span style="color:#767676; font-size: 12px;">Copyright ⓒ Them MPMProject. All Rights Reserved.</span>
			</div>
		</div>
	</div>
</body>
</html>