<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script> -->
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/main/menuBar.css">
<link rel="stylesheet" type="text/css" href="css/main/public_header.css?var=2">
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
  				<img class="imageLogo" src="img/main/logoB_07.png" alt="홈으로" style="margin-top: 40px;"/>
  				<div class="serachs_div">
	  				<input type="text" alt="전체검색" class="searchText" style="margin-top: 11px;padding: 8.4px;">
	  				<img src="img/main/btn_search.gif" alt="홈으로" style="float: left; margin-top: 11px; margin-left: 0px;"/></input>
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
					<li><a href="nomalMain.do">홈으로</a></li>
	  				<li><a href="nomalSearch.do">일자리찾기</a></li>
			    	<li><a href="nomalBoardList.do">일자리등록정보</a>
			    	<ul>
			    		<li><a href="nomalBoardList.do">구직 등록 현황</a></li>
			    		<li><a href="nomalWriteForm.do">구직 등록하기</a></li>	
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
	<div class="contents_top"><span onclick="location.href='index.do'">홈</span> > <span onclick="location.href='nomalMain.do'">일반메인</span> > <span onclick="location.href='nomalBoardList.do'" style="font-weight: bold;">구직등록 현황</span></div>
	<div class="contents_top2" style="padding-top: 10px">
	<div class="contents_top2_1">

		<button class="btn btn-primary" type="button">
		  전체 채용 정보 : <span class="badge">${userbasic.totalPage}${combasic.totalPage}</span>
		</button>

		<button class="btn btn-primary" type="button">
		  오늘의 채용 정보 : <span class="badge">${userbasic.todayTimeCom}${combasic.todayTimeCom}</span>
		</button>
		
		<button class="btn btn-primary" type="button">
		<c:choose>
			<c:when test="${userInfo==1}">
				거주 지역 채용정보 : <span class="badge">${userarea}</span>
			</c:when>

			<c:otherwise>
				업체 지역 구직정보 : <span class="badge">${comarea}</span>
			</c:otherwise>
		</c:choose>
			  
		</button>

		<button class="btn btn-primary" type="button">
			오늘의 구직 현황 : <span class="badge">${userbasic.todayTimeNomal}${combasic.todayTimeNomal}</span>
		</button>
		
	</div>

		<div class="contents_top2_2">
			<input class="btn btn-primary" type="button" value="구직등록하기" onclick="location.href='nomalWriteForm.do'">
		</div>
	</div> 
	<div class="contents_top3">
		<div class="contents_top3_div">
			<c:choose>
				<c:when test="${search_type eq 1}">
						<a class="on" id="contents_top_id"><img src="img/com/check.png">등록일순</a>
						<a class="off" id="contents_top_id2" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=2"><img src="img/com/point.png">마감일순</a>
						<a class="off" id="contents_top_id3" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=3"><img src="img/com/point.png">신청인원순</a>
				</c:when>
				<c:when test="${search_type eq 2}">
						<a class="off" id="contents_top_id" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=1"><img src="img/com/point.png">등록일순</a>
						<a class="on" id="contents_top_id2"><img src="img/com/check.png">마감일순</a>
						<a class="off" id="contents_top_id3" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=3"><img src="img/com/point.png">신청인원순</a>
				</c:when>
				<c:when test="${search_type eq 3}">
						<a class="off" id="contents_top_id" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=1"><img src="img/com/point.png">등록일순</a>
						<a class="off" id="contents_top_id2" href="comBoardList.do?&boardsPerPage=${PerPage}&search_type=2"><img src="img/com/point.png">마감일순</a>
						<a class="on" id="contents_top_id3"><img src="img/com/check.png">신청인원순</a>
				</c:when>
				
			</c:choose>
		</div>

		<div class="contents_top3_div2">
			<form action="comBoardList.do" method="post">
			<select name="boardsPerPage" onchange="this.form.submit();">
				<c:choose>
					<c:when test="${PerPage eq 5 or null eq PerPage}">
						<option value="5" selected="selected">5개씩 보기</option>
						<option value="10">10개씩 보기</option>
						<option value="20">20개씩 보기</option>
					</c:when>
					<c:when test="${PerPage eq 10}">
						<option value="5" >5개씩 보기</option>
						<option value="10" selected="selected">10개씩 보기</option>
						<option value="20">20개씩 보기</option>
					</c:when>
					<c:when test="${PerPage eq 20}">
						<option value="5" >5개씩 보기</option>
						<option value="10">10개씩 보기</option>
						<option value="20" selected="selected">20개씩 보기</option>
					</c:when>
				</c:choose>
			</select>
		</form>
		</div>
	</div>
	

<table>
	<c:choose>
		<c:when test="${nomalBoard ne '[]'}">
			<tr style="background-color:  #f2f2f2">
				<th>희망지역</th>
				<th>등록 글 제목/신청인원</th>
				<th>ID</th>
				<th>주특기</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
			<c:forEach items="${nomalBoard}" var="n">
				<tr class="tr_contents">
					<td>${n.narea}</td>
					<td class="tr_contents_2"><a href="nomalView.do?nnum=${n.nnum}">${n.ntitle}</a></td>
					<td>${n.nomalId}</td>
					<td>${n.njob}</td>
					<td><fmt:formatDate value="${n.njoinDay}" pattern="yyyy-MM-dd"/></td>
					<td>${n.ncount}</td>
				</tr>
			</c:forEach>
			
	<tr>
		<td colspan="5">
		<c:if test="${start != 1}">
			<a href="nomalBoardList.do?page=1&area=${ar}">[처음]</a>
			<a href="nomalBoardList.do?page=${start-1}&area=${ar}">[이전]</a>
		</c:if>
		<c:forEach begin="${start}" end="${end <last? end: last}" var="i">
			
			<c:choose>
				<c:when test="${i == current }">
					[${i}]
				</c:when>
				<c:otherwise>
					<a href="nomalBoardList.do?page=${i}&area=${ar}">[${i}]</a>				
				</c:otherwise>
			</c:choose>
				
		</c:forEach>
		
		<c:if test="${end < last}">
			<a href="nomalBoardList.do?page=${end+1}&area=${ar}">[다음]</a>
			<a href="nomalBoardList.do?page=${last}&area=${ar}">[마지막]</a>
		</c:if>
		
		</td>
	</tr>
	
	
	</c:when>
			<c:otherwise>
				<td colspan="5"> 등록된 구직등록 정보가 없습니다. 구직정보를 등록해 주세요.</td>
			</c:otherwise>
		</c:choose>
		
   
   </table>
   
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