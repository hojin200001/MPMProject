<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css">
<link rel="stylesheet" type="text/css" href="css/main/SkyBanner.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css">
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- 다음지도 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=5df6011222b3cbeedfefde1c00f1b101&libraries=services"></script>
<title>Insert title here</title>
<style type="text/css">
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
/* form*/
form{
 background-color: #ebedee;
}

/* 테이블 기본설정 */
.top2_2>span{
	color:#ff5400;
}
table {
	margin: 0 auto;
	margin-top: 30px;
	border-collapse: collapse;
	width: 70%;
}

th, td {
	background-color: #fff;
	border: 1px solid #d7d7d7;
	text-align: center;
}
td>a{
	text-decoration: none;
}
.trs{
	height: 50px;
}
.td_area_1>span{
	margin-left: 30px;
}
.td_area_1>input{
	width: 80%;
	height: 30px;
	float: right;
	border: none;
}
.td_area_2{
	border-bottom: none;
	font-size: 18px;
	font-weight: bold;
}
.td_area_2>span{
	margin-left: 30px;
}
.td_area_3{
	border: none;
	width: 40%;
}
.td_area_3_map{
	width:300px;
	height:300px;
	margin: 0 auto;
	margin-top:10px;
	
}
.td_area_4{
	width:100%;
	height: 100px;
	border: none;
}
.td_area_4_div{
	width:100%;
	height: 60px;
}
.td_area_4_div2{
	margin-top:10px;
	width: 49%; 
	height: 45px; 
	float: left;
	padding-top: 25px;
	border: 2px solid #ccc;
	border-radius: 5px;
	
}
.td_area_4_div2:HOVER{
	border:2px solid #0f4579;
	cursor: pointer;
}
.td_area_5{
	width: 100%; 
	height: 49%; 
}
.td_area_5_div1{
	height: 100px;
	display: "";
}
.td_area_5_div1_1, .td_area_5_div1_2{
	width: 500px;
	text-align: left;
}
.td_area_5_div1_1>span{
	padding-top: 10px;
}
#sample5_address{
	width: 60%;
}
#address2{
	width:75%;
}
.td_area_5_div2{
	height: 90px;
	display: none;
}
.td_area_5_div2>div{
	padding-top: 20px;	
}
.td_area_5_div2>div{
	width: 19.5%;
	height: 50px;
	float: left;
	border: 1px solid #ccc;
	border-radius: 5px;
}
.td_area_6{
	width: 100%; 
	height: 170px;
	border: none;
}
.td_area_6_div{
	width: 100%;
	height: 100%;
}
.td_area_6_div_1{
	height: 90px;
	border-bottom: 1px solid #d7d7d7;
}
.td_area_6_div_1_div{
	width: 19%;
	height: 18px;
	border: 1px solid #d7d7d7;
	float: left;
	margin-top: 2px;
	border-radius: 5px;
	cursor: pointer;
	display: none;
}
.td_area_6_div_1_div:HOVER{
	color:#0f4579;
	border: 1px solid #0f4579;
}
.td_area_6_div_2{
	height: 100%;
	width: 100%;
}
.td_area_6_div_2_1, .td_area_6_div_2_2{
	width: 100%;
	list-style:none;
	height: 50px;
	color: #fff;
}

.td_area_6_div_2_2{
	margin-top: 20px;
}
.td_area_6_div_2_1>li, .td_area_6_div_2_2>li{
	margin-left: 5px;
	border: 1px solid #0f4579;
	border-radius: 5px;
	cursor: pointer;
}
.td_area_6_div_2_1>li:HOVER, .td_area_6_div_2_2>li:HOVER{
	background-color: #0f4579;
}
.td_area_6_div_2_1>li>a, .td_area_6_div_2_2>li>a{
	text-decoration:none;
	color:#000;
}
.td_area_6_div_2_1>li>a:HOVER, .td_area_6_div_2_2>li>a:HOVER{
	color: #fff;
}

.td_area_6_div_2_1>li{
	margin-top: 10px;
	padding-left: 3px;
	padding-right: 3px;
}
.td_area_6_div_2_2>li{
	margin-top: 10px;
 	width: 30px;
}
.td_area_7>span{
	float: right;
}
.td_area_9>span{
	margin-left: 10px;
	float: left;
	border-left: none;
}
.td_area_9>span>input{
	border: none;
}
.textAreas{
	margin: 0 auto;
	margin-top: 10px;
	width: 70%;
}
.textAreas>textarea{
	width: 100%;
}
.btnArea{
	margin: 0 auto;
	margin-top: 10px;
	width: 70%;
}
.btnArea>input{
	margin-left: 250px;
	height: 40px;
	width: 100px;
}
.footer {
	padding: 10px 0;
	background-color: #f2f2f2;
	text-align:center
}
.copy{
	font-size: 10px;
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
	   <!--end SkyBanner --></div>
	   <div class="contents_top">
		   <span onclick="location.href='index.do'">홈</span>>
		   <span onclick="location.href='comMain.do'">업체메인</span>>
		   <span onclick="location.href='comBoardList.do'">구인등록 현황</span>>
		   <span onclick="location.href='comWriteForm.do'" style="font-weight: bold;">구인등록</span>
	   </div>
	<div class="contents_top2" style="padding-top: 10px">
		<div class="contents_top2_1">
			<span class="top2_1">구인등록 페이지</span>
		</div>
		<div class="contents_top2_2">
			<input type="button" value="구직등록하기" onclick="location.href='comWriteForm.do'">
		</div>
	</div>
	<form action="comWrite.do" method="post">
	<input type="hidden" name="userid" value="${user.id}">
	<input type="hidden" name="addr2" value="" id="hiddenAddr">
		<table>
			<tr class="trs">
				<td class="td_area_1" colspan="2" >
					<span>모집공고 제목 : </span>
					<input type="text" name="ctitle" placeholder="제목을 입력하세요">
				</td>
			</tr>
			<tr class="trs">
				<td class="td_area_2" colspan="2"><span>접선장소 설정</span></td>
			</tr>
			<tr style="border:none;">
				<td class="td_area_3" rowspan="2">
					<div class="td_area_3_map" id="map"></div>
					<div>위치 좌표<input  id="addr" type="text" name="cxy" readonly="readonly"></div>
				</td>
				<td class="td_area_4">
					<div class="td_area_4_div">
						<div class="td_area_4_div2" id="div2_1" onclick="td_area_4_div1()" ><span>주소검색</span></div>
						<div class="td_area_4_div2" id="div2_2" onclick="td_area_4_div2()" ><span>역검색</span></div>
					</div>
					<script type="text/javascript">
						function td_area_4_div1(){
							$('#div2_1').css("border", "2px solid #0f4579")
							.css("background-color", "#0f4579")
							.css("color", "#fff");
							$('#div2_2').css("border", "2px solid #d7d7d7")
							.css("background-color", "")
							.css("color", "");
							$('.td_area_5_div2_1').css("background-color", "")
							.css("color", "#000");
							$('.td_area_5_div2').hide();
							$('.td_area_6_div').hide();
							$('.td_area_6_div_1 div').hide();
							$('.td_area_5_div1').show();
							
						}
						function td_area_4_div2(){
							$('#div2_2').css("border", "2px solid #0f4579")
							.css("background-color", "#0f4579")
							.css("color", "#fff");
							$('#div2_1').css("border", "2px solid #d7d7d7")
							.css("background-color", "")
							.css("color", "");
							$('.td_area_5_div1').hide();
							$('.td_area_5_div2').show();
							$('.td_area_6_div').show();
						}
					</script>
					<div class="td_area_5">
						<div class="td_area_5_div1">
							<div class="td_area_5_div1_1">
								<span>＊주소검색 : </span>
								<input type="text" id="sample5_address" placeholder="주소" name="carea">
								<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
							</div>
							<div class="td_area_5_div1_2">
								<span>＊상세주소 : </span>
								<input type="text" id="address2" placeholder="상세주소" name="carea2">
							</div>
						</div>
						<div class="td_area_5_div2">
							<div class="td_area_5_div2_1" onclick="td_area_5_div2_1()"><span>서울/수도권</span></div>
							<div onclick=""><span>부산</span></div>
							<div onclick=""><span>대구</span></div>
							<div onclick=""><span>광주</span></div>
							<div onclick=""><span>대전</span></div>
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
		<script type="text/javascript">
		 function td_area_5_div2_1(){
			 $('.td_area_6_div_1 div').show();
			 $('.td_area_5_div2_1').css("background-color", "#0f4579");
			 $('.td_area_5_div2_1').css("color", "#fff");
		 }
		</script>
		
		<table>
			<tr>
				<td class="td_area_7">
					<span>전공분야</span>
				</td>
				<td class="td_area_9">
					<span>
					<select id='fruits' name='cjob'>
								<option value='전체' selected> 전체</option>
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
					</span>
				</td>
			</tr>
			<tr>
				<td class="td_area_7">
					<span>경력사항</span>
				</td>
				<td class="td_area_9">
					<span>
					<input type="radio" name="ccarrer" value="0" checked="checked">없음
					<input type="radio" name="ccarrer" value="1">1년이하
					<input type="radio" name="ccarrer" value="2">1~3년
					<input type="radio" name="ccarrer" value="3">3년이상
					</span>
				</td>
			</tr>
			<tr>
				<td class="td_area_7">
					<span>업무 소요일</span>
				</td>
				<td class="td_area_9">
					<span>
					<input style="text-align: right; width:100px;" type="text" name="cday" placeholder="업무 진행일 입력">
					</span>
				</td>
			</tr>
			<tr>
				<td class="td_area_7"><span>업무기간</span></td>
				<td class="td_area_9">
				<span>
					<label for="txtStartDt">시작일</label><input type="text" id="txtStartDt" name="cstartDay" value="" style="border: 1px solid #d7d7d7;" readonly placeholder="클릭해주세요">
  					<label for="txtEndDt">종료일</label><input type="text" id="txtEndDt" name="cendDay" value="" style="border: 1px solid #d7d7d7;" readonly placeholder="클릭해 주세요">	
				</span>
				</td>
			</tr>
			<tr>
				<td class="td_area_7">
					<span>요구인원</span>
				</td>
				<td class="td_area_9">
				<span>
					<input type="text" name="cwokers" style="text-align: right; width:100px;" placeholder="필요한 인원 입력">
				</span>
				</td>
			</tr>
			<tr>
				<td class="td_area_7">
					<span>급여</span>
				</td>
				<td class="td_area_9">
				<span>
					<input type="text" name="cpay" style="text-align: right; width:100px;" placeholder="일 급여 입력">
				</span>
				</td>
			</tr>
		</table>
		<div class="textAreas">
			<textarea rows="10" name="ctext" placeholder="상세 내용을 작성해 주세요"></textarea>
		</div>
		<div class="btnArea">
			<input type="submit" value="등록하기">
			<input type="button" value="취소하기">
		</div>	
	</form>
	</div>
	<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.497175, 127.027926), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
   var marker = new daum.maps.Marker({ 
    // 지도 중심좌표에 마커를 생성합니다 
    position: map.getCenter() 
	}); 
	// 지도에 마커를 표시합니다
	marker.setMap(map);
   	
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {        
	    
	    // 클릭한 위도, 경도 정보를 가져옵니다 
	    var latlng = mouseEvent.latLng; 
	    
	    // 마커 위치를 클릭한 위치로 옮깁니다
	    marker.setPosition(latlng);
	    
	    var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
	    message += '경도는 ' + latlng.getLng() + ' 입니다';
	    
	    var resultDiv = document.getElementById('clickLatlng'); 
	    
	});
    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = data.address; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 기본 주소가 도로명 타입일때 조합한다.
                if(data.addressType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = fullAddr;
                // 주소로 좌표를 검색
                geocoder.addr2coord(data.address, function(status, result) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {
                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.addr[0].lat, result.addr[0].lng);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                        var a = coords+"";
                        $('#addr').val(a.substr(1,30));
                    }
                });
            }
        }).open();
    }
</script>
		
  		 <script>
    var ap_option = {
      dateFormat: 'yy-mm-dd',
      prevText: '이전 달',
      nextText: '다음 달',
      monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      dayNames: ['일', '월', '화', '수', '목', '금', '토'],
      dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
      dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
      showMonthAfterYear: true,
      changeMonth: true,
      changeYear: true,
      yearSuffix: '년'
    },
      $startDt = $('#txtStartDt').datepicker(ap_option),
      $endDt = $('#txtEndDt').datepicker(ap_option);
 
    // 시작일 maxData, 종료일 minData 셋팅
    $startDt.datepicker('option', 'maxDate', $endDt.val());
    $endDt.datepicker('option', 'minDate', $startDt.val());
 
    // 시작일, 종료일 값 선택에 따라 minDate, maxDate값 변경할 수 있도록 이벤트 처리
    $startDt.datepicker('option', 'onSelect', function(selectedDate){
      $endDt.datepicker('option', 'minDate', selectedDate);
    });
    $endDt.datepicker('option', 'onSelect', function(selectedDate){
      $startDt.datepicker('option', 'maxDate', selectedDate);
    });
  </script>	
  <script type="text/javascript">
  			function replaceValue(e){
  				var value = e;
  				var a = sessionStorage.getItem('subway');
  				$.ajax({
  					url: "json/subLine.json",
					dataType:"json",
  					success:function(result){
  						$.each(result.seoul[a], function(key){
  							$.each(result.seoul[a][key], function(key, value){
								if(key == e){
									$('.td_area_6_div_2_1 li').remove();
									c = value+'';
									var array = c.split(',');
									$.each(array, function(index, value){
										$('.td_area_6_div_2_1').append("<li style='float: left;'><a onclick='searchMaps(\""+value+"\")'>"+value+"</a></li>");
									});
								}
  							});
  						});
  					}
  				});
  			}
			$('.td_area_6_div_1_div').click(function(){
				$('.td_area_6_div_2 ul').remove();
				$('.td_area_6_div_2_2 li').remove();
				$('.td_area_6_div_2_1 li').remove();
				var a = $(this).text();
				sessionStorage.setItem("subway",a);
				var b = 'ㄱ';
				var c;
				$.ajax({
					url: "json/subLine.json",
					dataType:"json",
					success:function(result){
						$.each(result.seoul[a], function(key){
							$.each(result.seoul[a][key], function(key, value){
								$('.td_area_6_div_2_2').append("<li style='float: left;'><a onclick='replaceValue(\""+key+"\")'>"+key+"</a></li>");
								if(key == b){
									c = value+'';
									var array = c.split(',');
									$.each(array, function(index, value){
										$('.td_area_6_div_2_1').append("<li style='float: left;'><a onclick='searchMaps(\""+value+"\")'>"+value+"</a></li>")	
									});
								} 
								
							});
						});
					}
				});
			});
			function searchMaps(a) {
				var valueX;
				var valueY;
				var addr = 'http://openAPI.seoul.go.kr:8088/446a746d4b686f6a363376556a596f/xml/SearchInfoBySubwayNameService/1/5/'+a;
				var code;
				var address;
				 $.ajax({
					url: addr,
					dataType:'xml',
					success:function(response){
						code = $(response).find('SearchInfoBySubwayNameService').find('row').find('FR_CODE').text();
						$.ajax({
							url:'http://openAPI.seoul.go.kr:8088/446a746d4b686f6a363376556a596f/xml/SearchSTNInfoByFRCodeService/1/5/'+code,
							dataType:'xml',
							success:function(response){
								valueX = $(response).find("SearchSTNInfoByFRCodeService").find('row').find('XPOINT_WGS').text();
								valueY = $(response).find("SearchSTNInfoByFRCodeService").find('row').find('YPOINT_WGS').text();
								address = $(response).find("SearchSTNInfoByFRCodeService").find('row').find('ADDRESS').text();
								$('#addr').val(valueX+","+valueY);
								$('#hiddenAddr').val(address);
								var moveLatLon = new daum.maps.LatLng(valueX, valueY);
								map.panTo(moveLatLon);
								 var marker = new daum.maps.Marker({ 
									    // 지도 중심좌표에 마커를 생성합니다 
									    position: map.getCenter() 
										}); 
										// 지도에 마커를 표시합니다
										marker.setMap(map);
							}
						}); 
					}
				});
			}
		</script>
		 <div class="footer">
  	 <div class="copy">
            <address>서울특별시 강남구 역삼동 819-10 한빛교육센터 강의실,<br>
            대표연락처 : 1577-0000, FAX : 052-000-0000, E-mail : asdf@naver.com</address>
            <p>Copyrights 2017~~~~ MPMcompany All rights Reserved</p>
        </div>
    <!-- end .footer --></div>
</body>
</html>