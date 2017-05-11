<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="bootStrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="bootstrap/bootstrap.min.js"></script>
<style type="text/css">
#a1{
	margin-left: 100px;
}
#a2{
	margin-left: 20px;
}
#a1, #a2{
	margin-top: 30px;
	width:100px;
	background-color: #0f4579;
	border: 1px solid;
}
#a1>p, #a2>p{
	margin-top: 10px;
	font-size: 15px;
}
</style>
<script type="text/javascript">
function logOutRe(){
	<%session.invalidate();%>
	opener.location.reload()
	window.close();
}
</script>
</head>
<body>
<h3 class="text-danger bg-success" style=" margin-left: 100px;background-color: #fff;">로그 아웃하시겠습니까?</h1>
<a class="btn btn-success btn-sm active" role="button" onclick="logOutRe()" id="a1"><p align="middle" >예</p></a>&nbsp;&nbsp;&nbsp;

<a class="btn btn-success btn-sm active" role="button" onclick="javascript:window.close();" id="a2"><p align="middle">아니오</p></a>
</body>
</html>