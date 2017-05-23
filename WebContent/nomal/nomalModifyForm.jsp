<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css?var=1">
<link rel="stylesheet" type="text/css" href="css/main/SkyBanner.css?var=1">
<link rel="stylesheet" type="text/css" href="css/com/comView.css?var=1">

<title>게시물 상세보기</title>
<style type="text/css">
.textbottom_div_1{
	width: 80%;
	margin: 0 auto;
	overflow:auto; 
}
.textbottom_div_1_1{
	margin-top: 10px;
	background-color: #0f4579;
	border-radius: 10px;
}
.textbottom_div_1_1>span{
	color: #fff;
}
.textbottom_div_1_1_1{
	font-size: 14px;
}
.textbottom_div_1_1_2{
	font-size: 14px;
}
.textbottom_div_1_1_3{
	font-size: 13px;
}
.textbottom_div_re{
	width: 100%;
	text-align: right;
}
.textbottom_div_re_span1{
	margin-right: 20px;
}
.textbottom_div_re_span2{
	color: red;
}
.textbottom_div_re_span3{
	margin-right: 150px;
}
</style>
<script type="text/javascript">
function titleCheck(){
	if(document.frm.ntitle.value.length == 0){
	   alert('제목을 입력해주세요.... 딱 보면 모르냐?');
	   frm.ntitle.focus();
	   return;
	   }else{
	   $("#nomalForm").submit();}
	}
</script>
</head>
<body>
	
	<div class="container">
		<div class="header">
			<div class="searchArea">
				<div class="imgArea">
					<img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로" />
				</div>
			</div>
			<!-- end .header -->
		</div>
	<nav style="margin-top: 20px;">
		<ul id="menu">
			<li><a href="index.do">홈으로</a></li>
			<li><a href="nomalSearch.do">일자리찾기</a></li>
			<li><a href="nomalBoardList.do">일자리등록정보</a>
				<ul>
					<li><a href="nomalBoardList.do">구인 등록 현황</a></li>
					<li><a href="nomalWriteForm.do">구인 등록하기</a></li>	
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
			<div class="Sky_blank"></div>
			<div class="Sky_contents">
				<ul>
					<li><a href="#">구인검색하기</a></li>
					<li><a href="comBoardList.do">구직등록 현황</a></li>
					<li><a href="#">구직등록 하기</a></li>
				</ul>
			</div>
			<div class="Sky_topinfo">
				<span>오늘본 공고 <a href="">0</a></span>
			</div>
			<div class="Sky_info">
				<a href="">
					<p class="Sky_info_p" id="Sky_info_p">거성산업</p>
					<p class="Sky_info_p" id="Sky_info_p2">용접분야</p>
					<p class="Sky_info_p" id="Sky_info_p3">서울 관악구</p>
					<p class="Sky_info_p" id="Sky_info_p4">
						일수 <span>무관</span>
					</p>
				</a>
			</div>
			<div class="Sky_bottom">
				<p>전체보기 1/1</p>
			</div>
			<div>
				<div>
					<img alt="이전공고" src="img/main/up.png"
						style="float: left; width: 50%;">
				</div>
				<div>
					<img alt="다음공고" src="img/main/down.png" style="width: 50%;">
				</div>
			</div>
			<!--end SkyBanner -->
		</div>
		<div class="contents_top">
			<span onclick="location.href='index.do'">홈</span> > <span
				onclick="location.href='nomalMain.do'">구직자메인</span> > <span
				onclick="location.href='nomalBoardList.do'">구인 등록 현황</span> > <span
				onclick="location.href='nomalView.do'" style="font-weight: bold;">구인등록 상세페이지</span>
		</div>
		<div class="contents_top2" style="padding-top: 10px; padding-bottom:45px;">
			<div class="contents_top2_1">
				<span class="top2_1" style="font-size: 20px;">구직등록 상세 페이지</span>
			</div>
			<div class="contents_top2_2">
				<input type="button"  class="btn btn-primary" value="작성하기"
					onclick="location.href='nomalWriteForm.do'">
			</div>
		</div>
	<div style="background-color: #ebedee">

<form action="nomalModify.do" method="post" id="nomalForm" name="frm">
<input type="hidden" name="nnum" value="${nomalBoard.nnum}">
<table class="table table-bordered">
	<thead>
		<tr>
			<th class="info" style="width:300px; font-size: 23px;">모집공고 제목</th>
			<th class="active" colspan="3" style="font-size: 18px;">
			<input type="text" class="form-control" name="ntitle" placeholder="" value="${nomalBoard.ntitle}">
			</th>
		</tr>
	</thead>
	
	<tbody>
		<tr>
			<th class="info" scope="row" style="width:300px; font-size: 23px;">전화번호</th>
			<td colspan="3" style="font-size: 15px;">
			<input type="text" class="form-control" name="nemail" placeholder="" value="${nomalBoard.nphone}" readonly="readonly">
			</td>
		</tr>
		
		<tr>
			<th class="info" scope="row" style="width:300px; font-size: 23px;">작성일</th>
			<td style="font-size: 15px;"><fmt:formatDate value="${nomalBoard.njoinDay}" pattern="MM월dd일 HH시mm분ss"/></td>
			<td class="bg-danger" style="width:80px;">조회수</td>
			<td class="bg-danger" style="width:60px;">${nomalBoard.ncount}</td>
		</tr>
		
		<tr>
			<th class="info" scope="row" style="width:300px; font-size: 23px;">직업</th>
			<td colspan="3" style="font-size: 15px;">
				<select class="form-control" name='njob' id='njobsel'>
					<option value='' selected>-- 다중선택 --</option>
				</select>
			</td>
		</tr>
		
		<tr>
			<th class="info" scope="row" style="width:300px; font-size: 23px;">경력</th>
			<td colspan="3" style="font-size: 15px;">
			<p style="font-size: 13px">
				없음<input name="ncareer" type="radio" name="radiobox" value="없음"/> 
				1년<input name="ncareer" type="radio" name="radiobox" value="1년"/> 
				2년<input name="ncareer" type="radio" name="radiobox" value="2년"/> 
				3년<input name="ncareer" type="radio" name="radiobox" value="3년"/>   
			</p>
			</td>
		</tr>
	</tbody>
</table>

	<div class="textbottom" style="margin-bottom: 20px;">
		<div style="width: 800px; height: 150px;">
			<textarea class="form-control" rows="10" name="ntext" placeholder="상세 내용을 작성해 주세요"
			style="text-align:left; width: 800px; height: 150px; font-size: 14px;">
			${nomalBoard.ntext}
			</textarea>
		</div>
	
		<div class="textbottom_button">
			<c:choose>
				<c:when test="${user.id eq nomalBoard.nomalId}">
					<input type="button" class="btn btn-primary" value="수정하기" onclick="titleCheck()">
				</c:when>
			</c:choose>
			<input type="button" class="btn btn-primary" value="목록으로" onclick="location.href='nomalBoardList.do'">
		</div>
		</form>

	</div>
		</div>
	</div>
	
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
	<script>
		$(window).load(
				function() {
					var select = '${nomalBoard.njob}'+"";
					var radio = '${nomalBoard.ncareer}'+"";
					$('input:radio[name=ncareer]:input[value=' + radio + ']').attr("checked", true);
					$.ajax({
						url : "json/job.json",
						dataType : "json",
						success : function(result) {
							$.each(result.job, function(i, d) {
								if(d["value"] == select){
									$("#njobsel").append(
											"<option value=" + d["value"] + " selected='selected'>"
													+ d["value"] + "</option>");
								}else{
									$("#njobsel").append(
											"<option value=" + d["value"] + ">"
													+ d["value"] + "</option>");
								}
								
							});
						}
					});
				});
	</script>
</body>
</html>
