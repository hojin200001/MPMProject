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
<link rel="stylesheet" type="text/css" href="css/main/SkyBanner.css">
<link rel="stylesheet" type="text/css" href="css/com/conView.css">

<!-- 다음지도 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=5df6011222b3cbeedfefde1c00f1b101&libraries=services"></script>
<title>게시물 상세보기</title>
<style type="text/css">
.textbottom_div_1{
	width: 80%;
	margin: 0 auto;
}
.textbottom_div_1_1_1{
	font-size: 15px;
}
.textbottom_div_1_1_2{
	font-size: 14px;
}
.textbottom_div_1_1_2{
	font-size: 13px;
}
</style>
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
				onclick="location.href='comWriteForm.do'" style="font-weight: bold;">구직등록
				상세 페이지</span>
		</div>
		<div class="contents_top2" style="padding-top: 10px">
			<div class="contents_top2_1">
				<span class="top2_1">구직등록 상세 페이지</span>
			</div>
			<div class="contents_top2_2">
				<input type="button" value="되돌아가기"
					onclick="location.href='comBoardList.do'">
			</div>
		</div>
		<div style="background-color: #ebedee">
			<table>
				<tr>
					<td class="td_area_1" colspan="2"><span>모집공고 제목 : </span> <input
						type="text" name="ctitle" placeholder="제목을 입력하세요" value="${comBoard.ctitle}" readonly="readonly"></td>
				</tr>
				<tr class="trs">
					<td class="td_area_2" colspan="2"><span>접선장소</span></td>
				</tr>
				<tr style="border: none;">
					<td class="td_area_3" rowspan="8"><div class="td_area_3_map"
							id="map">지도</div> <span>위치좌표</span><input type="text"
						readonly="readonly" value="${comBoard.cxy}"></td>
				</tr>
				<tr class="trs2">
					<td><span>상세 주소 :</span><label>${comBoard.carea}</label></td>
				</tr>
				<tr class="trs2">
					<td><span>업무 소요일:</span><label>${comBoard.cday}</label></td>
				</tr>
				<tr class="trs2">
					<td><span>전공분야 : </span><label>${comBoard.cjob}</label></td>
				</tr>
				<tr class="trs2">
					<td><span>경력사항 : </span><label>${comBoard.ccarrer}</label></td>
				</tr>
				<tr class="trs2">
					<td><span>요구인원 : </span><label>${comBoard.cwokers} 명</label></td>
				</tr>
				<tr class="trs2">
					<td><span>신청/마감일 : </span><label>${comBoard.cstartDay} ~ ${comBoard.cendDay}</label></td>
				</tr>
				<tr class="trs2">
					<td><span>급여 : </span><label>${comBoard.cpay}</label></td>
				</tr>
			</table>
			<div class="textbottom">
				<div class="textAreas">
					<textarea rows="10" name="ctext" placeholder="상세 내용을 작성해 주세요" style="font-size: 14px;">${comBoard.ctext}</textarea>
				</div>
				<div class="textbottom_div">
					<div class="textbottom_div_1">
						<c:forEach items="${inComBoard}" var="in">
						<div class="textbottom_div_1_1">
							<span class="textbottom_div_1_1_1" >${in.nomalId}</span>
							<span class="textbottom_div_1_1_2">HP.${in.phone}</span>
							<span class="textbottom_div_1_1_3">
								<fmt:formatDate value="${in.joinDay}" pattern="MM월dd일 HH시mm분ss"/>
							</span>
							<img alt="삭제하기" src="img/com/Xicon.png">
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="textbottom_button">
				<input type="button" value="수정하기" onclick="location.href='comModifyForm.do?cnum=${comBoard.cnum}'">
				<input type="button" value="삭제하기" onclick="checkDelete(${comBoard.cnum})">
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/com/map.js"></script>
	<script type="text/javascript">
		$(window).load(function(){
			var value ='${comBoard.cxy}'+"";
			var valueArray = value.split(',');
			var valueX = valueArray[0];
			var valueY = valueArray[1];
	 		var moveLatLon = new daum.maps.LatLng(
				valueX, valueY);
			map.panTo(moveLatLon);
			var marker = new daum.maps.Marker({
				// 지도 중심좌표에 마커를 생성합니다
				position : map.getCenter()
			});
			// 지도에 마커를 표시합니다
			marker.setMap(map);  
		});
		function checkDelete(e){
			var a = e;
			if(confirm("삭제하시겠습니까")){
				location.href='comDelete.do?cnum='+a;
			}else{
			}
		
		}
	</script>
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