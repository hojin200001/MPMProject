<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<link href="bootStrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="bootStrap/bootstrap.min.js"></script>
<style type="text/css">
<!--

body{
	background-color: #ebedee;
}

.hader{
	margin-top: -10px;
	height: 50px;
	background-color: #fff;
}
.hader_div{
	border: 1px solid red;
	width: 50%;
	margin: 0 auto;
}
.hader_div_1{
	width: 100px;
	float: left;
	margin-left: 150px;
}

.hader_div_1>img{
	height: 50px;
}
.hader_div_2{
	width: 200px;
	height: 50px;
	float: right;
	margin-right: 50px;
}
.hader_div_2>a{
	font-size: 12px;
	text-decoration:none;
	color:#000;
}
.container {
	width: 80%;
	height: 100%;
	max-width: 1260px;
	/* 대형 모니터에서 이 레이아웃이 지나치게 넓어지는 것을 방지하기 위해 max-width를 사용할 수 있습니다. 이 속성을 사용하면 선 길이를 더욱 쉽게 읽을 수 있습니다. IE6에서는 이 선언이 적용되지 않습니다. */
	min-width: 780px;
	/* 이 레이아웃이 지나치게 좁아지는 것을 방지하기 위해 min-width를 사용할 수 있습니다. 이 속성을 사용하면 사이드 열에서 선 길이를 더욱 쉽게 읽을 수 있습니다. IE6에서는 이 선언이 적용되지 않습니다. */
	margin: 0 auto;
	/* 측면 자동 값, 폭으로 연결, 레이아웃 가운데 정렬. .container의 폭을 100%로 설정하는 경우에는 필요하지 않습니다. */
}
.content {
	width: 50%;
	margin: 0 auto;
}

.logoArea {
	height: 300px;
}

.naviLine {
	width: 100%;
	height: 25px;
	background-color: #0f4579;
	border-bottom-right-radius: 3px;
	border-bottom-left-radius: 3px;
	z-index: -1;
}

.form-group {
	padding-left: 70px;
}
#login{
	margin-left: -70px;
	width: 400px;
}
#checkbox_radio{
	margin-left: 90px;
}
.div_bottom{
	margin-left: 80px;
	width : 70%;
	border-top: 1px solid #5E5E5E;
}
.div_bottom_div{
	margin-left: 110px;
}
.div_bottom_div>a{
	 font-size: 12px;
	 color: #828282;
}
.img_div{
 margin-top: 100px;
}
.img_div>img{

	margin-left:35%;
	height: 100px;
}
-->
</style>
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
		<div class="img_div">
			<img alt="홈으로" src="img/main/logoB_07.png">
		</div>
		<div class="content">
			<form class="form-horizontal" action="loginCheck.do" name="frm"
				method="post">
				<input type="hidden" name="command" value="nomalUserLoginChecker">
				<div class="form-group">
					<label for="inputEmail3" class="col-xs-10 control-label">ID
						:</label>
					<div class="col-xs-10">
						<input type="text" class="form-control" id="inputEmail3"
							placeholder="ID를 입력해주세요" name="id">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-xs-10 control-label">Password
						:</label>
					<div class="col-xs-10">
						<input type="password" class="form-control" id="inputPassword3"
							placeholder="비밀번호를 입력해주세요" name="pass">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<c:choose>
								<c:when test="${loginfo eq '1'}">
									<input type="radio" name="radios" value="1" id="checkbox_radio1">일반회원
	      	<input type="radio" name="radios" value="2" checked="checked" id="checkbox_radio">기업회원
	      	</c:when>
								<c:when test="${loginfo eq '2'}">
									<input type="radio" name="radios" value="1" checked="checked"id="checkbox_radio1">일반회원
	      	<input type="radio" name="radios" value="2" id="checkbox_radio">기업회원
      	</c:when>
								<c:otherwise>
									<input type="radio" name="radios" value="1"id="checkbox_radio1">일반회원
	      	<input type="radio" name="radios" value="2"id="checkbox_radio">기업회원
      	</c:otherwise>
							</c:choose>

						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-primary btn-lg"
							onclick="return boardCheck()" id="login">Login</button>
					</div>
				</div>
			</form>
			<div class="div_bottom">
			<div class="div_bottom_div">
				<a>아이디찾기</a>
				<a>|</a>
				<a>비밀번호 찾기</a>
				<a>|</a>
				<a href="joinForm.do">회원가입</a>
			</div>
			</div>
			<script type="text/javascript">
				function boardCheck() {
					if (document.frm.id.value.length == 0) {
						alert('작성자를 입력하세요');
						return false;
					}
					if (document.frm.pass.value.length == 0) {
						alert('비밀번호를 입력하세요');
						return false;
					}
					if(document.frm.radios.value.length == 0){
						alert('회원분류(일반/기업회원)를 선택하세요');
						return false;
					}
					return true;
				}
				function open_win(url, name) {
					window.open(url, name, "width=500, height=350");
				}
			</script>
		</div>
	</div>

</body>
</html>