<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">
.hader{
margin-top: 10px;
border-bottom: 3px solid;
}
</style>
</head>
<body style="background-color: #f2f2f2;">
	<div class="hader">
		<span>${user.name}님의</span><span>메세지</span>
	</div>
	<table class="table table-hover">
		<tr>
			<th>내용</th>
			<th>분류</th>
			<th>전송날짜</th>
		</tr>
		<c:forEach items="${mBoard}" var="mb">
			<c:choose>
				<c:when test="${userInfo == 1}">
					<tr>
						
						<td><a href="#">${mb.cnum}번 공고에 ${mb.nmtext}하였습니다.</a></td>
						<td>${mb.nmtext}</td>
						<td><fmt:formatDate value="${mb.day}" pattern="yyyy-MM-dd"/><a href="deleteMesege.do?page=${current}&mnum=${mb.nmnum}" style="margin-left: 10px;">삭제</a></td>
					</tr>
				</c:when>
				<c:when test="${userInfo == 2}">
					<tr>
						<td><a href="#">${mb.nomalId}님이 ${mb.cnum}번 공고에 ${mb.cmtext}하였습니다.</a></td>
						<td>${mb.cmtext}</td>
						<td><fmt:formatDate value="${mb.day}" pattern="yyyy-MM-dd"/><a href="deleteMesege.do?page=${current}&mnum=${mb.cmnum}" style="margin-left: 10px;">삭제</a></td>
					</tr>
				</c:when>
			</c:choose>
		</c:forEach>
		<td colspan="3" style="text-align: center;">
		<c:if test="${start != 1}">
			<a class="contents_bottom" id="" href="mesegeForm.do?page=1">처음</a>
			<a class="contents_bottom" id="" href="mesegeForm.do?page=${start-1}">이전</a>
		</c:if>
		<c:forEach begin="${start}" end="${end <last? end: last}" var="i">
			<c:choose>
				<c:when test="${i == current }">
					<a class="contents_bottom" id="on">[${i}]</a>
				</c:when>
				<c:otherwise>
					<a class="contents_bottom" id="" href="mesegeForm.do?page=${i}">[${i}]</a>				
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${end < last}">
			<a class="contents_bottom" id="" href="mesegeForm.do?page=${end+1}">다음</a>
			<a class="contents_bottom" id="" href="mesegeForm.do?page=${last}">마지막</a>
		</c:if>
		</td>
	</table>
</body>
</html>