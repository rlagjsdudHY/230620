<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    <!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>게시판 목록</title>
		<link rel="stylesheet" href="/style/style_Common.css">
	<link rel="stylesheet" href="/style/style_Template.css">
		<style>
		
		</style>
	</head>
	<body>
		<div id="wrap">
		<!--  헤더템플릿 시작 -->
		<%@ include file="/WEB-INF/views/ind/headerTmp.jsp" %>
    	<!--  헤더템플릿 끝 -->    	
    	
    	
			<hr>
			<h1>게시판</h1>
    	<main id="main" class="dFlex">
    	
    		<div id="lnb">
	    		<!--  메인 LNB 템플릿 시작 -->
				<%@ include file="/WEB-INF/views/ind/mainLnbTmp.jsp" %>
	    		<!--  메인 LNB 템플릿 끝 -->    	
    		</div>
    		<div class="listwrap">
			<div class="listHeader   ">
				<span>번호</span>
				<span>아이디</span>
				<span>이름</span>
				<span>제목</span>
				<span>시간</span>
			</div>
			<c:forEach var="list" items="${BBSlist}" varStatus="status">
				<div class="listRow  " data-link="${list.num}" >
					<span>${list.num}</span>
					<span>${list.uid}</span>
					<span>${list.uname}</span>
					<span>${list.subject}</span>
					<span>${list.regtm }</span>
					
				</div>
			</c:forEach>
			</div>
    	</main>
    	<!--  main#main  -->
			
			<form action="/search" mothod="post">
				<input type="text" name="keyword" placeholder="검색어를 입력하세요">
				<button type="submit">검색</button>
			</form>
			
			   	
    
        	   	
    	<!--  푸터템플릿 시작 -->
		<%@ include file="/WEB-INF/views/ind/footerTmp.jsp" %>
    	<!--  푸터템플릿 끝 -->  
		</div>	
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.0.min.js"></script>
        <script src="/script/script.js"></script>	
	</body>
</html>
   
 