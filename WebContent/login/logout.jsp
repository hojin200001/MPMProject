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
<script type="text/javascript" src="script/script.js"></script>
</head>
<body>
<h1 class="text-danger bg-success">로그 아웃하시겠습니까?</h1>
<a class="btn btn-success btn-sm active" role="button" href='logout.do'><p align="middle">예</p></a>&nbsp;&nbsp;&nbsp;

<a class="btn btn-success btn-sm active" role="button" onclick="javascript:history.back();"><p align="middle">아니오</p></a>
<img src="img/main/sh.PNG" class="img-circle" alt="Responsive image">
</body>
</html>