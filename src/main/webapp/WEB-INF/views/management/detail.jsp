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
           			<label>제목</label> : <c:out value="${vo.movie}"></c:out><br/>
           			<label>감독명</label> : <c:out value="${vo.director}"></c:out> &nbsp;&nbsp;&nbsp;
           			<label>장르</label> : <c:out value="${vo.genre}"></c:out> &nbsp;&nbsp;&nbsp;
           			<label>관람등급</label> : <c:out value="${vo.age}"></c:out> &nbsp;&nbsp;&nbsp;
           			<label>러닝타임</label> : <c:out value="${vo.runTime} 분"></c:out><br/>
           			<label>줄거리</label>  <p><c:out value="${vo.summary}"></c:out></p><br/>
           		</div>
           		<div class="form-group">
           		</div>
                   <a class="btn btn-default btn-lg btn-block" href="management.do">목록</a>
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