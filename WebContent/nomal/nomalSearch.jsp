<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 
<script>
function toggleLayer(whichLayer) {
  var elem, vis;
  if(document.getElementById) // this is the way the standards work
    elem = document.getElementById(whichLayer);
  else if(document.all) // this is the way old msie versions work
      elem = document.all[whichLayer];
  else if(document.layers) // this is the way nn4 works
    elem = document.layers[whichLayer];
  vis = elem.style;
  // if the style.display value is blank we try to figure it out here
  if(vis.display==''&&elem.offsetWidth!=undefined&&elem.offsetHeight!=undefined)
    vis.display = (elem.offsetWidth!=0&&elem.offsetHeight!=0)?'block':'none';
  vis.display = (vis.display==''||vis.display=='block')?'none':'block';
}
</script>
<style>
div.quote {
 	margin-left: 25%;
  padding: 10px;
	 background-color: #FFCF31;
  border: 1px solid #00009C;
  width: 450px;
}
 
div.quote p {
 	font-size: .8em;
	 margin: 0px 0px 0px 0px;
}
 
div#commentForm {
 	display: none;
 	margin: 0px 20px 0px 20px;
 	font-family: Arial, sans-serif;
 	font-size: .8em;
}
 
a.commentLink {
 	font-family: Arial, sans-serif;
	 font-size: .9em;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
 
<nav style="margin-top: 20px;">
	<ul>
		<li>전체 채용 정보 : </li>
		<li>오늘의 채용 정보 : </li>
		<li>거주 지역 채용정보 : </li>
		<li>오늘의 구인 현황 : </li>
	</ul>
</nav>
 
<div class="quote">
<p style="text-align: right;"><a class="commentLink" title="Add a comment to this entry" href="javascript:toggleLayer('commentForm');">여기클릭</a>
 
	<div id="commentForm">
	
	
		<form action="test.do" id="formTest" method="post"> 
			<input type="text" readonly="readonly" id="test5">
			<div id="wrap">
				<div id="tabMenu">
					<ul>
						<li><a href="javascript:void(0);" title="서울" id="seoul" onclick="areaPass('seoul');">서울</a></li>
						<li><a href="javascript:void(0);" title="대전" id="daejun" onclick="areaPass('daejun');">대전</a></li>
						<li><a href="javascript:void(0);" title="대구">대구</a></li>
						<li><a href="javascript:void(0);" title="부산">부산</a></li>
					</ul>
				</div>
				<div id="tabSubMenu">
					<div>서울
						<div id="areaseoul">
							<ol></ol>
						</div>
					</div>
					<div>대전
						<div id="areadaejun">
							<ol></ol>
						</div>
					</div>
					<div>대구</div>
					<div>부산</div>
					<div>서브5</div>
					<div>서브6</div>
					<div>서브7</div>
				</div>
				
				
			<div>
					<p> 
						체크1<input type="checkbox" name="checkbox" value="1"/>
						체크2<input type="checkbox" name="checkbox" value="2"/> 
						체크3<input type="checkbox" name="checkbox" value="3"/>   
					</p>
					
					<p>
						라디오1<input type="radio" name="radiobox" value="으으으으으음" /> 
						라디오2<input type="radio" name="radiobox" value="으으으으으음1"/> 
						라디오3<input type="radio" name="radiobox" value="으으으으으음2"/>   
					</p>
				</div>
				
				
				
			</div>
		</form>
		
		<input type="button" onclick="formSubmit();" value="검색"/>
	</div>
</div>
 
 
 
<script type="text/javascript">
var j;
var wh;
 
 
function formSubmit(){
	$("#formTest").submit();
}
 
function areaPass(area){
	
	wh=area;
	$.ajax({
		url : "area.json", //데이터를 요청할 URL주소
		dataType : "json",
		success : function(result){
			
			console.log(result);
			console.log(wh);
			
	
			$("#area"+wh+" ol").empty();
			$.each(result[wh], function(i,d){
				$("#area"+wh+" ol").append(
					"<a " + "id=" + d["id"] + " href=" + "#" + " value=" +d["value"] + " onclick = " + "areaChoose(" + "'" + d["value"]+"'" + ");" + ">" + d["area"] + "</a>"
					);
			});
		}
	});
}
 
 
/*
$(function(){
	
	
	$('#'+wh).on('click',function(){
		
		alert('qqq');
		$.ajax({
			url : "area.json", //데이터를 요청할 URL주소
			dataType : "json",
			success : function(result){
				
				console.log(result);
				console.log(wh);
				
				
				
				$("#area"+wh+" ol").empty();
				$.each(result[wh], function(i,d){
					$("#area"+wh+" ol").append(
						"<a " + "id=" + d["id"] + " href=" + "#" + " value=" +d["value"] + " onclick = " + "areaChoose(" + "'" + d["value"]+"'" + ");" + ">" + d["area"] + "</a>"
						);
				});
			}
		});
	});
	
	$('#openDaejun').on('click',function(){
		$.ajax({
			url : "area.json", //데이터를 요청할 URL주소
			dataType : "json",
			success : function(result){
				$("#areaSeoul ol").empty();
				$.each(result.daejun, function(i,d){
					$("#areaSeoul ol").append(
						"<a " + "id=" + d["id"] + " href=" + "#" + " value=" +d["value"] + " onclick = " + "areaChoose(" + "'" + d["value"]+"'" + ");" + ">" + d["area"] + "</a>"
						);
				});
			}
		});
	});
});*/
 
function areaChoose(vl){
	var text = vl;
	if($('#test5').val()==null){
		$('#test5').val(text);
	}
	else{
		var testEx = $('#test5').val() + vl +', ';
		$('#test5').val(testEx);
	}
};
 
</script>
 
<!-- 지역 선택 스크립트 -->
<script>
    var tabMenu = $("#tabMenu ul>li>a");
    var tabSubMenu = $("#tabSubMenu>div");
    // 모든 서브메뉴 안보이게
    tabSubMenu.hide();
    // 탭메뉴 a 를 클릭했을때
    tabMenu.on("click", function(e){
        // 클릭한 메뉴가 몇번째 메뉴인지 가져옴
        var idx = tabMenu.index($(this));
        // 모든 서브메뉴 안보이게
        tabSubMenu.hide();
        // 서브메뉴중에서 클릭한 메뉴에 해당하는 서브메뉴만 보이게
        tabSubMenu.eq(idx).show();
        // 현재 on 이미지를 off 이미지로 변경
        tabMenu.find("img.on").removeClass("on").toggle();
        // 클릭한 탭 이미지만 on 이미지로 변경
        $(this).find("img").addClass("on").toggle({to:"on"});
    });
    /**
        이미지 토클 플러그인
        $("img").toggle();              // on이면 off로, off면 on 이미지로
        $("img").toggle({to:"on"});     // 무조건 on 이미지로
        // on, off 이미지 패턴설정
        $("img").toggle({to:"on", on:"_on.gif", ".gif"});
    */
    $.fn.toggle = function(opt){
        var base = {
            to : null,
            on : "_on.png",
            off : ".png"
        };
        $.extend(base, opt);
        this.each(function(){
            var el = $(this);
            if(!el.is("img")) return;
            var src = conv = el.attr("src");
            // to 옵션이 있을때
            if( base.to ){
                if( base.to=="on" && (src.indexOf(base.on)<0) ) conv = src.replace(base.off,base.on);
                else if( base.to=="off" ) conv = src.replace(base.on,base.off);
            }
            // to 옵션이 없으면 토글 처리
            else{
                conv = (src.indexOf(base.on) < 0) ? src.replace(base.off,base.on) : src.replace(base.on,base.off);
            }
            el.attr("src", conv);
            el.data("orgimg", conv);
        });
        return this;
    };
    // 페이지 로딩시 맨 첫번째 메뉴 튀어나와 있게 함.
    tabMenu.eq(0).click();
</script>
 
 
</body>
</html>