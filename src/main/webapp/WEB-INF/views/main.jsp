<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록페이지</title>
</head>
<body>
	
	<div id="wrap">
	<c:forEach var="li" items="${memberList}">
		<div>${li.uid}</div>
		<div>${li.uname}</div>
	</c:forEach>
	</div>
	


</body>
</html>