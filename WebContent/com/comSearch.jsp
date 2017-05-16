<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css?var=1">
<link rel="stylesheet" type="text/css" href="css/main/SkyBanner.css?var=1">

<title>Insert title here</title>
<style type="text/css">
<!--
.contents_top {
	padding-top: 5px;
	border-bottom: 1px solid #b5b5b5;
}


.contents_top>span {
	font-size: 12px;
	cursor: pointer;
}

.contents_top2 {
	border-bottom: 3px solid #b5b5b5;
	font-size: 12px;
	height: 25px;
}

.contents_top2_1 {
	width: 49%;
	float: left;
}

.contents_top2_2 {
	width: 49%;
	float: right;
	text-align: right;
}

.contents_top2 .top2_1 {
	font-size: 15px;
	font-weight: bold;
}
/* 여기부터는 검색폼들  */

.divSearch{
	margin: 0 Auto;
	margin-top: 30px;
	width: 85%;
	height: auto;
	background-color: #fbfbfb;
	
}
.divSearch_1, #divSearch_2, .divSearch_3, #divSearch_4{
	width: 100%;
	border: 1px solid #d5d5d5;
}
.divSearch_1,.divSearch_3{
	height: 50px;
}
#divSearch_2, #divSearch_4{
	min-height: 130px;
}
#divSearch_2{
	height: 200px;
}
.divSearch_4{
	background-color: #fff;
}
.divSearch_4>div{
	border-right: 1px solid #bbb;
    border-bottom: 1px solid #bbb;
	background-color: #f3f3f4;
	text-align: center;
	padding-top: 10px;
}
.divSearch_1>span, .divSearch_3>span{
	float: left;
	margin-left: 80px;
	margin-top: 15px;
}
.divSearch_1_1, .divSearch_3_1{
	width: 80%;
	height: 30px;
	float: right;
	border: 1px solid #bbb;
	margin-right: 20px;
    margin-top: 10px;
    cursor: pointer;
    background-color: #fff;
}
.divSearch_1_1_1, .divSearch_1_3_1{
	margin-top: 4px;
    margin-left: 5px;
    max-width: 120px;
    border: 1px solid #d5d5d5;
    background: #e5f3ff;
}
.divSearch_1_1_1, .divSearch_3_1{
	color :#728fb0;
}
.divSearch_2_div{
	height: 84px;
	background-color: #f3f3f4;
}
.divSearch_2_div_div{
	width: 10.81%;
	height: 35px;
	border-right: 1px solid #bbb;
    border-bottom: 1px solid #bbb;
	margin-left: 2px;
	float: left;
	text-align: center;
	padding-top: 5px;
}
.divSearch_2_div_div:HOVER{
	cursor: pointer;
}
.divSearch_2_div2{
	width: 100%;
	height: auto;
	list-style:none;
}
.divSearch_2_div2>li{
	padding-right:90px;
	margin-top: 5px;
	margin-left: 5px;
	float: left;
}
.divSearch_2_div2>li:HOVER{
	cursor: pointer;
	font-weight: bold;
}
.divSearch_4_div{
	width: 12.1%;
	height: 42px;
	border: 1px solid #d5d5d5;
	float: left;
	margin-left: 2px;
	text-align: center;
	cursor: pointer;
}
.divSearch_4_div:HOVER{
	color:#fff;
	background-color: #0f4579;
}

.divSearch_5{
	width: 100%;
	height: 150px;
}
.divSearch_5_1, .divSearch_5_2, .divSearch_5_3{
	width: 33.1%;
	height:130px;
	float: left;
	border: 1px solid #d5d5d5;
	background-color: #f4f4f4;
}
.divSearch_5_1_1, .divSearch_5_2_1, .divSearch_5_3_1{
	width: 100%;
	height: 30px;
	margin: 0 auto;
	text-align: center;
	border-bottom: 1px solid #d5d5d5;
	
}
.divSearch_5_1_2, .divSearch_5_2_2, .divSearch_5_3_2{
	background-color: #fff;
	height: 83px;
}

.divSearch_5_1_1>span, .divSearch_5_2_1>span, .divSearch_5_3_1>span{
	font-weight: bold;
}
.divSearchR_1{
	margin-top: 15px;
}
.divSearchR_2{
	margin-top: 15px;
	margin-left: 30px;
}
.divSearchR_3{
	margin-top: 15px;
	margin-left: 10px;
}
.divSearch_B{
	width: 100%;
	height: auto;
	text-align: center;
	margin-top: 50px;
	padding-bottom: 40px;
}
.divSearch_B>input{
	width: 150px;
	height: 50px;
	font-size: 20px;
	font-weight: bold;
	border: 1px solid #d5d5d5;
}
.divSearchButton{
	background-color:#0f4579; 
	color: #fff;
}
.divSearchRe{
	background-color: #505050;
    color: #fff;
}
.divSearch_2{
	border-left: 1px solid #5da3d3;
	border-right: 1px solid #5da3d3;
}

.divTable_Top{
	width: 85%;
	margin: 0 auto;
	height: 20px;
	border-bottom: 3px solid;
	padding-bottom: 5px;
}
.Top_1_span1{
	font-weight: bold;	
}
.Top_1_span3{
	color: red;
}
.Top_1_span2, .Top_1_span3{
	font-size: 13px;
}
.divTable_Top2{
	width: 85%;
	margin: 0 auto;
	margin-top: 5px;
}
.divTable_Top2_1{
	width: 40%;
	float: left;
}
.divTable_Top2_1>a{
	font-size: 13px;
}
.divTable_Top2_2{
	width: 40%;
	float: right;
	text-align: right;
}
.divTable{
	width: 85px;
	margin: 0 auto;
}


table{
   	border-collapse: collapse;
    width: 85%;
    margin: 0 auto;
}
tr{
	display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
/*제일 하단부 */
.contents_bottom{
	display: inline-block;
	width: 30px;
	height: 24px;
	border: 1px solid #bbb;
	padding: 6px 0 0;
    margin: 0 2px;
    text-align: center;
    border-radius: 2px;
    text-decoration: none;
    color: #000;
}
.contents_bottom:HOVER{
	font-weight: bold;
    border: 1px solid #83c9ff;
    color: #267cd3;
}

#on{
	font-weight: bold;
    border: 1px solid #83c9ff;
    color: #267cd3;
	
}
 -->
</style>
<script type="text/javascript">
$(window).load(function(){
	$("#divSearch_2").hide();
	$("#divSearch_2").val('1');
	$("#divSearch_4").hide();
	$("#divSearch_4").val('1');
	
	var area = 'seoul';
	$.ajax({
		url:"json/area.json",
		dataType: "json",
		success: function(result){
			$.each(result[area], function(key){
				$.each(result[area][key], function(key, value){
					$('.divSearch_2_div2').append(
							"<li onclick='area2(\""+value+","+area+"\")'><a>"+value+"</a></li>");
				});
			});
		}
	});
});
function area(e){
	var value = e;
	$('.divSearch_2_div2 li').remove();
	$.ajax({
		url:"json/area.json",
		dataType: "json",
		success: function(result){
			$.each(result[value], function(key){
				$.each(result[value][key], function(key, value){
					$('.divSearch_2_div2').append(
							"<li ><a onclick='area2(\""+value+","+e+"\")'>"+value+"</a></li>");
				});
			});
		}
	});
}
function areaSearch(){
	if($('#divSearch_2').val() == 1){
		$("#divSearch_2").show();
		$("#divSearch_4").hide();
		$(".divSearch_3").css("border-left", "1px solid #d5d5d5");
		$(".divSearch_3").css("border-right", "1px solid #d5d5d5");
		$(".divSearch_3").css("border-top", "1px solid #d5d5d5");
		$("#divSearch_2").val('2');
		$("#divSearch_2").css("border-left", "2px solid #5da3d3");
		$("#divSearch_2").css("border-right", "2px solid #5da3d3");
		$("#divSearch_2").css("border-bottom", "2px solid #5da3d3");
		$(".divSearch_1").css("border-left", "2px solid #5da3d3");
		$(".divSearch_1").css("border-right", "2px solid #5da3d3");
		$(".divSearch_1").css("border-top", "2px solid #5da3d3");
	}else{
		$("#divSearch_2").hide();
		$("#divSearch_2").val('1');
		$(".divSearch_1").css("border-left", "1px solid #d5d5d5");
		$(".divSearch_1").css("border-right", "1px solid #d5d5d5");
		$(".divSearch_1").css("border-top", "1px solid #d5d5d5");
	}
}
function jobSearch(){
	if($("#divSearch_4").val() == 1){
		$("#divSearch_4").show();
		$("#divSearch_2").hide();
		$(".divSearch_1").css("border-left", "1px solid #d5d5d5");
		$(".divSearch_1").css("border-right", "1px solid #d5d5d5");
		$(".divSearch_1").css("border-top", "1px solid #d5d5d5");
		$("#divSearch_4").val('2');
		$("#divSearch_4").css("border-left", "2px solid #5da3d3");
		$("#divSearch_4").css("border-right", "2px solid #5da3d3");
		$("#divSearch_4").css("border-bottom", "2px solid #5da3d3");
		$(".divSearch_3").css("border-left", "2px solid #5da3d3");
		$(".divSearch_3").css("border-right", "2px solid #5da3d3");
		$(".divSearch_3").css("border-top", "2px solid #5da3d3");
	}else{
		$("#divSearch_4").hide();
		$("#divSearch_4").val('1');
		$(".divSearch_3").css("border-left", "1px solid #d5d5d5");
		$(".divSearch_3").css("border-right", "1px solid #d5d5d5");
		$(".divSearch_3").css("border-top", "1px solid #d5d5d5");
	}	
	
}
function carrer(e){
	var a = e;
	$('.divSearch_3_1 span').remove();
	$('.divSearch_3_1 img').remove();
	$('.divSearch_3_1').append("<span>"+a+"</span><img alt='삭제하기' src='img/com/Xicon.png'>");
	
}
</script>
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
	    <li><a href="#">구직 정보</a>
	    	<ul>
	    		<li><a href="#">구직 등록 현황</a></li>
	    		<li><a href="#">구직 등록하기</a></li>	
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
   		</div>
   		<div class="contents_top">
			<span onclick="location.href='index.do'">홈</span>> <span
				onclick="location.href='comMain.do'">업체메인</span>> <span
				onclick="location.href='comSearch.do'" style="font-weight: bold;">구인검색</span>
		</div>
		<div class="contents_top2" style="padding-top: 10px">
			<div class="contents_top2_1">
				<span class="top2_1">구인검색 페이지</span>
			</div>
		</div>
		<div  class="divSearch">
			<div class="divSearch_1">
				<span>지역선택</span>
				<div class="divSearch_1_1" onclick="areaSearch()">
					<div class="divSearch_1_1_1">
						<span>서울 강남구</span>
						<img alt="삭제하기" src="img/com/Xicon.png">
					</div>
				</div>
			</div>
			<div value = "" id="divSearch_2" class="">
				<div class="divSearch_2_div">
					<div  class="divSearch_2_div_div" onclick="area('seoul')" id = "seoul">서울</div>
					<div  class="divSearch_2_div_div" onclick="area('pusan')" value="pusan" id="pusan">부산</div>
					<div  class="divSearch_2_div_div" onclick="area('daegu')"value="daegu" id="daegu">대구</div>
					<div  class="divSearch_2_div_div" onclick="area('incheon')"value="incheon" id="incheon">인천</div>
					<div  class="divSearch_2_div_div" onclick="area('gwangju')" value="gwangju" id ="gwangju">광주</div>
					<div  class="divSearch_2_div_div" onclick="area('daejun')" value="daejun" id="daejun">대전</div>
					<div  class="divSearch_2_div_div" onclick="area('ulsan')" value="ulsan" id="ulsan">울산</div>
					<div  class="divSearch_2_div_div">세종</div>
					<div  class="divSearch_2_div_div" onclick="area('kyunggi')" value="kyunggi" id="kyunggi">경기</div>
					<div  class="divSearch_2_div_div" onclick="area('kyungnam')" value="kyungnam" id="kyungnam">경남</div>
					<div  class="divSearch_2_div_div" onclick="area('kyungbuk')" value="kyungbuk" id="kyungbuk">경북</div>
					<div  class="divSearch_2_div_div" onclick="area('chungnam')"value="chungnam" id="chungnam">충남</div>
					<div  class="divSearch_2_div_div" onclick="area('chungbuk')" value="chungbuk" id="chungbuk">충북</div>
					<div  class="divSearch_2_div_div"  onclick="area('jeonnam')" value="jeonnam" id="jeonnam">전남</div>
					<div  class="divSearch_2_div_div" onclick="area('jeonbuk')"value="jeonbuk" id="jeonbuk">전북</div>
					<div  class="divSearch_2_div_div" onclick="area('kangwon')" value="kangwon" id="kangwon">강원</div>
					<div  class="divSearch_2_div_div" onclick="area('jeju')" value="jeju" id="jeju">제주</div>
					<div  class="divSearch_2_div_div">전국</div>
				</div>
				<div class="divSearch_2_div2">
				</div>
				<script type="text/javascript">
					function area2(e){
						var a = e+"";
						var b = a.split(',');
						var ku = b[0];
						var si = b[1];
						if(si == 'seoul'){
							si='서울';
						}else if(si == 'pusan'){
							si='부산';
						}
						else if(si == 'daegu'){
							si='대구';
						}
						else if(si == 'incheon'){
							si='인천';
						}
						else if(si == 'gwangju'){
							si='광주';
						}
						else if(si == 'daejun'){
							si='대전';
						}
						else if(si == 'ulsan'){
							si='울산';
						}
						else if(si == 'kyunggi'){
							si='경기';
						}
						else if(si == 'kyungnam'){
							si='경남';
						}
						else if(si == 'kyungbuk'){
							si='경북';
						}
						else if(si == 'chungnam'){
							si='충남';
						}
						else if(si == 'chungbuk'){
							si='충북';
						}
						else if(si == 'jeonnam'){
							si='전남';
						}
						else if(si == 'jeonbuk'){
							si='전북';
						}
						else if(si == 'kangwon'){
							si='강원';
						}
						else if(si == 'jeju'){
							si='제주';
						}
						$(".divSearch_1_1_1 span").remove();
						$(".divSearch_1_1_1 img").remove();
						$(".divSearch_1_1_1").append(
						"<span>"+si+" "+ku+"</span><img alt='삭제하기' src='img/com/Xicon.png'>");
					}
					
				</script>
			</div>
			<div class="divSearch_3">
				<span>직업선택</span><div class="divSearch_3_1" onclick="jobSearch()">
					<div class="divSearch_1_3_1"></div>
				</div>
			</div>
			<div class="" id ="divSearch_4" value="">
				<div class="divSearch_4_div" onclick="carrer('거푸집기능사')">거푸집기능사</div>
				<div class="divSearch_4_div" onclick="carrer('건축도장기능사')">건축도장기능사</div>
				<div class="divSearch_4_div" onclick="carrer('건설기계기능사')">건설기계기능사</div>
				<div class="divSearch_4_div" onclick="carrer('건축목공기능사')">건축목공기능사</div>
				<div class="divSearch_4_div" onclick="carrer('금속기사')">금속기사</div>
				<div class="divSearch_4_div" onclick="carrer('기계기술사')">기계기술사</div>
				<div class="divSearch_4_div" onclick="carrer('금형기술사')">금형기술사</div>
				<div class="divSearch_4_div" onclick="carrer('기계정비산업기사')">기계정비산업기사</div>
				<div class="divSearch_4_div" onclick="carrer('기계조립산업기사')">기계조립산업기사</div>
				<div class="divSearch_4_div" onclick="carrer('도배기능사')">도배기능사</div>
				<div class="divSearch_4_div"onclick="carrer('마장기능사')">마장기능사</div>
				<div class="divSearch_4_div" onclick="carrer('배관산업기사')">배관산업기사</div>
				<div class="divSearch_4_div" onclick="carrer('석공기능사')">석공기능사</div>
				<div class="divSearch_4_div"onclick="carrer('연삭기능사')">연삭기능사</div>
				<div class="divSearch_4_div" onclick="carrer('용접기술사')">용접기술사</div>
				<div class="divSearch_4_div" onclick="carrer('유리시공기능사')">유리시공기능사</div>
				<div class="divSearch_4_div" onclick="carrer('일반기계기사')">일반기계기사</div>
				<div class="divSearch_4_div" onclick="carrer('전기공사기사')">전기공사기사</div>
				<div class="divSearch_4_div" onclick="carrer('전기산업기사')">전기산업기사</div>
				<div class="divSearch_4_div" onclick="carrer('전자기사')">전자기사</div>
				<div class="divSearch_4_div" onclick="carrer('토목기사')">토목기사</div>
				<div class="divSearch_4_div" onclick="carrer('포장기사')">포장기사</div>
			</div>
			<div class="divSearch_5">
				<div class="divSearch_5_1">
					<div class="divSearch_5_1_1"><p></p><span>근무기간별</span></div>
					<div class="divSearch_5_1_2">
						<input type="radio" class="divSearchR_1" name="cday" value="1">1일
						<input type="radio" class="divSearchR_1" name="cday" value="7">7일 이하
						<input type="radio" class="divSearchR_1" name="cday" value="14">2주 이하
						<input type="radio" class="divSearchR_1" name="cday" value="31">1개월 이하
						<input type="radio" class="divSearchR_1" name="cday" value="93">3개월 이하
						<input type="radio" class="divSearchR_1" name="cday" value="365">1년 이하
						<input type="radio" class="divSearchR_1" name="cday" value="366">1년 이상
					</div>
				</div>
				<div class="divSearch_5_2">
					<div class="divSearch_5_2_1"><p></p><span>급여별</span></div>
					<div class="divSearch_5_2_2">
						<input type="radio" class="divSearchR_2" name="cpay" value="80000">80,000원 이하
						<input type="radio" class="divSearchR_2" name="cpay" value="150000">150,000원 이하
						<input type="radio" class="divSearchR_2" name="cpay" value="160000">150,000원 이상
					</div>
				</div>
				<div class="divSearch_5_3">
					<div class="divSearch_5_3_1"><p></p><span>경력기간별</span></div>
					<div class="divSearch_5_3_2">
						<input type="radio" class="divSearchR_3" name="ccarrer" value="없음">없음
						<input type="radio" class="divSearchR_3" name="ccarrer" value="1년이하">1년이하
						<input type="radio" class="divSearchR_3" name="ccarrer" value="1~3년">1~3년
						<input type="radio" class="divSearchR_3" name="ccarrer" value="3년이상">3년이상
					</div>
				</div>
			</div>
			<div class="divSearch_B">
				<input type="button"  class="divSearchButton" onclick="" value="검색" >
				<input type="button"  class="divSearchRe" onclick="" value="초기화" >
			</div>
		
		</div>
		<div class="divTable_Top">
			<div class= "Top_1">
				<span class="Top_1_span1">전체 구직 공고</span>
				<span class="Top_1_span2">/</span>
				<span class="Top_1_span3">567</span>
			</div>
		</div>
		<div class="divTable_Top2">
			<div class="divTable_Top2_1">
				<a id="" class="Top2_1_a"><img src="img/com/check.png">등록일순</a>
				<a id="" class="Top2_1_a"><img src="img/com/check.png">조회순</a>
				<a id="" class="Top2_1_a"><img src="img/com/check.png">마감일순</a>
			</div>
			<div class="divTable_Top2_2">
				<select name="boardsPerPage" onchange="">
					<option value="5" selected="selected">5개씩 보기</option>
					<option value="10">10개씩 보기</option>
					<option value="20">20개씩 보기</option>
				</select>
			</div>
		</div>
			<table>
				<tr>
					<th>지역</th>
					<th>작성자/제목</th>
					<th>근무일</th>
					<th>급여</th>
					<th>등록시간</th>
				</tr>
				<tr>
					<td>서울 뭐시기</td>
					<td>아무게업체/아하하하이히히히</td>
					<td>3일</td>
					<td>100000</td>
					<td>1시간30분전</td>
				</tr>
				<tr>
					<td>서울 뭐시기</td>
					<td>아무게업체/아하하하이히히히</td>
					<td>3일</td>
					<td>100000</td>
					<td>1시간30분전</td>
				</tr>
				<tr>
					<td>서울 뭐시기</td>
					<td>아무게업체/아하하하이히히히</td>
					<td>3일</td>
					<td>100000</td>
					<td>1시간30분전</td>
				</tr>
				<tr>
					<td>서울 뭐시기</td>
					<td>아무게업체/아하하하이히히히</td>
					<td>3일</td>
					<td>100000</td>
					<td>1시간30분전</td>
				</tr>
				<tr>
					<td>서울 뭐시기</td>
					<td>아무게업체/아하하하이히히히</td>
					<td>3일</td>
					<td>100000</td>
					<td>1시간30분전</td>
				</tr>
				<tr>
					<td>서울 뭐시기</td>
					<td>아무게업체/아하하하이히히히</td>
					<td>3일</td>
					<td>100000</td>
					<td>1시간30분전</td>
				</tr>
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
			</table>
		</div>
</body>
</html>