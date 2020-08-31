<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<% pageContext.setAttribute("replaceChar", "\n");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라이프시어터, 메가박스</title>
<link rel="shortcut icon" href="https://www.megabox.co.kr/static/pc/images/favicon.ico" />
<link href="<c:url value="${pageContext.request.contextPath}/resources/css/megabox.min.css" />" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/commons.js"></script>

</head>
<body>
<%@include file="includes/header.jsp" %>
<%@include file="includes/section.jsp" %>
<div class="container">
			<div class="page-util">
				<div class="inner-wrap">
					<div class="location">
						<span>Home</span> <a href="${pageContext.request.contextPath}/movie.do?type=1" title="영화 페이지로 이동">영화</a> 
						<a href="${pageContext.request.contextPath}/movie.do?type=1" title="전체영화 페이지로 이동">전체영화</a>
					</div>
				</div>
			</div>

			<!-- contents -->
			<div id="contents" class="">
				<!-- inner-wrap -->
				<div class="inner-wrap">
					<h2 class="tit">전체영화</h2>
					<div class="tab-list fixed">
						<ul id="topMenu">
							<li class=${param.type eq 1 or empty param.type ?"on":""}><a href="${pageContext.request.contextPath}/movie.do?type=1" title="박스오피스 탭으로 이동">박스오피스</a></li>
							<li class=${param.type eq 4 ?"on":""}><a href="${pageContext.request.contextPath}/movie.do?type=4" title="상영예정작 탭으로 이동" >상영예정작</a></li>
							<li class=${param.type eq 2 ?"on":""}><a href="${pageContext.request.contextPath}/movie.do?type=2" title="필름소사이어티 탭으로 이동">필름소사이어티</a></li>
							<li class=${param.type eq 3 ?"on":""}><a href="${pageContext.request.contextPath}/movie.do?type=3" title="클래식소사이어티 탭으로 이동">클래식소사이어티</a></li>
						</ul>
					</div>
					<!-- movie-list-util -->
					<div class="movie-list-util mt40">
						<c:choose>
							<c:when test="${param.type eq 1}">
							<div class="topSort" style="display: block;">
									<div class="onair-condition">
										<button type="button" title="개봉작만 보기" class="btn-onair btnOnAir">개봉작만</button>
									</div>
								</div>
							</c:when>
							<c:when test="${param.type eq 2}">
								<div class="topSort" style="display: block;">
									<div class="movie-sorting sortTab">
										<span><button type="button" class="btn on"
												sort-type="ticketing" tab-cd="">전체</button></span>
									</div>
									<div class="onair-condition">
										<button type="button" title="개봉작만 보기" class="btn-onair btnOnAir">개봉작만</button>
									</div>
								</div>
							</c:when>
							<c:when test="${param.type eq 3}">
								<div class="topSort" style="display: block;">
									<div class="movie-sorting sortTab">
										<span><button type="button" class="btn on" sort-type="ticketing" tab-cd="">전체</button></span>
									</div>
									<div class="onair-condition">
										<button type="button" title="개봉작만 보기" class="btn-onair btnOnAir">개봉작만</button>
									</div>
								</div>
							</c:when>
							<c:otherwise><!-- 상영예정작보기  -->
								<div class="topSort" style="display: block;">
									<div class="movie-sorting sortTab">
										<span><button type="button" class="btn on"sort-type="rfilmDe">개봉일순</button></span>
										<span><button type="button" class="btn" sort-type="title">가나다순</button></span>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
						
<%-- 						<c:choose> --%>
<%-- 							<c:when test="${empty list}"> --%>
<!-- 								<p class="no-result-count"> -->
<!-- 									<strong id="totCnt">0</strong>개의 영화가 검색되었습니다. -->
<!-- 								</p> -->
<%-- 							</c:when> --%>
<%-- 							<c:otherwise> --%>
								<p class="no-result-count"><strong id="totCnt">${fn:length(list)}</strong>개의 영화가 검색되었습니다.</p>
<%-- 							</c:otherwise> --%>
<%-- 						</c:choose> --%>
						
						<div class="movie-search">
							<input type="text" title="영화명을 입력하세요" id="movieName" name="ibxMovieNmSearch" placeholder="영화명 검색" class="input-text" onkeypress="if(event.keyCode==13) {fn_searchBtn(${param.type});}">
							<button type="button" class="btn-search-input" id="btnSearch" onclick="fn_searchBtn(${param.type});">검색</button>
						</div>
					</div>
					<!--// movie-list-util -->
					<div class="bg-loading" style="display: none;">
						<div class="spinner-border" role="status">
							<span class="sr-only">Loading...</span>
						</div>
					</div>
					
					<!-- movie-list -->
					<c:if test="${ not empty list }">
					<div class="movie-list">
						<ol class="list" id="movieList">
						<c:forEach var="dto" items="${list}">
							<li tabindex="0" class="no-img">
							<div class="movie-list-info">
<%-- 								<c:if test="${empty param.type}"> --%>
<%-- 									<p class="rank" style="">${dto.rank}<span class="ir">위</span></p> --%>
<%-- 								</c:if> --%>
								<img src="${pageContext.request.contextPath}/resources/img/poster/${dto.num}/${dto.num}.jpg" alt="이미지" class="poster lozad">
								<div class="curation">
									<p class="film" style="display: none">필름 소사이어티</p>
									<p class="classic" style="display: none">클래식 소사이어티</p>
								</div>
								<div class="movie-score">
									<a href="${pageContext.request.contextPath}/movie-detail.do?movie=${dto.num}" class="wrap movieBtn" title="${dto.movie} 상세보기">
										<div class="summary"> ${dto.summary} </div>
										<div class="my-score equa">
											<div class="preview">
												<p class="tit">관람평</p>
												<p class="number">${dto.score}<span class="ir"> 점</span></p>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="tit-area">
								<p class="movie-grade age-${dto.age}">,</p>
								<p title="영화명" class="tit">${dto.movie}</p>
							</div>
							<div class="rate-date">
								<c:set var="dates" value="${dto.dates}"/>
								<span class="rate">예매율 0%</span> <span class="date">개봉일 <fmt:formatDate value="${dates}"/></span>
							</div>
							<div class="btn-util">
								<button type="button" class="button btn-like">
									<i title="보고싶어 안함" class="iconset ico-heart-toggle-gray intrstType"></i> <span>${dto.likes} 명</span>
								</button>
								<div class="case movieStat4">
									<a href="${pageContext.request.contextPath}/booking.do?movie=${dto.num}" class="button purple bokdBtn" title="영화 예매하기">예매</a>
								</div>
							</div>
						 </li>
						</c:forEach>
					</ol>
				</div>
				</c:if>
					<div class="btn-more v1" id="addMovieDiv" style="">
						<button type="button" class="btn" id="btnAddMovie">더보기 <i class="iconset ico-btn-more-arr"></i></button>
					</div>
					<!-- 검색결과 없을 때 -->
					<div class="movie-list-no-result" id="noDataDiv" style="display: none;">
						<p>현재 상영중인 영화가 없습니다.</p>
					</div>
					<!-- 검색결과 없을 때 장르-->
					<div class="movie-list-no-favor" id="noMyGenre" style="display: none;">
						<p>선호장르가 등록되지 않았습니다. 선호하시는 장르를 등록해보세요.</p>
						<div class="btn-group center">
							<a href="/mypage/additionalinfo" class="button large purple" title="선호장르설정하기 페이지로 이동">선호장르설정하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="quick-area">
			<a href="#header" class="btn-go-top" title="top">top</a>
		</div>
<%@include file="includes/footer.jsp" %>
</body>
</html>