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

-->

</style>
<script type="text/javascript" src="script/freeBoard.js"></script>
<link rel="stylesheet" type="text/css" href="css/board.css">
<script type="text/javascript" src="script/board.js"></script>
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


<div id="wrap" align="center">
	<h1>게시글 등록</h1>
	
		<form action="freeBoardWrite.do" method="post" name="frm">
		<input type="hidden" name="num" value="${param.num}">
		<table class="table table-condensed">
			<tr>
				<th>글쓴이</th>
				<td><input type="text" name="name" >* 필수 </td>
			</tr>

			<tr>
				<th>제목</th>
				<td><input type="text" name="title" size="70" >* 필수</td>
			</tr>
		
			<tr>
				<th>내용</th>
				<td><textarea rows="15" cols="70" name="contents"></textarea>* 필수 </td>
				
			</tr>
		
		</table>
		
		<input type="submit" value="수정" onclick="return updateCheck()">
		</form>


</div>
</div>
</body>
</html>




