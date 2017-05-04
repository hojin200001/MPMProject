<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="script/board/js"></script>
<link rel="stylesheet" href="css/board.css">

<title>Insert title here</title>
<script type="text/javascript" src="js/board/freeBoard.js"></script>
</head>
<body>

<div id="wrap">
	<h1>정말로 삭제하시겠습니까?</h1>
	
	<input type="button" value="아니오" onclick="location.href='freeBoardDelete.do?num=${freeBoard.num}'">
	<input type="button" value="네" onclick="location.href='freeBoardView.do?num=${freeBoard.num}'">
	
</div>

</body>
</html>