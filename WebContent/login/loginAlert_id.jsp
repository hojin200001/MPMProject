<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">

 $(document).ready(function() {
		alert("일반회원은 이용하실 수 없습니다."); 
		$(location).attr("href", "comMain.do");
	}) 
</script>

</head>
<body>
</body>
</html>