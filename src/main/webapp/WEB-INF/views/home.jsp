<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>gdd</h3>
<ul>
<c:forEach items="${list}" var="vo">
	<li>
	<h3>${vo.num}</h3>
	<h3>${vo.movie}</h3>
	<h3>${vo.genre}</h3>
	<h3>${vo.age}</h3>
	<h3>${vo.director}</h3>
	<h3>${vo.dates}</h3>
	<h3>${vo.age}</h3>
	</li>
</c:forEach>
</ul>
</body>
</html>