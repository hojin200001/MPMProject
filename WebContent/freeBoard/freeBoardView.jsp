<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/nomalMain.css">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	width:100%;
	margin:15px 0;
	border:0;
}
.table6_6 th {

	color:#000000;
}
.table6_6,.table6_6 th,.table6_6 td {
	font-size:0.95em;
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
.reply{
	border: 1;
}

.footer {
	padding: 10px 0;
	background-color: #f2f2f2;
	text-align: center
	font-size: 10px;
}
.replyList{
	border-top: 1px solid lightgray;
}

textarea {
    width: 80%;
    height: 100px;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    background-color: #f8f8f8;
    font-size: 16px;
    resize: none;
}
-->

</style>
<script type="text/javascript" src="js/reply/freeBoardReply.js"></script>

</head>
<body>


<div class="container">	
	<div class="header">
  		<div class="searchArea">
  			<div class="imgArea">
  				<a href="index.do"><img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로" /></a>
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
	            <li><a href="freeBoardList.do">자유게시판</a></li>
	            <li><a href="#">후기게시판</a></li>
	        </ul>
	    </li>
	    <li><a href="#">공지사항</a></li>
	</ul>
   </nav>

	<div>
	<div class="imgArea2" >
  				<img class="imageBack" src="img/free/m12338793364.jpg" width="900" height="180" />
  	</div>
  	<br>

  	<div class="table">

  	<div class="table">

	<table class="table table-condensed">
		<tr>
			<td colspan="4" style="font-size: 25px" >${freeBoard.title}</td>
		</tr>
		<tr>
			<td>글쓴이/${freeBoard.createName}</td>	
			<td>조회수/${freeBoard.freeCount}</td>
			<td>작성일/<fmt:formatDate value="${freeBoard.createDay}" pattern="yyyy-MM-dd"/></td>
		</tr>	
		<tr>
			<td colspan="4" style="height: 350px;">${freeBoard.conValue}</td>
		</tr>
	</table>
	<c:choose>
		<c:when test="${user.id eq freeBoard.createName}">
			<input id="up" type="button" value="수정" onclick="location.href='freeBoardUpdateForm.do?num=${freeBoard.num}'">
			<input type="button" value="삭제" onclick="location.href='freeBoardDelete.do?num=${freeBoard.num}'">
		</c:when>
	</c:choose>
	<input type="button" value="돌아가기" onclick="location.href='freeBoardList.do'">
	</div>

	<br>
	
	<div>

	</div>
	<br>
	
	<div class="reply">
		
		<c:forEach items="${freereply}" var="freereply">
		<div class="replyList">
		<dl>
			<dd>
			${freereply.reName}  | ${freereply.reDay}

			<a href="#" style="float: right" onclick="fr_replyDelete(${freereply.reNum},${freeBoard.num})">삭제  </a>  <a style="float: right">수정  |</a>	

			
			<a href="#" onclick="replyDelete.do?num=${freeBoard.num}&reNum=${freerply.reNum}" style="float: right;">삭제</a>  <a style="float: right">수정  |</a>
<%-- 			<a href="replyDelete.do?num=${freeBoard.num}&reNum=${freerply.reNum}" style="float: right;">삭제</a>  <a style="float: right">수정  |</a> --%>
<%-- 			<a href="#" style="float: right" onclick="fr_replyDelete('<c:out value="${freereply.reNum}"/>, <c:out value="${freeBoard.num}"/>')">삭제  </a>  <a style="float: right">수정  |</a>	 --%>

			
			</dd>
			
			<dt>${freereply.teText}</dt>
		
		</dl>

		</div>
		
		<div id="replyDiv" style="width: 99%; display:none">
		    <form name="form2" action="replySave.do" method="post">
		        <input type="hidden" name="reNum"> 
		        <input type="hidden" name="num"> 
		        <textarea name="teText" rows="3" cols="60" maxlength="500"></textarea>

		
		</div>	
		
		<div id="replyDiv" style="display:none">
		    <form name="form2" action="freeReplySave.do" method="post">
		        <input type="hidden" name="num"> 
		        <input type="hidden" name="reNum"> 
		        <textarea name="rememo" rows="3" cols="60" maxlength="500"></textarea>

		        <a href="#" onclick="fn_replyUpdateSave()">저장</a>
		        <a href="#" onclick="fn_replyUpdateCancel()">취소</a>
		    </form>
		</div>


		</c:forEach>

		<form action="replyWrite.do"  method="post" name="frm">
		<input type="hidden" name="reName" value="${user.id}"> 
		<input type="hidden" name="num" value="${freeBoard.num}">
			<textarea name="teText" placeholder="댓글을 달아주세요."></textarea>
			<input type="submit" value="댓글">
		</form>
		
	</div>
	
		<c:forEach items="${freereplyList}" var="freereply">
		<dl>
			<dt>${freereply.reName}| ${freereply.reDay}</dt>
			
			<dd>${freereply.teText}</dd>
		
		</dl>	
		</c:forEach>
	</div>
	
	<div class="footer" style="display: inline-block;">
		<div class="company" style="float: left; width: 50% ">
			<p>(주)MPM 네트웍스</p>
			<address>
				서울특별시 강남구 테헤란로 9832 동관 201층&nbsp;(주)MPM 네트웍스 <span>|</span> 공동 대표이사 : 김태완 박영환 박주영<br />
				<em>사업자등록번호 : 617-812-48252234 <span>|</span> 부가통신사업 : 제17021047호 <span>|</span> 통신판매업신고 : 제2017-서울강남-3543525호<br />
				직업정보제공사업 신고번호 : 서울강남 제2017-30호</em>
			</address>
		</div>
		<div class="customer" style="float: left; width: 50% ">
			<p>고객지원</p>
			<p>평일 : 09:00 ~ 18:00 (점심12~13시), 토요일 : 09:00 ~ 13:00</p>
			<p>전화 : 1919-82828</p>
			<p>FAX : 02-1919-8219</p>
			<p class="email"><a href="mailto:help@MPM.co.kr">help@MPM.co.kr</a></p>
			<p class="faq"><a href="#">자주묻는 질문보기</a></p>
			<p class="qna"><a href="#">온라인 문의</a></p>
			
			<p class="customerChatBtn"><a href="#">상담톡</a></p>
			
		</div>
		<p class="copyright">
			<span>Copyright &copy; </span> <strong>(주)MPM 네트웍스.</strong> <span>All Rights Reserved.</span>
		</p>
		
	</div>
</div>




</body>
</html>