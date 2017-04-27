<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="script/freeBoard.js"></script>
</head>
<body>

	<h1>게시글 수정</h1>
	
		<form action="freeBoardUpdate.do" method="post" name="frm">
		<input type="hidden" name="command" value="freeBoardUpdate">
		<input type="hidden" name="num" value="${param.num}">
		<table>
			<tr>
				<th>글쓴이</th>
				<td><input type="text" name="name" value="${FreeBoard.createName}" readonly="readonly">* 필수 </td>
			</tr>

			<tr>
				<th>제목</th>
				<td><input type="text" name="title" size="70" value="${FreeBoard.title}">* 필수</td>
			</tr>
		
			<tr>
				<th>내용</th>
				<td><textarea rows="15" cols="70" name="contents">${FreeBoard.contentsValue}</textarea>* 필수 </td>
				
			</tr>
		
		</table>
		
		<input type="submit" value="수정" onclick="return updateCheck()">
		</form>
</body>
</html>