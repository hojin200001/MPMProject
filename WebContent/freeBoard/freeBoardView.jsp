<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta name="viewport" content="width=device-width">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css?var=1">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css?var=1">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script type="text/javascript" src="js/reply/freeBoardReply.js"></script>
<script type="text/javascript" src="js/board/freeBoard.js?var=1"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style type="text/css">

.reply{
	border: 1;
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
/* th,td{
	border-bottom: 1px solid #ddd;
	width: 100%;
}
 */
</style>
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
  	<br>

  	<div class="table">

<<<<<<< HEAD
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
	
	<div class="reply">
	  	<div class="table">
	
		<table class="table table-condensed">
			<tr>
				<td colspan="4" style="font-size: 25px" >${freeBoard.title}</td>
			</tr>
			<tr>
				<td>글쓴이 | ${freeBoard.createName}</td>	
				<td>조회수 | ${freeBoard.freeCount}</td>
				<td>작성일 | <fmt:formatDate value="${freeBoard.createDay}" pattern="yyyy-MM-dd"/></td>
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
		
		<div class="reply">
<!-- 			여기부터 댓글div -->
			<c:forEach items="${freereply}" var="freereply">
			<div class="replyList">
<!-- 				댓글 리스트 출력부분 -->
			<dl>
				<dd>
				${freereply.reName}  | ${freereply.reDay}
				<c:choose>
					<c:when test="${user.id eq freereply.reName}">
						<button class="btn btn-primary btn-xs"
								onclick="fr_replyDelete(${freereply.reNum},${freeBoard.num})" 
								style="float: right; background-color: #fff;
													 text-decoration: underline;
													 border: none;
													 cursor: pointer; color: #0066ff;">삭제</button> 
						<button class="btn btn-primary btn-xs" data-toggle="collapse" 
								data-target="#dd${freereply.reNum}" aria-expanded="false" 
								aria-controls="dd${freereply.reNum}"
								style="float: right; background-color: #fff;
													 text-decoration: underline;
													 border: none;
													 cursor: pointer; color: #0066ff;">
								수정	| </button>		
						
				
<%-- 						<a href="#" style="float: right" onclick="fr_replyUpdate(${freereply.reNum})">수정  |</a>	 --%>
			<%-- 			<a href="#" onclick="replyDelete.do?num=${freeBoard.num}&reNum=${freerply.reNum}" style="float: right;">삭제</a>  <a style="float: right">수정  |</a> --%>
			<%-- 			<a href="replyDelete.do?num=${freeBoard.num}&reNum=${freerply.reNum}" style="float: right;">삭제</a>  <a style="float: right">수정  |</a> --%>
			<%-- 			<a href="#" style="float: right" onclick="fr_replyDelete('<c:out value="${freereply.reNum}"/>, <c:out value="${freeBoard.num}"/>')">삭제  </a>  <a style="float: right">수정  |</a>	 --%>
					</c:when>
				</c:choose>
				</dd>
<!-- 				수정을 누르면 숨겨져있던 이부분이 내려옴 -->
				<dt>${freereply.teText}</dt>
				<div class="collapse" id="dd${freereply.reNum}">
					<div class="well">
						<form name="form0" action="replyUpdate.do" method="post">
					        <input type="hidden" name="num" value="<c:out value="${freereply.num}"/>"> 
					        <input type="hidden" name="reNum" value="${freereply.reNum}"> 
					        <textarea name="teText">${freereply.teText}</textarea>
							<input type="submit" value="저장"	 style="background-color: #fff;
																  	 text-decoration: underline;
																  	 border: none;
																  	 cursor: pointer; color: #0066ff;">
<%-- 					        <button data-toggle="collapse" 
									data-target="#dd${freereply.reNum}" aria-expanded="false" 
									aria-controls="dd${freereply.reNum}"
									style="background-color: #fff;
										   text-decoration: underline;
										   border: none;
										   cursor: pointer; color: #0066ff;">
								취소</button>	 --%>
						</form>
				   </div>   
				</div>
			</dl>
	
			</div>
			
<!-- 			<div id="replyDiv" style="width: 99%; display:none"> -->
<%-- 			    <form name="${freereply.reNum}" action="replyUpdate.do" method="post"> --%>
<%-- 			        <input type="hidden" name="num" value="<c:out value="${freereply.num}"/>">  --%>
<%-- 			        <input type="hidden" name="reNum" value="${freereply.reNum}">  --%>
<%-- 			        <textarea name="teText" rows="3" cols="60" maxlength="500" >${freereply.teText}</textarea> --%>
<!-- 					<input type="submit" value="저장1"> -->
<!-- 					<a href="#" onclick="fn_replyUpdateSave()">저장</a> -->
<!-- 			        <a href="#" onclick="fn_replyUpdateCancel()">취소</a> -->
<!-- 				</form> -->
<!-- 			</div>	 -->
			
			</c:forEach>
<!-- 			댓글작성하는 부분 -->
			<form action="replyWrite.do"  method="post" name="frm">
			<input type="hidden" name="reName" value="${user.id}"> 
			<input type="hidden" name="num" value="${freeBoard.num}">
				<textarea name="teText" placeholder="댓글을 달아주세요." onfocus="loginCheck('${user}')"></textarea>
				<input type="submit" value="댓글">
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