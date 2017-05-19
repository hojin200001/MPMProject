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
<link rel="stylesheet" type="text/css" href="css/com/comView.css?var=1">
<link rel="stylesheet" type="text/css" href="css/com/comView2.css?var=1">

<!-- 다음지도 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript"
	src="//apis.daum.net/maps/maps3.js?apikey=5df6011222b3cbeedfefde1c00f1b101&libraries=services"></script>
<title>게시물 상세보기</title>
<style type="text/css">

</style>
</head>
<body>
	<div class="container">
		<div class="header">
			<div class="searchArea">
				<dir class="searchs">
					<img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로" style="padding-top: 30px;"/>
					<div class="serachs_div">
						<input type="text" alt="전체검색" class="searchText"><img
							src="img/main/btn_search.gif" alt="홈으로" style="float: left;" /></input>
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
		  			<li><a href="nomalSearch.do">일자리찾기</a></li>
				    <li><a href="nomalBoardList.do">일자리등록정보</a>
				    	<ul>
				    		<li><a href="nomalBoardList.do">구직 등록 현황</a></li>
				    		<li><a href="nomalWriteForm.do">구직 등록하기</a></li>	
				    	</ul></li>
		  		</c:when>
		  		<c:when test="${userInfo ==2}">
					<li><a href="comMain.do">홈으로</a></li>
		  			<li><a href="comSearch.do">인력찾기</a></li>
					<li><a href="comBoardList.do">구인 정보</a>
					<ul>
						<li><a href="comBoardList.do">구인 등록 현황</a></li>
				    		<li><a href="comWriteForm.do">구인 등록하기</a></li>	
					</ul></li>
		  		</c:when>
		  		<c:otherwise>
					<li><a href="comMain.do">홈으로</a></li>
		  			<li><a href="comSearch.do">인력찾기</a></li>
					<li><a href="comBoardList.do">구인 정보</a>
					<ul>
						<li><a href="comBoardList.do">구인 등록 현황</a></li>
				    		<li><a href="comWriteForm.do">구인 등록하기</a></li>	
					</ul></li>
		  		</c:otherwise>
		  	</c:choose>
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
					onclick="history.back()">
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
				<div class="textbottom_div_re">
				<span class="textbottom_div__re_span1">신청자 현황</span>
				<c:choose>
					<c:when test="${inCount <= comBoard.cwokers}">
						<span class="">${inCount}</span>
					</c:when>
					<c:when test="${inCount > comBoard.cwokers}">
						<span class="textbottom_div_re_span2">${inCount}</span>
					</c:when>
				</c:choose>
				<span class="textbottom_div_re_span3">/${comBoard.cwokers}</span></div>
				<div class="textAreas">
					<textarea rows="10" name="ctext" placeholder="상세 내용을 작성해 주세요" style="font-size: 14px;">${comBoard.ctext}</textarea>
				</div>
				<div class="textbottom_div" style="background-color: #fff; overflow: auto;">
					<div class="textbottom_div_1">
						<c:forEach items="${inComBoard}" var="in" varStatus="a">
						<div class="textbottom_div_1_1">
							<span class="textbottom_div_1_1_1" id="textbottom${a.count}" name="${in.nomalId}">${in.nomalId}</span>
							<span class="textbottom_div_1_1_2">HP.${in.phone}</span>
							<span class="textbottom_div_1_1_3">
								<fmt:formatDate value="${in.joinDay}" pattern="MM월dd일 HH시mm분ss"/>
							</span>
							<c:choose>
								<c:when test="${userInfo == 2}">
									<img alt="삭제하기" src="img/com/Xicon.png" style="cursor: pointer;" onclick="location.href='deleteInComBoard.do?cnum=${comBoard.cnum}&nomalId=${in.nomalId}'">
								</c:when>
							</c:choose>
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<div class="textbottom_button">
				<c:choose>
					<c:when test="${userInfo == 2 or userInfo ==0}">
						<input type="button" value="수정하기" onclick="location.href='comModifyForm.do?cnum=${comBoard.cnum}'">
						<input type="button" value="삭제하기" onclick="checkDelete(${comBoard.cnum})">
					</c:when>
					<c:when test="${userInfo == 1}">
						<input type="button" value="참가 신청하기" onclick="attendThis('${user.id}')"> 
						<input type="button" value="참가 취소하기" onclick="location.href='deleteInComBoard.do?cnum=${comBoard.cnum}&nomalId=${user.id}'">
					</c:when>
				</c:choose>
			</div>
			<script type="text/javascript">
				function attendThis(e){
					var Now = new Date();
					var startTime = '${comBoard.cstartDay}';
					var y = startTime.substring(0,4);
					var m = startTime.substring(5,7);
					var d = startTime.substring(8,10);
					var start = new Date(m+"/"+d+"/"+y);
					var endTime= '${comBoard.cendDay}';
					var y2 = endTime.substring(0,4);
					var m2 = endTime.substring(5,7);
					var d2 = endTime.substring(8,10);
					var end = new Date(m2+"/"+d2+"/"+y2);
					/* 여기는 보드쪽 */
					var id = e;
					var cnum = '${comBoard.cnum}';
					var boole = 'a';
					var count = $(".textbottom_div_1 > .textbottom_div_1_1") .size();
					if(Now.getTime < start.getTime()){
						alert("아직 신청일이 아닙니다.");
					}else if(Now.getTime()>end.getTime()){
						alert("신청일이 지났습니다.");
					}else{
						if(count != null){
							for(var a = 1; a<=count; a++){
								var val =$("#textbottom"+a).attr('name');
								if(id == val){
									boole = "b";
								} 
							}
							if(boole =="a"){
								location.href='attendThis.do?cnum='+cnum+'&userId='+id;
							}else{
								alert("이미 신청이 되어있는 아이디 입니다.");
							}
						}
					}
				}
			</script>
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