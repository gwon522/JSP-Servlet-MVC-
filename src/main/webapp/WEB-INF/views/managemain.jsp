<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>관리자 페이지 | 메가박스</title>

    <!-- Bootstrap Core CSS -->
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
<%@include file="includes/manageHeader.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"> 영화 목록 </div>
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>번호</th>
                                        <th>제목</th>
                                        <th>개봉일</th>
                                        <th>감독명</th>
                                        <th>관람등급</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${list}" var="vo">
                                    <tr style="cursor: pointer;" onclick="location.href='detail.do?num=${vo.num}'">
                                    	<td><c:out value="${vo.num}"></c:out> </td>
                                    	<td><c:out value="${vo.movie}"></c:out> </td>
                                    	<td><fmt:formatDate pattern="yyyy/MM/dd" value="${vo.dates}"/></td>
                                    	<td><c:out value="${vo.director}"></c:out> </td>
                                    	<td><c:out value="${vo.age}"></c:out> </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
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
            <!-- /.row -->
<%@include file="includes/manageFooter.jsp" %>
</body>
</html>