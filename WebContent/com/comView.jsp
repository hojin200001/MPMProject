<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">

table {
    border-collapse: collapse;
    width: 100%;
}

th{
width : 20%
}

th, td {
    border : 1px solid #ddd;
    padding: 15px;
    text-align: center;
}

</style>

<title>게시물 상세보기</title>
</head>
<body>

<h1>게시글 상세보기</h1>
	<table>
	<tr>
		<th>작성자</th>
		<td>${comBoard.comId}</td>
		<th>이메일</th>
		<td>${comBoard.comEmail}</td>	
	</tr>
		<tr>
		<th>작성일</th>
		<td><fmt:formatDate value="${comBoard.createDay}"/></td>
		<th>조회수</th>
		<td>${comBoard.ccount}</td>	
	</tr>
	<tr>
		<th>제목</th>
		<td colspan="3">${comBoard.ctitle}</td>
	<tr>
	
	</tr>
	<tr>
		<th>내용</th>
		<td colspan="3">${comBoard.ctext}</td>	
	</tr>
	
	<tr>
		<th>직업</th>
		<td colspan="3">${comBoard.cjob}</td>	
	</tr>
	
	<tr>
		<th>경력</th>
		<td colspan="3">${comBoard.ccareer}</td>	
	</tr>

	<tr>
		<td colspan="4">
			<input type="button" value="목록으로" onclick="location.href='boardList.do'">
			<c:choose>
				<c:when test="${user.id eq comBoard.comId}">
					<input type="button" value="수정하기" onclick="location.href='modifyForm.do?num=${comBoard.cnum}'">
				</c:when>
			</c:choose>
			
		</td>
	</tr>
</table>
</body>
</html>