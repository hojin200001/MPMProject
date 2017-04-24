<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	<% if(session.getAttribute("user") != null){%>
	<%  if(session.getAttribute("msg").equals("로그인에 성공하였습니다.")){%>
			alert("로그인 성공!");
			location.href="MPMServlet?command=start";
			<%session.removeAttribute("msg");%>
	<% }}%>
	<% if(session.getAttribute("user") == null){%>
			alert("로그아웃 성공!");
			location.href="MPMServlet?command=start";
	<% } %>
<%-- 
	if((var a = <%session.getAttribute("msg");%>) == "update"){
		alert('로그인 성공!');
		window.opener.parent.location.href="MPMServlet?command=start"
	}
	if(window.name == "logout"){
		alert('로그아웃 되었습니다!');
		window.opener.parent.location.href="MPMServlet?command=start"
	} --%>
</script>
	
</body>
</html>