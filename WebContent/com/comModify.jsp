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
<link rel="stylesheet" type="text/css" href="css/main/public_header.css">
<link rel="stylesheet" type="text/css" href="css/main/SkyBanner.css">
<link rel="stylesheet" type="text/css" href="css/com/comWrite_con.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- 다음지도 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=5df6011222b3cbeedfefde1c00f1b101&libraries=services"></script>
<title>Insert title here</title>

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
			<li><a href="#">인력찾기</a></li>
			<li><a href="comBoardList.do">구직 정보</a>
				<ul>
					<li><a href="comBoardList.do">구직 등록 현황</a></li>
					<li><a href="comWriteForm.do">구직 등록하기</a></li>
				</ul></li>
			<li><a href="#">게시판</a>
				<ul>
					<li><a href="freeBoardList.do">자유게시판</a></li>
					<li><a href="#">후기게시판</a></li>
				</ul></li>
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
			<span onclick="location.href='index.do'">홈</span>> <span
				onclick="location.href='comMain.do'">업체메인</span>> <span
				onclick="location.href='comBoardList.do'">구인등록 현황</span>> <span
				onclick="location.href='comWriteForm.do'" style="font-weight: bold;">구인등록</span>
		</div>
		<div class="contents_top2" style="padding-top: 10px">
			<div class="contents_top2_1">
				<span class="top2_1">구인등록 페이지</span>
			</div>
			<div class="contents_top2_2">
				<input type="button" value="구직등록하기"
					onclick="location.href='comWriteForm.do'">
			</div>
		</div>
		<form action="comWrite.do">
			<input type="hidden" name="comId" value="${user.id}"> <input
				type="hidden" name="comName" value="${user.name}"> <input
				type="hidden" name="addr2" value="" id="hiddenAddr">
			<table>
				<tr class="trs">
					<td class="td_area_1" colspan="2"><span>모집공고 제목 : </span> <input
						type="text" name="ctitle" placeholder="제목을 입력하세요"></td>
				</tr>
				<tr class="trs">
					<td class="td_area_2" colspan="2"><span>접선장소 설정</span></td>
				</tr>
				<tr style="border: none;">
					<td class="td_area_3" rowspan="2">
						<div class="td_area_3_map" id="map"></div>
						<div>
							위치 좌표<input id="addr" type="text" name="cxy" readonly="readonly">
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
										placeholder="주소" name="carea"> <input type="button"
										onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
								</div>
								<div class="td_area_5_div1_2">
									<span>＊상세주소 : </span> <input type="text" id="address2"
										placeholder="상세주소" name="carea2">
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
							name='cjob'>
								<option value='전체' selected>전체</option>
								<option value='거푸집기능'>거푸집기능</option>
								<option value='건설기계기술'>건설기계기술</option>
								<option value='건축도장기능'>건축도장기능</option>
								<option value='건축목공기능'>건축목공기능</option>
								<option value='금속'>금속</option>
								<option value='금형기술'>금형기술</option>
								<option value='기계기'>기계기술</option>
								<option value='기계정비'>기계정비</option>
								<option value='기계조립'>기계조립</option>
								<option value='도배기능'>도배기능</option>
								<option value='미장기능'>미장기능</option>
								<option value='배관'>배관</option>
								<option value='석공'>석공</option>
								<option value='연삭기능'>연삭기능</option>
								<option value='용접기술'>용접기술</option>
								<option value='유리시공'>유리시공</option>
								<option value='일반기계'>일반기계</option>
								<option value='전기공사'>전기공사</option>
								<option value='토목'>토목</option>
								<option value='포장'>포장</option>
						</select>
					</span></td>
				</tr>
				<tr>
					<td class="td_area_7"><span>경력사항</span></td>
					<td class="td_area_9"><span> <input type="radio"
							name="ccarrer" value="0" checked="checked">없음 <input
							type="radio" name="ccarrer" value="1">1년이하 <input
							type="radio" name="ccarrer" value="2">1~3년 <input
							type="radio" name="ccarrer" value="3">3년이상
					</span></td>
				</tr>
				<tr>
					<td class="td_area_7"><span>업무 소요일</span></td>
					<td class="td_area_9"><span> <input
							style="text-align: right; width: 100px;" type="text" name="cday"
							placeholder="업무 진행일 입력">
					</span></td>
				</tr>
				<tr>
					<td class="td_area_7"><span>업무기간</span></td>
					<td class="td_area_9"><span> <label for="txtStartDt">시작일</label><input
							type="text" id="txtStartDt" name="cstartDay" value=""
							style="border: 1px solid #d7d7d7;" readonly placeholder="클릭해주세요">
							<label for="txtEndDt">종료일</label><input type="text" id="txtEndDt"
							name="cendDay" value="" style="border: 1px solid #d7d7d7;"
							readonly placeholder="클릭해 주세요">
					</span></td>
				</tr>
				<tr>
					<td class="td_area_7"><span>요구인원</span></td>
					<td class="td_area_9"><span> <input type="text"
							name="cwokers" style="text-align: right; width: 100px;"
							placeholder="필요한 인원 입력">
					</span></td>
				</tr>
				<tr>
					<td class="td_area_7"><span>급여</span></td>
					<td class="td_area_9"><span> <input type="text"
							name="cpay" style="text-align: right; width: 100px;"
							placeholder="일 급여 입력">
					</span></td>
				</tr>
			</table>
			<div class="textAreas">
				<textarea rows="10" name="ctext" placeholder="상세 내용을 작성해 주세요"></textarea>
			</div>
			<div class="btnArea">
				<input type="submit" value="등록하기"> <input type="button"
					value="취소하기">
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