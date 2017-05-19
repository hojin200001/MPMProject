<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css?var=1">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css?var=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/board/freeBoard.js?var=2"></script>
<title>Insert title here</title>

</head>
<body>
<!-- 부트스트랩에서 비율 축소시켜서 임의로 컨테이너 사이즈 조정 -->
<div class="container" style="width: 1300px;">
	 <div class="header">
  		<div class="searchArea">
  			<dir class="searchs">
  				<img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로" style="margin-top: 30px;"/>
  				<div class="serachs_div">
	  				<input type="text" alt="전체검색" class="searchText">
	  				<img src="img/main/btn_search.gif" alt="홈으로" style="float: left;"/></input>
  				</div>
  			</dir>
  		</div>	
    <!-- end .header -->
    </div>
	<nav style="margin-top: 20px;">
	  <ul id="menu">
	    	<c:choose>
		  		<c:when test="${userInfo == 1}">
					<li><a href="nomalMain.do">홈으로</a></li>
		  			<li><a href="comBoardList.do">일자리찾기</a></li>
				    <li><a href="nomalBoardList.do">일자리등록정보</a>
				    	<ul>
				    		<li><a href="nomalBoardList.do">구직 등록 현황</a></li>
				    		<li><a href="nomalWriteForm.do">구직 등록하기</a></li>	
				    	</ul></li>
		  		</c:when>
		  		<c:when test="${userInfo ==2}">
					<li><a href="comMain.do">홈으로</a></li>
		  			<li><a href="comSearch.do">인력찾기</a></li>
					<li><a href="comBoardList.do">구직 정보</a>
					<ul>
						<li><a href="comBoardList.do">구직 등록 현황</a></li>
						<li><a href="comWriteForm.do">구직 등록하기</a></li>
					</ul></li>
		  		</c:when>
		  		<c:otherwise>
					<li><a href="comMain.do">홈으로</a></li>
		  			<li><a href="comSearch.do">인력찾기</a></li>
					<li><a href="comBoardList.do">구직 정보</a>
					<ul>
						<li><a href="comBoardList.do">구직 등록 현황</a></li>
						<li><a href="comWriteForm.do">구직 등록하기</a></li>
					</ul></li>
		  		</c:otherwise>
		  	</c:choose>
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
	
	<div class="titleImage">
  			<img class="tImage" src="img/free/success-health-header-1280x200-2.jpg" style="width: 100%;"/>
  	</div>
  	
  	<div align="center">
		<form action="freeBoardUpdate.do" method="post" name="frm">
		<input type="hidden" name="num" value="${param.num}">
		<table class="table table-condensed">
			<tr>
				<th>글쓴이</th>
				<td><input type="text" name="createName" value="${freeBoard.createName}" readonly="readonly"> </td>
			</tr>

			<tr>
				<th>제목 *</th>
				<td><input type="text" name="title" size="70" value="${freeBoard.title}"></td>
			</tr>
		
			<tr>
				<th>내용 *</th>
				<td><textarea rows="15" cols="70" name="conValue">${freeBoard.conValue}</textarea> </td>
				
			</tr>
		
		</table>
		
		<input type="submit" value="수정" onclick="return updateCheck()">
		</form>
	</div>	
	<dir class="footer">
		<div class="copy">
		<div class="company" style="float: left; width: 50% ">
			<p>(주)MPM 네트웍스</p>
			<address>
				서울특별시 강남구 테헤란로 9832 동관 201층&nbsp;(주)MPM 네트웍스 <span>|</span> 공동 대표이사 : 김태완 박주영 박영환<br />
				<em>사업자등록번호 : 617-812-48252234 <span>|</span> 부가통신사업 : 제17021047호 <span>|</span> 통신판매업신고 : 제2017-서울강남-3543525호<br />
				직업정보제공사업 신고번호 : 서울강남 제2017-30호</em>
			</address>
		</div>
		<div class="customer" style="float: left; width: 50% ">
			고객지원<br>
			평일 : 09:00 ~ 18:00 (점심12~13시), 토요일 : 09:00 ~ 13:00<br>
			전화 : 1919-82828<br>
			FAX : 02-1919-8219<br>
			<a href="mailto:help@MPM.co.kr">help@MPM.co.kr</a><br>
			<a href="#">자주묻는 질문보기</a><br>
			<a href="#">온라인 문의</a><br>
			<a href="#">상담톡</a><br>
		</div>
		<p class="copyright">
			<span>Copyright &copy; </span> <strong>(주)MPM 네트웍스.</strong> <span>All Rights Reserved.</span>
		</p>
		</div>
	</dir>
</div>		

</body>
</html>