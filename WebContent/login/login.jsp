<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="bootStrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
<style type="text/css">
<!--
.container {
	width: 80%;
	height: 100%;
	max-width: 1260px;/* 대형 모니터에서 이 레이아웃이 지나치게 넓어지는 것을 방지하기 위해 max-width를 사용할 수 있습니다. 이 속성을 사용하면 선 길이를 더욱 쉽게 읽을 수 있습니다. IE6에서는 이 선언이 적용되지 않습니다. */
	min-width: 780px;/* 이 레이아웃이 지나치게 좁아지는 것을 방지하기 위해 min-width를 사용할 수 있습니다. 이 속성을 사용하면 사이드 열에서 선 길이를 더욱 쉽게 읽을 수 있습니다. IE6에서는 이 선언이 적용되지 않습니다. */
	background-color: #f2f2f2;
	margin: 0 auto; /* 측면 자동 값, 폭으로 연결, 레이아웃 가운데 정렬. .container의 폭을 100%로 설정하는 경우에는 필요하지 않습니다. */
}
.content{
	width: 50%;
	margin: 0 auto;
}
.logoArea{
	height: 300px;
}
.naviLine{
	width: 100%;
	height: 25px;
	background-color: #0f4579;
	border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px;
    z-index: -1;
}
.form-group{
	padding-left: 70px;
}
-->
</style>
</head>
<body>
<div class="container">
<div class="content">
<div class="logoArea"><img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로"/></div>
<div class="naviLine"></div>
<form class="form-horizontal" action="loginCheck.do" name="frm" method="post">
<input type="hidden" name="command" value="nomalUserLoginChecker">
  <div class="form-group">
    <label for="inputEmail3" class="col-xs-10 control-label">ID :</label>
    <div class="col-xs-10">
      <input type="text" class="form-control" id="inputEmail3" placeholder="ID를 입력해주세요" name="id">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-xs-10 control-label">Password :</label>
    <div class="col-xs-10">
      <input type="text" class="form-control" id="inputPassword3" placeholder="비밀번호를 입력해주세요" name="pass">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
      <c:choose>
      	<c:when test="${fn:contains(hrefs, 'comMain')}">
	      	<input type="radio" name="radios" value="1">일반회원
	      	<input type="radio" name="radios" value="2" checked="checked">기업회원
      	</c:when>
      	<c:when test="${fn:contains(hrefs, 'nomalMain')}">
	      	<input type="radio" name="radios" value="1" checked="checked">일반회원
	      	<input type="radio" name="radios" value="2">기업회원
      	</c:when>
      	<c:otherwise>
	      	<input type="radio" name="radios" value="1">일반회원
	      	<input type="radio" name="radios" value="2">기업회원
      	</c:otherwise>
      </c:choose>
      	
        <label>
          <input type="checkbox"> ID저장
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary btn-lg" onclick="boardCheck()">Login</button>
    </div>
  </div>
</form>
<script type="text/javascript">
function boardCheck(){
	if(document.frm.id.value.length == 0){
		alert('작성자를 입력하세요');
		return false;
	}
	if(document.frm.pw.value.length == 0){
		alert('비밀번호를 입력하세요');
		return false;
	}
	return true;
}
function open_win(url, name){
	window.open(url, name, "width=500, height=350");
}
</script>
</div>
</div>

</body>
</html>