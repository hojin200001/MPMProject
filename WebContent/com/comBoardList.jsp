<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<title>Insert title here</title>
<style type="text/css">
.SkyBanner{
	position: fixed; 
	left:20px; 
	width: 130px; 
	border:1px solid #0f4579;
	background-color: #f8f8f8;
}
.SkyBanner>div>div>img:HOVER{
	cursor: pointer;
}
.Sky_blank{
	height: 20px; 
	border: 1px solid #0f4579;
	background-color: #0f4579;
}
.Sky_contents{
	border-bottom: 1px solid #949494;
}
.Sky_contents>ul{
	font-size: 13px;
}
.Sky_contents>ul>li{
	margin-left: -20px;
}
.Sky_contents>ul>li>a{
	color: #000;
	text-decoration:none;
}

.Sky_topinfo{
	height: 30px;
	background-color: #fff;
	font-size: 14px;
	font-weight: bold;
	padding-top: 5px;
	padding-left: 5px;
}
.Sky_topinfo>span>a{
	color: #ff5400;
}
.Sky_info{
	border-top: 1px solid #949494;
	border-bottom: 1px solid #949494;
}
.Sky_info>a{
	text-decoration: none;
}
.Sky_info_p{
	text-align: center;
	font-size: 12px;
}
#Sky_info_p2, #Sky_info_p3, #Sky_info_p4{
	margin-top: -10px;
	color:#000;
}
#Sky_info_p{
	color:#3973cb;
}
#Sky_info_p3{
	color: #999;
}
#Sky_info_p4>span{
	color:#717171;
}
.Sky_bottom{
	font-size:15px; 
	text-align: center;
}
/* 컨텐츠*/
.contents_top{
	padding-top: 5px;
	border-bottom: 1px solid #b5b5b5;
}
.contents_top>span{
	font-size: 12px;
	cursor: pointer;
}
.contents_top2{
	border-bottom: 3px solid #b5b5b5;
	font-size: 12px;
	height: 25px;
}
.contents_top2_1{
	width:49%;
	float: left;
}
.contents_top2_2{
	width: 49%; 
	float: right;
	text-align: right;
}
.contents_top2 .top2_1{
	font-size: 15px;
	font-weight: bold;
}
.top2_2>span{
	color:#ff5400;
}
.contents_top3{
	padding-top:12px;
	height: 20px;
	color: #959595;
	font-size: 12px;
}
.contents_top3>div>a:HOVER{
	cursor: pointer;
}
.contents_top3_div{
	width: 49%;
	float: left;
}
.contents_top3_div2{
	width: 49%;
	float: right;
	text-align: right;
	padding-bottom: 5px;
}
.contents_top3_div2>select{
	background-color: #fff;
	border: 1px solid #bbb;
}
#contents_top_id:HOVER, #contents_top_id2:HOVER, #contents_top_id3:HOVER{
	text-decoration:underline;
}
.contents_top3 a.on{
	color: #000;
	font-weight: bold;
	font-size: 13px;
}
.contents_bottom{
	display: inline-block;
	width: 30px;
	height: 24px;
	border: 1px solid #bbb;
	padding: 6px 0 0;
    margin: 0 2px;
    text-align: center;
    border-radius: 2px;
    text-decoration: none;
    color: #000;
}
.contents_bottom:HOVER{
	font-weight: bold;
    border: 1px solid #83c9ff;
    color: #267cd3;
}

#on{
	font-weight: bold;
    border: 1px solid #83c9ff;
    color: #267cd3;
	
}
/* 테이블 */
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border-bottom: 1px solid #b5b5b5;
	padding: 15px;
	text-align: center;
}
td>a{
	text-decoration: none;
}
.tr_contents:HOVER {
	background-color: #DAFFFF;
}
.tr_contents>td>a:HOVER{
	cursor: pointer;
}
.tr_contents_2{
	text-align: left;
}
</style>

</head>
<body>
<div class="container">
 <div class="header">
  		<div class="searchArea">
  			<div class="imgArea">
  				<img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로"/>
  			</div>
  		</div>	
    <!-- end .header --></div>
   <nav style="margin-top: 20px;">
	  <ul id="menu">
	    <li><a href="index.do">홈으로</a></li>
	    <li><a href="#">인력찾기</a></li>
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
     <div class="SkyBanner">
   		<div class="Sky_blank" ></div>
   		<div class="Sky_contents">
   			<ul>
   				<li><a href="#">구인검색하기</a></li>
   				<li><a href="comBoardList.do">구직등록 상세현황</a></li>
   				<li><a href="#">구직등록 하기</a></li>
   			</ul>
   		</div>
   		<div class="Sky_topinfo"><span>오늘본 공고 <a href="">0</a></span></div>
   		<div class="Sky_info">
   			<a href="">
	   			<p class="Sky_info_p" id="Sky_info_p">거성산업</p>
	   			<p class="Sky_info_p" id="Sky_info_p2">용접분야</p>
	   			<p class="Sky_info_p" id="Sky_info_p3">서울 관악구</p>
	   			<p class="Sky_info_p" id="Sky_info_p4">일수 <span>무관</span></p>
   			</a>
   		</div>
   		<div class="Sky_bottom">
   			<p>전체보기 1/1</p>
   		</div>
   		<div>
   			<div><img alt="이전공고" src="img/main/up.png" style="float: left; width: 50%;"></div>
   			<div><img alt="다음공고" src="img/main/down.png"style="width: 50%;"></div>
   		</div>
   </div>
	<div class="contents_top"><span onclick="location.href='index.do'">홈</span>><span onclick="location.href='comMain.do'">업체메인</span>><span onclick="location.href='comBoardList.do'" style="font-weight: bold;">구인등록 현황</span></div>
	<div class="contents_top2" style="padding-top: 10px">
		<div class="contents_top2_1">
			<span class="top2_1">구인등록 현황</span>ㅣ<span class="top2_2">총 <span>${totalPage}</span> 건</span>
		</div>
		<div class="contents_top2_2">
			<button>구직 등록하기</button>
		</div>
	</div> 
	<div class="contents_top3">
		<div class="contents_top3_div">
			<c:choose>
				<c:when test="${search_type eq 1}">
						<a class="on" id="contents_top_id"><img src="img/com/check.png">등록일순</a>
						<a class="" id="contents_top_id2" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=2"><img src="img/com/point.png">마감일순</a>
						<a class="" id="contents_top_id3" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=3"><img src="img/com/point.png">신청인원순</a>
				</c:when>
				<c:when test="${search_type eq 2}">
						<a class="" id="contents_top_id" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=1"><img src="img/com/point.png">등록일순</a>
						<a class="on" id="contents_top_id2"><img src="img/com/check.png">마감일순</a>
						<a class="" id="contents_top_id3" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=3"><img src="img/com/point.png">신청인원순</a>
				</c:when>
				<c:when test="${search_type eq 3}">
						<a class="" id="contents_top_id" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=1"><img src="img/com/point.png">등록일순</a>
						<a class="" id="contents_top_id2" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=2"><img src="img/com/point.png">마감일순</a>
						<a class="on" id="contents_top_id3"><img src="img/com/check.png">신청인원순</a>
				</c:when>
				
			</c:choose>
		</div>
		<div class="contents_top3_div2">
			<form action="comBoardList.do" method="post">
			<select name="boardsPerPage" onchange="this.form.submit();">
				<c:choose>
					<c:when test="${PerPage eq 5 or null eq PerPage}">
						<option value="5" selected="selected">5개씩 보기</option>
						<option value="10">10개씩 보기</option>
						<option value="20">20개씩 보기</option>
					</c:when>
					<c:when test="${PerPage eq 10}">
						<option value="5" >5개씩 보기</option>
						<option value="10" selected="selected">10개씩 보기</option>
						<option value="20">20개씩 보기</option>
					</c:when>
					<c:when test="${PerPage eq 20}">
						<option value="5" >5개씩 보기</option>
						<option value="10">10개씩 보기</option>
						<option value="20" selected="selected">20개씩 보기</option>
					</c:when>
				</c:choose>
			</select>
		</form>
		</div>
	</div>
	<table>
		<c:choose>
			<c:when test="${comBoard ne '[]'}">
		<tr style="background-color:  #f2f2f2">
			<th>근무지</th>
			<th>업무내용/신청인원</th>
			<th>업무기간</th>
			<th>급여</th>
			<th>등록일</th>
			<th>마감일</th>
			<th>신청인원</th>
		</tr>
				<c:forEach items="${comBoard}" var="c">
					<tr class="tr_contents">
						<td>${c.carea}</td>
						<td class="tr_contents_2"><a href="comView.do?cnum=${c.cnum}">${c.ctitle}</a></td>
						<td>${c.comName}</td>
						<td>${c.cpay}</td>
						<td><fmt:formatDate value="${c.createDay}" pattern="yyyy-MM-dd"/></td>
						<td></td>
						<td> 0/${c.cwokers}명</td>
					</tr>
					</c:forEach>
					<tr>
			   		<td colspan="5">
					<c:if test="${start != 1}">
						<a class="contents_bottom" id="" href="boardList.do?page=1&type=${type}&keyword=${keyword}">처음</a>
						<a class="contents_bottom" id="" href="boardList.do?page=${start-1}&type=${type}&keyword=${keyword}">이전</a>
					</c:if>
					<c:forEach begin="${start}" end="${end <last? end: last}" var="i">
						
						<c:choose>
							<c:when test="${i == current }">
								<a class="contents_bottom" id="on">${i}</a>
							</c:when>
							<c:otherwise>
								<a class="contents_bottom" id="" href="comBoardList.do?page=${i}&boardsPerPage=${PerPage}">${i}</a>				
							</c:otherwise>
						</c:choose>
							
					</c:forEach>
					
					<c:if test="${end < last}">
						<a class="contents_bottom" id="" href="boardList.do?page=${end+1}&type=${type}&keyword=${keyword}">다음</a>
						<a class="contents_bottom" id="" href="boardList.do?page=${last}&type=${type}&keyword=${keyword}">마지막</a>
					
					</c:if>
					
					</td>
			</c:when>
			<c:otherwise>
				<td colspan="5"> 등록된 구직등록 정보가 없습니다. 구직정보를 등록해 주세요.</td>
			</c:otherwise>
		</c:choose>
		
   
   </table>
	<!-- <tr>
		<td colspan="5" style="text-align:right;">
			<select id="type" name="type" size="1">
				<option value="1">제목</option>
				<option value="2">내용</option>
				<option value="3">제목 + 내용</option>
				<option value="4">작성자</option>
			</select>
			검색어 <input type="text" name="keyword">
			<input type="submit" value="검색">
	</tr> --> 

</div>
</body>
</html>