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
           			<label>제목 : </label><input class="form-control" type="text" name="title"/>
           		</div>
           		<div class="form-group">
           			<label>감독명</label><input class="form-control" type="text" name="director"/>
           		</div>
           	</form>
               <div class="well">
                   <h4>DataTables Usage Information</h4>
                   <p>DataTables is a very flexible, advanced tables plugin for jQuery. In SB Admin, we are using a specialized version of DataTables built for Bootstrap 3. We have also customized the table headings to use Font Awesome icons in place of images. For complete documentation on DataTables, visit their website at <a target="_blank" href="https://datatables.net/">https://datatables.net/</a>.</p>
                   <a class="btn btn-default btn-lg btn-block" target="_blank" href="https://datatables.net/">View DataTables Documentation</a>
               </div>
           </div>
           <!-- /.panel-body -->
       </div>
       <!-- /.panel -->
   </div>
   <!-- /.col-lg-12 -->
        </div>
</body>
</html>