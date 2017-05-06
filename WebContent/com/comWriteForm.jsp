<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css">
<link rel="stylesheet" type="text/css" href="css/main/SkyBanner.css">
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
}
.td_area_6_div{
	width: 100%;
	height: 100%;
}
.td_area_6_div_1{
	height: 50px;
	border-bottom: 1px solid #d7d7d7;
}
.td_area_6_div_2{
	height: 100%;
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
	<form action="">
		<table>
			<tr class="trs">
				<td class="td_area_1" colspan="2" >
					<span>모집공고 제목 : </span>
					<input type="text" name="" placeholder="제목을 입력하세요">
				</td>
			</tr>
			<tr class="trs">
				<td class="td_area_2" colspan="2"><span>접선장소 설정</span></td>
			</tr>
			<tr style="border:none;">
				<td class="td_area_3" rowspan="2">
					<div class="td_area_3_map" id="map"></div>
					<div>위치 좌표<input type="text" readonly="readonly"></div>
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
							$('.td_area_5_div2').hide();
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
						}
					</script>
					<div class="td_area_5">
						<div class="td_area_5_div1">
							<div class="td_area_5_div1_1">
								<span>＊주소검색 : </span>
								<input type="text" id="sample5_address" placeholder="주소">
								<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
							</div>
							<div class="td_area_5_div1_2">
								<span>＊상세주소 : </span>
								<input type="text" id="address2" placeholder="상세주소">
							</div>
						</div>
						<div class="td_area_5_div2">
							<div onclick=""><span>서울/수도권</span></div>
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
						<div class="td_area_6_div_1">호션 이름</div>
						<div class="td_area_6_div_2">호선별 역이름 </div>						
					</div>
				</td>
			</tr>		
		</table>
		<table>
			<tr>
				<td>1</td>
			</tr>
			<tr>
				<td>2</td>
			</tr>
			<tr>
				<td>3</td>
			</tr>
			<tr>
				<td>4</td>
			</tr>
			<tr>
				<td>5</td>
			</tr>
			<tr>
				<td>6</td>
			</tr>
		</table>
		<div>
			<textarea rows="10" cols="30" name="contents">상세 내용 작성란</textarea>
		</div>	
	</form>
	</div>
	<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
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
                    }
                });
            }
        }).open();
    }
</script>
</body>
</html>