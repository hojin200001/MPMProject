<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<style>
h3{
	margin-left: 130px;
}
.main_div{
	margin-left: 100px;
}
.magArea{
	margin-left: 10px;
	font-size: 13px;
}
.content_div{
	margin-top: 10px;
}
.content_div>input {
    width: 150px;
    margin-left: 30px;
    color: #fff;
    border: 1px solid #646464;
    background-color: #0f4579;
}
</style>
<script type="text/javascript">
	function oksub(){
		var msg = '${msg}';
		if(msg =="사용 가능한 아이디 입니다"){
			var a = '${comId}';
			$(opener.document).find("#comId").val(a);
			window.close();
		}else{
			alert("사용불가능합니다. ID를 재 확인해주세요");
			$('#id').focus();
		}
		
	}
</script>
<script type="text/javascript">
$(window).load(function(){
	var msg = '${msg}';
	if(msg == "존재하는 아이디 입니다. 재 입력해 주세요"){
		$('.magArea').css('color', "red");
	}
});
</script>
</head>
<body style="background-color: #ebedee;">
<h3>아이디 중복확인</h1>
<div class="main_div">
	<form action="idCheckCom.do" method="get">
	<div class="magArea" id="">${msg}</div>
	<div class="content">
		<input type="text" name="comId" value="${comId}" id="id">
		<input type="submit" value="중복확인">			
	</div>
	</form>
	<div class="content_div">
		<input type="button" value="사용하기" onclick="oksub()">
	</div>
</div>

</body>
</html>