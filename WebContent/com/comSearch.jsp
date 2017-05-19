<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css?var=1">
<link rel="stylesheet" type="text/css" href="css/main/SkyBanner.css?var=1">
<link rel="stylesheet" type="text/css" href="css/com/comBoardList.css?var=1">

<title>Insert title here</title>
<style type="text/css">

/* 컨텐츠*/
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
	height: 45px;
}
.contents_top2_1{
	margin-top:-5px;
	width:70%;
	float: left;
}
.contents_top2_2{
	margin-top:-5px;
	width: 20%; 
	float: right;
	text-align: right;
}
.contents_top2 .top2_1{
	font-size: 15px;
	font-weight: bold;
}
.top2_2>span{
	color:#ff5400;
}
.contents_top3{
	padding-top:12px;
	height: 20px;
	color: #959595;
	font-size: 12px;
}
.contents_top3>div>a:HOVER{
	cursor: pointer;
}
.contents_top3_div{
	width: 49%;
	float: left;
}
.contents_top3_div2{
	width: 49%;
	float: right;
	text-align: right;
	padding-bottom: 5px;
}
.contents_top3_div2>select{
	background-color: #fff;
	border: 1px solid #bbb;
}
#contents_top_id, #contents_top_id2, #contents_top_id3{
	text-decoration: none;
}
#contents_top_id:HOVER, #contents_top_id2:HOVER, #contents_top_id3:HOVER{
	text-decoration:underline;
}
.contents_top3 a.on{
	color: #000;
	font-weight: bold;
	font-size: 13px;
}
.contents_top3 a.off{
	color: #B8B8B8;
}
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
/* 테이블 */
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	border-bottom: 1px solid #b5b5b5;
	padding: 15px;
	text-align: center;
	font-size: 12px;
}
td>a{
	text-decoration: none;
	font-size: 15px;
}
.tr_contents:HOVER {
	background-color: #DAFFFF;
}
.tr_contents>td>a:HOVER{
	cursor: pointer;
}
.tr_contents_2{
	text-align: center;
}
.footer {
	padding: 10px 0;
	background-color: #f2f2f2;
	text-align: center
}

.copy {
	font-size: 10px;
}
</style>
</head>
<body>
<div class="container">
 <div class="header">
  				<div class="searchArea">
  			<dir class="searchs">
  				<img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로"/>
  				<div class="serachs_div">
	  				<input type="text" alt="전체검색" class="searchText" style="margin-top: 11px; margin-left: -20px;">
	  				<img src="img/main/btn_search.gif" alt="홈으로" style="float: left; margin-top: 17px; margin-left: 0px;"/></input>
  				</div>
  			</dir>
  		</div>

    <!-- end .header --></div>
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
   				<li><a href="nomalBoardList.do">구직등록 현황</a></li>
   				<li><a href="nomalWriteForm.do">구직등록 하기</a></li>
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
   </div>
	<div class="contents_top"><span onclick="location.href='index.do'">홈</span> > 
	<span onclick="location.href='comSearch.do'" style="font-weight: bold;">구인자 검색</span></div>
<div class="contents_top2" style="padding-top: 10px">
	<div class="contents_top2_1">

		<button class="btn btn-primary" type="button">
		  전체 채용 정보 : <span class="badge">${totalPage}</span>
		</button>

		<button class="btn btn-primary" type="button">
		  오늘의 채용 정보 : <span class="badge">${todayTimeCom}</span>
		</button>
		
		<button class="btn btn-primary" type="button">
		  거주 지역 채용정보 : <span class="badge">${userareanum}</span>
		</button>

		<button class="btn btn-primary" type="button">
			오늘의 구직 현황 : <span class="badge">${todayTimeNomal}</span>
		</button>
		
	</div>
	
	<div class="contents_top2_2">
		<input type="button" class="btn btn-primary" value="구인등록하기" onclick="location.href='comWriteForm.do'">
	</div>
</div>

<div>

<button class="btn btn-primary btn-block" type="button" data-toggle="collapse" data-target="#collapseExample2" aria-expanded="false" 
 style="padding-top: 10px; margin-top: 10px;" aria-controls="collapseExample2">
   직업 보기
</button>
<button class="btn btn-primary btn-block" type="button" data-toggle="collapse" data-target="#collapseExample3" aria-expanded="false" 
style="padding-top: 10px; margin-top: 10px;" aria-controls="collapseExample3">
   경력 선택
</button>
<button class="btn btn-primary btn-block" type="button" data-target="#collapseExample" aria-expanded="false" 
style="padding-top: 10px; margin-top: 10px;" aria-controls="collapseExample" style="margin-bottom: 0px">
  지역 보기
</button>
<form action="comSearch.do" id="formTest" name="area" method="post"> 
<div id="collapseExample">
	<div class="well" style="margin-bottom: 0px">
		<input type="text" class="form-control" name="area" readonly="readonly" id="test5">
		<p>지역 선택</p>
		<div id="gd">
			<div></div>
		</div>
		<div id="awesomet">
			<p>관할지역</p>
			<div></div>
		</div>
	</div>
</div>

<div class="collapse" id="collapseExample2">
	<div class="well" style="margin-bottom: 0px">
		<div id="checkDiv">
			<div></div>
		</div>
	</div>
</div>

<div class="collapse" id="collapseExample3">
	<div class="well" style="margin-bottom: 0px">
		<h5>경력 선택</h5>
		<p style="font-size: 13px">
		1년<input type="radio" name="radiobox" value="1년"/> 
		2년<input type="radio" name="radiobox" value="2년"/> 
		3년<input type="radio" name="radiobox" value="3년"/>   
		</p>
	</div>
</div>
<div class="well">
<input class="btn btn-info" type="submit" value="검색" align="middle"/>
</div>

</form>
</div>



<div class="panel panel-primary">
<div class="panel-heading">최근 구직공고</div>
<div class="panel-body"><p>여기서는 검색조건에 맞도록 구직 공고가 나타납니다.</p></div>

<table class="table">
	<c:choose>
		<c:when test="${nomalBoard ne '[]'}">
	<thead>
		<tr>
			<th>제목</th>
			<th>기능</th>
			<th>경력</th>
			<th>지역</th>
			<th>등록일</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${nomalBoard}" var="n" varStatus="r" begin="0" end="16">
			<tr>
				<td><a href="nomalView.do?nnum=${n.nnum}">${n.ntitle}</a></td>
				<td>${n.njob}</td>
				<td>${n.ncareer}</td>
				<td>${n.narea}</td>
				<td><fmt:formatDate value="${n.njoinDay}" pattern="yy년MM월dd일"/></td>
			</tr>
		</c:forEach>
			<tr>
		<td colspan="5">
		<c:if test="${start != 1}">
			<a href="comSearch.do?page=1&area=${ar}">[처음]</a>
			<a href="comSearch.do?page=${start-1}&area=${ar}">[이전]</a>
		</c:if>
		<c:forEach begin="${start}" end="${end <last? end: last}" var="i">
			
			<c:choose>
				<c:when test="${i == current }">
					[${i}]
				</c:when>
				<c:otherwise>
					<a href="comSearch.do?page=${i}&area=${ar}">[${i}]</a>				
				</c:otherwise>
			</c:choose>
				
		</c:forEach>
		
		<c:if test="${end < last}">
			<a href="comSearch.do?page=${end+1}&area=${ar}">[다음]</a>
			<a href="comSearch.do?page=${last}&area=${ar}">[마지막]</a>
		</c:if>
		
		</td>
	</tr>
	</tbody>
		</c:when>
		<c:otherwise>
			<p style="font-size: 20px;">검색 결과가 없습니다.</p>
		</c:otherwise>
	</c:choose>
	
</table>

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
   
   </div>


<script type="text/javascript">
var j;
var wh;
function areaPass(area){
   wh=area;
   console.log(wh);
   $.ajax({
      url : "json/area.json",
      dataType : "json",
      success : function(result){
         $("#awesomet div").empty();
         $.each(result[wh], function(i,d){
            $("#awesomet div").append(
                  "<button type=" + "button" + " class=" + "'btn btn-default btn-sm'" + 
					" onclick = " + "areaChoose(" + "'" + d["value"] +"'" + ");" + ">" + d["value"] +" "+ "</button>"
            );
         });
      }
   });
}

$(window).load(function(){
	$.ajax({
		url : "json/area2.json",
		dataType : "json",
		success : function(result){
			$("#gd div").empty();
			$.each(result, function(i,d){
				var nd;
				$.each(d, function(key,v){
					nd=v["id"]
				});
				$("#gd div").append(
					"<button type=" + "button" + " class=" + "'btn btn-info'" + 
					" onclick = " + "areaPass(" + "'" + i +"'" + ");" +
					">" + nd + "</button>"
				);
			});
		}
	});
	
   $.ajax({
      url : "json/job.json",
      dataType : "json",
      success : function(result){
         $("#checkDiv div").empty();
         $.each(result.job, function(i,d){
            $("#checkDiv div").append(
               "<input type=" + "checkbox" + " name=" + "checkbox" + " value=" + d["value"] + ">" + d["value"]
            );
         });
      }
   });
});

function areaChoose(vl){
   var text = vl;
   $('#test5').val(text);
};
</script>



</body>
</html>