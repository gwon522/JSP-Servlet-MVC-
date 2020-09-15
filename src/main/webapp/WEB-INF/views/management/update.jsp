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
           		<form action="" method="post">
           		<div class="form-group">
           			<label>제목</label><input class="form-control" type="text" value="${vo.movie}" name="movie"/>
           			<label>감독명</label><input class="form-control" type="text" value="${vo.director}" name="director"/>
           		</div>
           		<div class="form-group">
           			<label >장르</label> : 
           			<select name="genre">
           				<option selected="selected" value="not-picked">===선택===</option>
           				<option value="1">액션</option>
           				<option value="2">성인</option>
           				<option value="3">드라마</option>
           				<option value="4">스릴러</option>
           				<option value="5">공포</option>
           				<option value="6">코미디</option>
           				<option value="7">SF</option>
           				<option value="8">애니메이션</option>
           				<option value="9">다큐멘터리</option>
           				<option value="10">없음</option>
           			</select>
           			&nbsp;&nbsp; <label >관람등급</label> : 
           			<select name="age">
           				<option selected="selected" value="not-picked">===선택===</option>
           				<option value="1">전체 관람가</option>
           				<option value="2">12세 관람가</option>
           				<option value="3">15세 관람가</option>
           				<option value="4">청소년 관람불가</option>
           			</select>
           			&nbsp;&nbsp; <label >영화타입</label> : 
           			<select name="type" >
           				<option selected="selected" value="not-picked">===선택===</option>
           				<option value="1">일반</option>
           				<option value="2">필름 소사이어티</option>
           				<option value="3">클래식 소사이어티</option>
           			</select>
           			&nbsp;&nbsp; <label >특별관 유무</label> : 
           			<select name="special">
           				<option selected="selected" value="not-picked">===선택===</option>
           				<option value="none">없음</option>
           				<option value="MX">MX</option>
           			</select>
           			&nbsp;&nbsp; <label >개봉일자</label> : 
           			<input class="inline" type="date" name="dates" value="${vo.dates}"/>
           		</div>
           		<div class="form-group">
           			<label>러닝타임</label> : <input type="number" value="${vo.runTime}" name="runTime" />&nbsp;&nbsp;
           			<label>배우 </label> : <input type="text" value="${vo.actors}" name="actors" />
           		</div>
           		<div class="form-group">
           			<label >포스터</label><input type="file" name="image"/>
           		</div>
           		
           		<div class="form-group">
           			<label >줄거리</label><textarea class="form-control" d rows="3" name="summary">${vo.summary}</textarea>
           		</div>
           		<button type="submit" class="btn btn-default">수정 완료</button>
           		<button type="reset" onclick="location.href='/management/detail.do?num=${vo.num}';" class="btn btn-default">취소</button>
           	</form>
           </div>
       </div>
   </div>
        </div>
</body>
</html>