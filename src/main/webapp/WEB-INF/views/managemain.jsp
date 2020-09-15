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
    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
<script>
if (${param.result} == 1) {
	alert('작업에 성공했습니다.')
}else {
	alert('작업에 오류가 있습니다.')
}
</script>
<body>
<%@include file="includes/manageHeader.jsp" %>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading"><p style="display: inline-block; font: 25px bolid;"> 영화 목록 </p><div style="float: right;"><a class="btn" href="/management/addMovie.do">영화 등록</a></div></div>
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
                                    <c:forEach items="${list}" var="vo" varStatus="status">
                                    <tr style="cursor: pointer;" onclick="location.href='detail.do?num=${vo.num}'">
                                    	<td><c:out value="${status.count}"></c:out> </td>
                                    	<td><c:out value="${vo.movie}"></c:out> </td>
                                    	<td><fmt:formatDate pattern="yyyy/MM/dd" value="${vo.dates}"/></td>
                                    	<td><c:out value="${vo.director}"></c:out> </td>
                                    	<td><c:out value="${vo.age}"></c:out> </td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
<%@include file="includes/manageFooter.jsp" %>
</body>
</html>