<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/board.css">
<script type="text/javascript" src="script/board.js"></script>
</head>
<body>

<div id="wrap" align="center">
	<h1>게시글 등록</h1>
	
	<form action="MPMServlet" method="post" name="frm">
		<input type="hidden" name="command" value="freeBoardWrite">
		<table>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" size="70">* 필수</td>
			</tr>
		
			<tr>
				<th>내용</th>
				<td><textarea rows="15" cols="70" name="contents"></textarea> </td>
				
			</tr>
		
		</table>
		
		<br>
		
		<input type="submit" value="등록" onclick="return insertCheck()">
		
	</form>


</div>

</body>
</html>




