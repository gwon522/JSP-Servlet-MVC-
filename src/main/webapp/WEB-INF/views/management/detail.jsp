<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지 | 영화 정보</title>
	<link href="/resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico" />
    <!-- MetisMenu CSS -->
    <link href="/resources/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/dist/css/sb-admin-2.css" rel="stylesheet">

    <link href="/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@include file="../includes/manageHeader.jsp" %>
<div class ="row">
	<div class="col-lg-12">
		<h1 class="page-header">영화 세부 정보</h1>
	</div>
</div>
<div class="row">
   <div class="col-lg-12">
       <div class="panel panel-default">
           <div class="panel-heading"> 영화 정보 </div>
           <div class="panel-body">
           	<form action="/management/addMovie.do" method="post">
           		<div class="form-group">
           				<img alt="오류" src="/resources/img/poster/${vo.num}/${vo.num}.jpg" align="left" width="130px" height="170px" style="margin-right: 20px;" >
	           			<label>제목</label> : <c:out value="${vo.movie}"></c:out><br/>
	           			<c:if test="${not empty vo.director}"> <label>감독명</label> : <c:out value="${vo.director}"></c:out> &nbsp;&nbsp;&nbsp;</c:if> 
	           			<label>장르</label> : <c:out value="${vo.genre}"></c:out> &nbsp;&nbsp;&nbsp;
	           			<label>관람등급</label> : <c:out value="${vo.age}"></c:out> &nbsp;&nbsp;&nbsp;
	           			<label>러닝타임</label> : <c:choose> 
	           										<c:when test="${vo.runTime eq 0}"> 없음 </c:when>
	           										<c:otherwise><c:out value="${vo.runTime} 분"></c:out></c:otherwise>
	           									  </c:choose>
           		</div>
           		<br clear="left"/>
           		<div class="form-group">
           			<label>줄거리</label>  <p><c:out value="${vo.summary}"></c:out></p><br/>
           		</div>
                   <a class="btn btn-default btn-lg btn-inlineblock" href="management.do">목록</a>
                   <a class="btn btn-default btn-lg btn-inlineblock" href="update.do?num=${vo.num}">수정</a>
                   <a class="btn btn-default btn-lg btn-inlineblock" href="delete.do?num=${vo.num}">삭제</a>
           	</form>
           </div>
           <!-- /.panel-body -->
       </div>
       <!-- /.panel -->
   </div>
   <!-- /.col-lg-12 -->
        </div>
</body>
</html>