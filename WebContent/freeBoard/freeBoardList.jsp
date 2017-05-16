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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
.footer {
	padding: 10px 0;
	background-color: #f2f2f2;
	text-align: center
	font-size: 10px;
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
	<div class="imgArea2" >
  				<img class="imageBack" src="img/free/success-health-header-1280x200-2.jpg"/>
	</div>
  	<br>
	
	<form action="freeBoardList.do" method="post">
	<table class="table table-condensed">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
		
		<c:forEach items="${freeBoardList}" var="freeBoard">
			<tr>
				<td>${freeBoard.num}</td>
				<td><a href='freeBoardView.do?num=${freeBoard.num }'>${freeBoard.title}</a></td>
				<td>${freeBoard.createName}</td>
				<td><fmt:formatDate value="${freeBoard.createDay}" pattern="yyyy-MM-dd"/> </td>
				<td>${freeBoard.freeCount}</td>
			</tr>
		</c:forEach>
		
		<tr>
			<td colspan="5" align="center">
			
				<c:if test="${start != 1}">
					<a href="freeBoardList.do?page=1&type=${type}&keyword=${keyword}">[처음]</a>
					<a href="freeBoardList.do?page=${start-1}&type=${type}&keyword=${keyword}">[이전]</a>
				</c:if>
				<c:forEach begin="${start}" end="${end <last? end: last}" var="i">
					
					<c:choose>
						<c:when test="${i == current }">
							[${i}]
						</c:when>
						<c:otherwise>
							<a href="freeBoardList.do?page=${i}&type=${type}&keyword=${keyword}">[${i}]</a>				
						</c:otherwise>
					</c:choose>
						
				</c:forEach>
				
				<c:if test="${end < last}">
					<a href="freeBoardList.do?page=${end+1}&type=${type}&keyword=${keyword}">[다음]</a>
					<a href="freeBoardList.do?page=${last}&type=${type}&keyword=${keyword}">[마지막]</a>
				
				</c:if>
			</td>
		</tr>
		<tr>
			<td colspan="5" style="text-align: right;">
				<select	id="type" name="type" size="1">
					<option value="1">제목</option>
					<option value="2">내용</option>
					<option value="3">제목+내용</option>
					<option value="4">작성자</option>
				</select>
				검색어 <input type="text" name="keyword">
				<input type="submit" value="검색">
			</td>
		
		</tr>
	</table>
	</form>
	<form class="form-horizontal" action="freeBoardWriteForm.do" name="frm" method="post">
	<input type="submit" value="게시글 등록">
	</form>
	<br>
	<br>
	
	<dir class="footer">
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
		
	</dir>
</div>

</body>
</html>