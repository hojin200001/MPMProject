<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<div>
<button class="btn btn-primary" type="button">
  전체 채용 정보 : <span class="badge">327</span>
</button>

<button class="btn btn-primary" type="button">
  오늘의 채용 정보 : <span class="badge">54</span>
</button>

<button class="btn btn-primary" type="button">
  거주 지역 채용정보 : <span class="badge">12</span>
</button>

<button class="btn btn-primary" type="button">
  오늘의 구인 현황 : <span class="badge">27</span>
</button>
</div>

<button class="btn btn-primary btn-block" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" 
aria-controls="collapseExample">
  지역 보기
</button>
<button class="btn btn-primary btn-block" type="button" data-toggle="collapse" data-target="#collapseExample2" aria-expanded="false" 
aria-controls="collapseExample2">
   직업 보기
</button>
<button class="btn btn-primary btn-block" type="button" data-toggle="collapse" data-target="#collapseExample3" aria-expanded="false" 
aria-controls="collapseExample3">
   직업 보기
</button>
<form action="nomalBoardList.do" id="formTest" name="area" method="post"> 
<div class="collapse" id="collapseExample">
	<div class="well">
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
	<div class="well">
		<div id="checkDiv">
			<div></div>
		</div>
	</div>
</div>

<div class="collapse" id="collapseExample3">
	<div class="well">
		<h6>경력 선택</h6>
		<p>
		1년<input type="radio" name="radiobox" value="1년"/> 
		2년<input type="radio" name="radiobox" value="2년"/> 
		3년<input type="radio" name="radiobox" value="3년"/>   
		</p>
	</div>
</div>

<input type="submit" value="검색"/>
</form>

<script type="text/javascript">
var j;
var wh;
function areaPass(area){
   wh=area;
   console.log(wh);
   $.ajax({
      url : "nomal/area3.json", //데이터를 요청할 URL주소
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
		url : "nomal/area3.json",
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
      url : "nomal/job.json", //데이터를 요청할 URL주소
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