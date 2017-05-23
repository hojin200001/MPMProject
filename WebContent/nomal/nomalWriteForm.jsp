<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css?var=2">
<link rel="stylesheet" type="text/css" href="css/main/SkyBanner.css">
<link rel="stylesheet" type="text/css" href="css/com/comWrite_con.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- 다음지도 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=5df6011222b3cbeedfefde1c00f1b101&libraries=services"></script>
<title>Insert title here</title>
<script type="text/javascript">
function titleCheck(){
	if(document.frm.ntitle.value.length == 0){
	   alert('제목을 입력해주세요.');
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
  			<dir class="searchs">
  				<img class="imageLogo" src="img/main/logoB_07.png" style="margin-top: 45px" alt="홈으로"/>
  				<div class="serachs_div">
	  				<input type="text" alt="전체검색" class="searchText" style="margin-top: 17px; ">
	  				<img src="img/main/btn_search.gif" alt="홈으로" style="float: left; margin-top: 17px; margin-left: 0px;"/></input>
  				</div>
  			</dir>
  		</div>
    <!-- end .header --></div>
   <nav style="margin-top: 20px;">
	  <ul id="menu">
	    	<li><a href="nomalMain.do">홈으로</a></li>
			<li><a href="nomalSearch.do">일자리찾기</a></li>
			<li><a href="nomalBoardList.do">일자리등록정보</a>
				<ul>
					<li><a href="nomalBoardList.do">구직 등록 현황</a></li>
					<li><a href="nomalWriteForm.do">구직 등록하기</a></li>
				</ul>
			</li>
			<li><a href="#">게시판</a>
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
				onclick="location.href='nomalMain.do'">일반메인</span> > <span
				onclick="location.href='nomalBoardList.do'">구직등록 현황</span> > <span
				onclick="location.href='nomalWriteForm.do'" style="font-weight: bold;">구직등록</span>
		</div>
		<div class="contents_top2" style="padding-top: 10px">
			<div class="contents_top2_1">
				<span class="top2_1">구직등록 페이지</span>
			</div>
			<div class="contents_top2_2">
				<input type="button" value="구직등록하기"
					onclick="location.href='nomalWriteForm.do'">
			</div>
		</div>
		<form action="nomalWrite.do" id="nomalForm" name="frm">
			<input type="hidden" name="nomalId" value="${user.id}"> <input
				type="hidden" name="nomalName" value="${user.name}"> <input
				type="hidden" name="addr2" value="" id="hiddenAddr"><input
				type="hidden" name="email" value="${user.email}">
			<table>
				<tr class="trs">
					<td class="td_area_1" colspan="2"><span>구직정보 제목 : </span> <input
						type="text" name="ntitle" placeholder="제목을 입력하세요"></td>
				</tr>
				<tr class="trs">
					<td class="td_area_2" colspan="2"><span>희망지역 설정</span></td>
				</tr>
				<tr style="border: none;">
					<td class="td_area_3" rowspan="2">
						<div class="td_area_3_map" id="map"></div>
						<div>
							위치 좌표<input id="addr" type="text" name="nxy" readonly="readonly">
						</div>
					</td>
					<td class="td_area_4">
						<div class="td_area_4_div">
							<div class="td_area_4_div2" id="div2_1"
								onclick="td_area_4_div1()">
								<span>주소검색</span>
							</div>
							<div class="td_area_4_div2" id="div2_2"
								onclick="td_area_4_div2()">
								<span>역검색</span>
							</div>
						</div> 
						<div class="td_area_5">
							<div class="td_area_5_div1">
								<div class="td_area_5_div1_1">
									<span>＊주소검색 : </span> <input type="text" id="sample5_address"
										placeholder="주소" name="narea"> <input type="button"
										onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
								</div>
								<div class="td_area_5_div1_2">
									<span>＊상세주소 : </span> <input type="text" id="address2"
										placeholder="상세주소" name="narea2">
								</div>
							</div>
							<div class="td_area_5_div2">
								<div class="td_area_5_div2_1" onclick="td_area_5_div2_1()">
									<span>서울/수도권</span>
								</div>
								<div onclick="">
									<span>부산</span>
								</div>
								<div onclick="">
									<span>대구</span>
								</div>
								<div onclick="">
									<span>광주</span>
								</div>
								<div onclick="">
									<span>대전</span>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td class="td_area_6">
						<div class="td_area_6_div">
							<div class="td_area_6_div_1">
								<div class='td_area_6_div_1_div'>1호선</div>
								<div class='td_area_6_div_1_div'>2호선</div>
								<div class='td_area_6_div_1_div'>3호선</div>
								<div class='td_area_6_div_1_div'>4호선</div>
								<div class='td_area_6_div_1_div'>5호선</div>
								<div class='td_area_6_div_1_div'>6호선</div>
								<div class='td_area_6_div_1_div'>7호선</div>
								<div class='td_area_6_div_1_div'>8호선</div>
								<div class='td_area_6_div_1_div'>9호선</div>
								<div class='td_area_6_div_1_div'>인천1호선</div>
								<div class='td_area_6_div_1_div'>인천2호선</div>
								<div class='td_area_6_div_1_div'>분당선</div>
								<div class='td_area_6_div_1_div'>공항철도</div>
								<div class='td_area_6_div_1_div'>경의중앙선</div>
								<div class='td_area_6_div_1_div'>신분당선</div>
								<div class='td_area_6_div_1_div'>경춘선</div>
								<div class='td_area_6_div_1_div'>수인선</div>
								<div class='td_area_6_div_1_div'>에버라인</div>
								<div class='td_area_6_div_1_div'>의정부전철</div>
								<div class='td_area_6_div_1_div'>경강선</div>
							</div>
							<div class="td_area_6_div_2">
								<div class="td_area_6_div_2_1"></div>
								<div class="td_area_6_div_2_2"></div>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<table>
				<tr>
					<td class="td_area_7"><span>전공분야</span></td>
					<td class="td_area_9"><span> <select id='fruits'
							name='njob'>
								<option value='전체' selected>전체</option>
								<option value='거푸집기능사'>거푸집기능사</option>
								<option value='건설기계기술사'>건설기계기술사</option>
								<option value='건축도장기능사'>건축도장기능사</option>
								<option value='건축목공기능사'>건축목공기능사</option>
								<option value='관광통역안내사'>관광통역안내사</option>
								<option value='금속기사'>금속기사</option>
								<option value='금형기술사'>금형기술사</option>
								<option value='기계기술사'>기계기술사</option>
								<option value='기계정비산업기사'>기계정비산업기사</option>
								<option value='기계조립산업기사'>기계조립산업기사</option>
								<option value='도배기능사'>도배기능사</option>
								<option value='미장기능사'>미장기능사</option>
								<option value='배관산업기사'>배관산업기사</option>
								<option value='석공기능사'>석공기능사</option>
								<option value='연삭기능사'>연삭기능사</option>
								<option value='석공기능사'>석공기능사</option>
								<option value='용접기술사'>용접기술사</option>
								<option value='유리시공기능사'>유리시공기능사</option>
								<option value='일반기계기사'>일반기계기사</option>
								<option value='전기공사기사'>전기공사기사</option>
								<option value='전기산업기사'>전기산업기사</option>
								<option value='전자기사'>전자기사</option>
								<option value='토목기사'>토목기사</option>
								<option value='포장기사'>포장기사</option>
						</select>
					</span></td>
				</tr>
				<tr>
					<td class="td_area_7"><span>경력사항</span></td>
					<td class="td_area_9"><span> <input type="radio"
							name="ncarrer" value="없음" checked="checked">없음 <input
							type="radio" name="ccarrer" value="1년">1년 <input
							type="radio" name="ccarrer" value="2년">2년 <input
							type="radio" name="ccarrer" value="3년">3년
					</span></td>
				</tr>
				<tr>
					<td class="td_area_7"><span>업무 소요일</span></td>
					<td class="td_area_9"><span> <input
							style="text-align: right; width: 100px;" type="text" name="nday"
							placeholder="업무 진행일 입력">
					</span></td>
				</tr>
			</table>
			<div class="textAreas">
				<textarea rows="10" name="ntext" placeholder="상세 내용을 작성해 주세요"></textarea>
			</div>
			<div class="btnArea">
				<input type="button" value="등록하기" onclick="titleCheck()"> 
				<input type="button" value="취소하기">
			</div>
		</form>
	</div>
	<script type="text/javascript" src="js/com/comWrite_con.js"></script>
	<script type="text/javascript" src="js/com/calendar.js"></script>
	<script type="text/javascript" src="js/com/map.js"></script>
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