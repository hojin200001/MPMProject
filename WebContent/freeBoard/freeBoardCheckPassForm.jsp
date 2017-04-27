<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="script/board/js"></script>
<link rel="stylesheet" href="css/board.css">

<title>Insert title here</title>
<script type="text/javascript" src="script/freeBoard.js"></script>
</head>
<body>

<div id="wrap">
	<h1>비밀번호 확인</h1>
	
	<form action="MPMServlet" name="frm" method="post">
		<input type="hidden" name="command" value="freeBoardCheckPass">
		<input type="hidden" name="num" value="${param.num}">
		<table>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pass"></td>
			</tr>
		</table>
		<br>
		<input type="submit" value="확인" onclick="return passCheck()">
		<br>
		${msg}
	</form>
</div>

</body>
</html>