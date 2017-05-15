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
<link rel="stylesheet" type="text/css" href="css/main/public_header.css?var=1">
<link rel="stylesheet" type="text/css" href="css/main/SkyBanner.css?var=1">
<link rel="stylesheet" type="text/css" href="css/com/comBoardList.css?var=1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
 <div class="header">
  				<div class="searchArea">
  			<dir class="searchs">
  				<img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로"/>
  				<div class="serachs_div">
	  				<input type="text" alt="전체검색" class="searchText"><img src="img/main/btn_search.gif" alt="홈으로" style="float: left;"/></input>
  				</div>
  			</dir>
  		</div>	
    <!-- end .header --></div>
   <nav style="margin-top: 20px;">
	  <ul id="menu">
	    <li><a href="index.do">홈으로</a></li>
	    <li><a href="#">인력찾기</a></li>
	    <li><a href="comBoardList.do">구직 정보</a>
	    	<ul>
	    		<li><a href="comBoardList.do">구직 등록 현황</a></li>
	    		<li><a href="comWriteForm.do">구직 등록하기</a></li>	
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
   				<li><a href="comBoardList.do">구직등록 현황</a></li>
   				<li><a href="comWriteForm.do">구직등록 하기</a></li>
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
			<input type="button" value="구직등록하기" onclick="location.href='comWriteForm.do'">
		</div>
	</div> 
	<div class="contents_top3">
		<div class="contents_top3_div">
			<c:choose>
				<c:when test="${search_type eq 1}">
						<a class="on" id="contents_top_id"><img src="img/com/check.png">등록일순</a>
						<a class="off" id="contents_top_id2" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=2"><img src="img/com/point.png">마감일순</a>
						<a class="off" id="contents_top_id3" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=3"><img src="img/com/point.png">신청인원순</a>
				</c:when>
				<c:when test="${search_type eq 2}">
						<a class="off" id="contents_top_id" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=1"><img src="img/com/point.png">등록일순</a>
						<a class="on" id="contents_top_id2"><img src="img/com/check.png">마감일순</a>
						<a class="off" id="contents_top_id3" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=3"><img src="img/com/point.png">신청인원순</a>
				</c:when>
				<c:when test="${search_type eq 3}">
						<a class="off" id="contents_top_id" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=1"><img src="img/com/point.png">등록일순</a>
						<a class="off" id="contents_top_id2" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=2"><img src="img/com/point.png">마감일순</a>
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
			<th>등록 글 제목</th>
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
						<td>${c.cday} 일</td>
						<td>${c.cpay}</td>
						<td style="font-size: 12px;font-weight: bold;"><fmt:formatDate value="${c.createDay}" pattern="yyyy-MM-dd"/></td>
						<td style="font-size: 12px;font-weight: bold;">${c.cendDay}</td>
						<c:forEach items="${icbrList}" var="d">
							<c:choose>
								<c:when test="${c.cnum == d.cnum}">
									<c:choose>
										<c:when test="${d.count > c.cwokers}">
											<td><span style="color:red;">${d.count}</span>/${c.cwokers}명</td>
										</c:when>
										<c:otherwise>
											<td><span>${d.count}</span>/${c.cwokers}명</td>
										</c:otherwise>
									</c:choose>
								</c:when>
								<c:otherwise>
									<td> 0/${c.cwokers}명</td>
								</c:otherwise>						
							</c:choose>
						</c:forEach>
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
</body>
</html>