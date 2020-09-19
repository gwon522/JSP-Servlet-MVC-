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
	<div id="schdlContainer" class="container no-padding-bottom">
		<div class="page-util off">
			<div class="inner-wrap">
				<div class="location">
					<span>Home</span> <a href="${pageContext.request.contextPath}/movie.do?type=1" title="영화 페이지로 이동">영화</a>
					<a href="${pageContext.request.contextPath}/movie.do?type=1" title="전체영화 페이지로 이동">전체영화</a> <a
						href="${pageContext.request.contextPath}/movie.do?type=1" title="박스오피스 페이지로 이동">박스오피스</a>
				</div>
			</div>
		</div>
		<div id="contents" class="no-padding">
			<div class="movie-detail-page">
				<div class="bg-img"
					style="background-image:url('${pageContext.request.contextPath}/resources/img/poster/${vo.num}/${vo.num}.jpg');"></div>
				<div class="bg-pattern"></div>
				<div class="bg-mask"></div>
				<div class="movie-detail-cont">
					<p class="contents-type">&#35;오리지널티켓</p>
					<p class="title">${vo.movie}</p>
					<div class="btn-util">
						<button type="button" title="보고싶어 안함" class="btn btn-like">
							<i class="iconset ico-heart-line"></i><span title="보고싶어 한 명수" id="intrstCnt">${vo.likes}</span>
						</button>
					</div>
					<div class="info">
						<div class="score">
							<p class="tit">실관람 평점</p>
							<div class="number gt" id="mainMegaScore">
								<p title="실관람 평점" class="before">
									<em>${vo.score}</em><span class="ir">점</span>
								</p>
							</div>
						</div>
						<div class="rate">
							<p class="tit">예매율</p>
							<p class="cont">
								<em>2</em>위 (1 &#37;)
							</p>
						</div>
						<div class="audience ">
							<div class="tit ">
								<span class="m-tooltip-wrap ">누적관객수</span>
							</div>
							<p class="cont">
								<em>${vo.total_views}</em> 명
							</p>
						</div>
					</div>
					<div class="poster">
						<div class="wrap">
							<p class="movie-grade age-${vo.age}"></p>
							<img src="${pageContext.request.contextPath}/resources/img/poster/${vo.num}/${vo.num}.jpg" alt="${vo.movie}" />
								<a href="#" class="btn-poster-down" title="포스터 다운로드">포스터 다운로드</a>
						</div>
					</div>
					<div class="reserve screen-type col-2">
						<div class="reserve">
							<c:if test="${vo.special eq MX }">
								<a href="${pageContext.request.contextPath}/booking.do?movie=${dto.num}" class="btn reserve" title="영화 예매하기">예매</a>
								<a href="${pageContext.request.contextPath}/booking.do?movie=${dto.num}&theather=mx" class="btn mx" title="MX관 예매하기">MX</a>
							</c:if>
							<c:if test="${dto.special ne MX}">
								<a href="${pageContext.request.contextPath}/booking.do?movie=${dto.num}" class="btn reserve" style="width: 100%; border-radius: 5px;" title="영화 예매하기">예매</a>
							</c:if>
						</div>
					</div>
				</div>
			</div>
			<div id="contentData">
				<div class="inner-wrap">
					<div class="tab-list movie">
						<!-- fixed 있으면 바 돌아다님 -->
						<ul>
							<li class="on"><a href="" title="주요정보 탭으로 이동">주요정보</a></li>
							<li><a href="" title="실관람평 탭으로 이동">실관람평</a></li>
							<li><a href="" title="무비포스트 탭으로 이동">무비포스트</a></li>
							<li><a href="" title="예고편/스틸컷 탭으로 이동">예고편/스틸컷</a></li>
						</ul>
					</div>
					<div class="movie-summary infoContent" id="info">
						<div class="txt">${vo.summary}</div>
						<div class="btn-more toggle">
							<button type="button" class="btn">
								<span>더보기</span> <i class="iconset ico-btn-more-arr"></i>
							</button>
						</div>

					</div>

					<div class="movie-info infoContent">
						<p>상영타입 : 2D, 2D ATMOS</p>

						<div class="line">
							<p>감독&nbsp;: ${vo.director}</p>
							<p>장르&nbsp;: ${vo.genre} / ${vo.runTime} 분</p>
							<p>등급&nbsp;: ${vo.age}</p>
							<p>개봉일&nbsp;: <fmt:formatDate value="${vo.dates}"/></p>
						</div>
						<p>출연진&nbsp;: ${vo.actors }</p>
					</div>

					<!-- movie-graph -->
					<div class="movie-graph infoContent">
						<div class="col">
							<dl>
								<dt>관람포인트</dt>
								<dd id="charByPoint">s</dd>
							</dl>

							<div class="graph" style="position: relative; bottom: 29px;">
								<div class="chartjs-size-monitor">
									<div class="chartjs-size-monitor-expand">
										<div class=""></div>
									</div>
									<div class="chartjs-size-monitor-shrink">
										<div class=""></div>
									</div>
								</div>
								<canvas id="chartByStart" style="width: 216px; height: 216px; display: block;" width="216" height="216" class="chartjs-render-monitor"></canvas>
								<img src="../../../static/pc/images/movie/no-graph01.jpg" alt="기대포인트 결과 없음" style="display: none;">
							</div>
						</div>

						<div class="col" id="subMegaScore">
							<dl>
								<dt>실관람 평점</dt>
								<dd class="font-roboto regular">
									<em>${vo.score}</em><span class="ir">점</span>
								</dd>
							</dl>
							<div class="score equal" style="position: relative; bottom: 29px;">
								<div class="middle">
									<div class="circle">
										<em>${vo.score}</em><span class="ir">점</span>
									</div>
									<p>관람 후</p>
								</div>
							</div>
						</div>

						<div class="col">
							<dl>
								<dt>예매율</dt>
								<dd class="font-roboto regular">
									<span id="rkTag">계산%</span>
								</dd>
							</dl>

							<div class="graph"
								style="position: relative; bottom: 10px; right: 10px;">
								<div class="chartjs-size-monitor">
									<div class="chartjs-size-monitor-expand">
										<div class=""></div>
									</div>
									<div class="chartjs-size-monitor-shrink">
										<div class=""></div>
									</div>
								</div>
								<canvas id="chartByBar" width="216" height="216" class="chartjs-render-monitor" style="display: block; width: 216px; height: 216px;"></canvas>
								<img src="../../../static/pc/images/movie/no-graph03.jpg" alt="기대율 결과 없음" style="display: none;">
							</div>
						</div>
					</div>
					<div class="tit-util mt70 mb15 oneContent">
						<h2 class="tit small">${vo.movie}에 대한 <span class="font-gblue">???</span>개의 이야기가 있어요!
						</h2>
					</div>
					<div class="movie-idv-story oneContent">
						<ul>
							<c:if test="${empty sessionScope.auth}">
								<!-- 로그인이 안되있을시 -->
								<li class="type03">
									<div class="story-area">
										<div class="user-prof">
											<div class="prof-img">
												<img src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-mega-profile.png" alt="MEGABOX">
											</div>
											<p class="user-id">MEGABOX</p>
										</div>
										<div class="story-box">
											<div class="story-wrap">
												<div class="story-cont">
													<span class="font-gblue">${vo.movie}</span> 재미있게 보셨나요? 영화의 어떤 점이 좋았는지 이야기해주세요.
												</div>
												<div class="story-write">
													<a href="#tooltip-layer01" title="관람평쓰기" class="tooltip-click oneWrtNonMbBtn">
													<i class="iconset ico-story-write"></i> 관람평쓰기
													</a>
													<div id="tooltip-layer01" class="tooltip-cont"
														style="width: 225px; height: 80px;">
														<div class="wrap loginTagClick"> 로그인이 필요한 서비스 입니다.<br>
														<a href="javaScript:(0)" id="login" class="font-green" title="로그인 바로가기">로그인 바로가기 <i class="iconset ico-arr-right-green"></i>
															</a>
															<button type="button" class="btn-close-tooltip">툴팁 닫기</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</li>
							</c:if>
							<c:if test="${not empty sessionScope.auth}">
								<!-- 로그인이 안되있을시 -->
								<li class="type03">
									<div class="story-area">
										<div class="user-prof">
											<div class="prof-img">
												<img
													src="https://img.megabox.co.kr/static/pc/images/common/ico/ico-mega-profile.png"
													alt="MEGABOX">
											</div>
											<p class="user-id">${auth.m_id}</p>
										</div>
										<div class="story-box">
											<div class="story-wrap">
												<div class="story-cont">
													<span class="font-gblue">${auth.name}</span> <span
														class="font-gblue">${vo.movie}</span> 재미있게 보셨나요? 영화의 어떤 점이
													좋았는지 이야기해주세요.
												</div>
												<div class="story-write">
													<a href="#tooltip-layer01" title="관람평쓰기" class="tooltip-click oneWrtNonMbBtn">
														<i class="iconset ico-story-write"></i> 관람평쓰기
													</a>
												</div>
											</div>
										</div>
									</div>
								</li>
							</c:if>
							<!-- 		<c:if test="${not empty list}">
							<c:forEach items="${list}" var="dto">
								<li class="type01 oneContentTag">
									<div class="story-area">
										<div class="user-prof">
											<div class="prof-img">
												<img src="${pageContext.request.contextPath}/img/bg-photo.png" alt="프로필 사진" title="프로필 사진">
											</div>
											<p class="user-id">${dto.id}</p>
										</div>
										<div class="story-box">
											<div class="story-wrap review">
												<div class="tit">관람평</div>
												<div class="story-cont">
													<div class="story-point">
														<span>점수</span>
													</div>
													<div class="story-recommend">
														<em>평가항목뭔지</em>
													</div>
													<div class="story-txt">코멘트내용</div>
													<div class="story-like">
														<button type="button" class="oneLikeBtn" title="댓글 추천">
															<i class="iconset ico-like-gray"></i> <span>${dto.like}</span>
														</button>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="story-date">
										<div class="review on">
											<span>? 분전</span>
										</div>
									</div>
								</li>
								</c:forEach>
								</c:if> -->
						</ul>
					</div>
				</div>


				<!-- movie-detail-poster -->
				<div class="movie-detail-poster mt70 moviepostContent">
					<div class="inner-wrap">
						<!--목록이 있을 때  -->
						<div class="tit-util mb15">
							<h2 class="tit small white">무비포스트</h2>
							<a href="#" id="goMoviePost" class="more" data-nm="반도"
								title="무비포스트 페이지로 이동">더보기 <i
								class="iconset ico-arr-right-white"></i></a>
						</div>
						<!-- movie-post-list -->
						<div class="movie-post-list" style="position: relative; height: 442px;">
						
							<div class="grid-item" style="position: absolute; left: 0px; top: 0px;">
								<div class="wrap">
									<div class="img">
										<a href="#layer_post_detail" title="무비포스트 상세보기" class="moviePostBtn btn-modal-open2">
											<img src="https://img.megabox.co.kr/SharedImg/2020/07/03/voGs51YniOd5ViI6Kgmtwj8qp7Hde2gZ.jpg" onerror="noImg(this)" alt="반도"></a>
									</div>
									<div class="cont">
										<div class="writer">
											<a href="#" title="무비포스트 페이지로 이동" class="moviePostId">아이디</a>
										</div>
										<a href="#layer_post_detail" title="무비포스트 상세보기"
											class="link moviePostBtn btn-modal-open2">
											<div class="label"></div>
											<p class="tit">${vo.movie}</p>
											<p class="txt">코멘트</p>
											<p class="time">? 시간전</p>
										</a>
										<div class="condition">
											<button type="button" class="btn-like postLikeBtn listBtn">
												<i class="iconset ico-like ">좋아요 수</i> <span class="none">좋아요수</span>
											</button>
											<a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailRlyPopup btn-modal-open2">
												<i class="iconset ico-reply" id="">댓글 수</i> 댓글수
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="grid-item" style="position: absolute; left: 290px; top: 0px;">
								<div class="wrap">
									<div class="img">
										<a href="#layer_post_detail" title="무비포스트 상세보기" class="moviePostBtn btn-modal-open2">
										<img src="https://img.megabox.co.kr/SharedImg/2020/07/03/BjgVLU8J1bkaB34Xh8tOIVKRfPYk9g5T.jpg" onerror="noImg(this)" alt="반도"></a>
									</div>
									<div class="cont">
										<div class="writer">
											<a href="#" title="무비포스트 페이지로 이동" class="moviePostId">아이디</a>
										</div>
										<a href="#layer_post_detail" title="무비포스트 상세보기" class="link moviePostBtn btn-modal-open2">
											<div class="label"></div>
											<p class="tit">${vo.movie}</p>
											<p class="txt">코멘트</p>
											<p class="time">8 시간전</p>
										</a>
										<div class="condition">
											<button type="button" class="btn-like postLikeBtn listBtn"
												data-no="178647">
												<i class="iconset ico-like ">좋아요 수</i> <span class="none">0</span>
											</button>
											<a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailRlyPopup btn-modal-open2">
												<i class="iconset ico-reply" id="">댓글 수</i> 0
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="grid-item" style="position: absolute; left: 580px; top: 0px;">
								<div class="wrap">
									<div class="img">
										<a href="#layer_post_detail" title="무비포스트 상세보기" class="moviePostBtn btn-modal-open2">
										<img src="https://img.megabox.co.kr/SharedImg/2020/06/15/kcL7q9T8uUoiCAjO5Huv7RCFdIFQclIv.jpg" onerror="noImg(this)" alt="반도"></a>
									</div>
									<div class="cont">
										<div class="writer">
											<a href="#" title="무비포스트 페이지로 이동" class="moviePostId">아이디</a>
										</div>
										<a href="#layer_post_detail" title="무비포스트 상세보기"
											class="link moviePostBtn btn-modal-open2" w-data="850"
											h-data="auto" data-no="178646">
											<div class="label"></div>
											<p class="tit">${vo.movie}</p>
											<p class="txt">어리버리 하지만 혼자 살아 남을려는 자존심 하나만 인정되고 동료를 죽이다니
												나쁜인간 아니에</p>
											<p class="time">11 시간전</p>
										</a>
										<div class="condition">
											<button type="button" class="btn-like postLikeBtn listBtn">
												<i class="iconset ico-like ">좋아요 수</i> <span class="none">0</span>
											</button>
											<a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailRlyPopup btn-modal-open2">
												<i class="iconset ico-reply" id="">댓글 수</i> 0
											</a>
										</div>
									</div>
								</div>
							</div>

							<div class="grid-item"
								style="position: absolute; left: 870px; top: 0px;">
								<div class="wrap">
									<div class="img">
										<a href="#layer_post_detail" title="무비포스트 상세보기" class="moviePostBtn btn-modal-open2">
											<img src="https://img.megabox.co.kr/SharedImg/2020/07/14/O8cCC0j4fb8DD7SfbQgwNW7rBSJ6JuYQ.gif" onerror="noImg(this)" alt="반도"></a>
									</div>
									<div class="cont">
										<div class="writer">
											<a href="#" title="무비포스트 페이지로 이동" class="moviePostId">아이디**</a>
										</div>
										<a href="#layer_post_detail" title="무비포스트 상세보기" class="link moviePostBtn btn-modal-open2">
											<div class="label"></div>
											<p class="tit">${vo.movie}</p>
											<p class="txt">마지막이 약간 억지였지만 그래도 잼났음!!!!</p>
											<p class="time">23 시간전</p>
										</a>
										<div class="condition">
											<button type="button" class="btn-like postLikeBtn listBtn">
												<i class="iconset ico-like ">좋아요 수</i> <span class="none">0</span>
											</button>
											<a href="#layer_post_detail" title="무비포스트 상세보기" class="post-detailRlyPopup btn-modal-open2">
												<i class="iconset ico-reply" id="">댓글 수</i> 0
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="inner-wrap mt70 infoContent">
					<div class="tit-util mb15">
						<h2 class="tit small">이벤트</h2>
						<a href="javascript:void(0)" title="이벤트 페이지로 이동" onclick="d" class="more">더보기 <i class="iconset ico-arr-right-gray"></i></a>
					</div>

					<div class="event-box">
						<ul>
							<li><a href="#" title="<반도> 오리지널 티켓북 포스터 증정 이벤트 상세보기" class="eventBtn">
							<img src="https://img.megabox.co.kr/SharedImg/event/2020/07/22/WslpuJ2Q9tf7VmqgVZerLbLCouFKUZHO.jpg"
									onerror="noImg(this)" alt="<반도> 오리지널 티켓북 포스터 증정 이벤트"></a></li>
							<li><a href="#" title="두 배 더 즐거운 &quot;문화가 있는 날 플러스&quot; 상세보기" class="eventBtn">
								<img src="https://img.megabox.co.kr/SharedImg/event/2020/07/24/AbD9fyjBmchSVWMVXGIh5xNxsTdhpEsG.jpg"
									onerror="noImg(this)" alt="두 배 더 즐거운 &quot;문화가 있는 날 플러스&quot;"></a>
							</li>


						</ul>
					</div>
				</div>
				<section id="layer_regi_reply_review" class="modal-layer">
					<div class="wrap">
						<header class="layer-header">
							<h3 class="tit">
								<span class="oneTitle"></span> 작성하기
							</h3>
						</header>
						<div class="layer-con">
							<!-- regi-reply-score review -->
							<div class="regi-reply-score review">
								<!-- score -->
								<div class="score">
									<p class="tit">
										"반도"<br> <span class="oneTitle"></span>을 남겨보세요!
									</p>
									<div class="box">
										<div class="box-star-score">
											<div class="star">
												<div class="group">
													<button type="button" class="btn left score-1">1</button>
													<button type="button" class="btn right score-2">2</button>
												</div>
												<div class="group">
													<button type="button" class="btn left score-3">3</button>
													<button type="button" class="btn right score-4">4</button>
												</div>
												<div class="group">
													<button type="button" class="btn left score-5">5</button>
													<button type="button" class="btn right score-6">6</button>
												</div>
												<div class="group">
													<button type="button" class="btn left score-7">7</button>
													<button type="button" class="btn right score-8">8</button>
												</div>
												<div class="group">
													<button type="button" class="btn left score-9">9</button>
													<button type="button" class="btn right score-10">10</button>
												</div>
											</div>
											<div class="num">
												<em>0</em> <span>점</span>
											</div>
										</div>

										<div class="textarea">
											<textarea id="textarea" rows="5" cols="30" title="한줄평 입력"
												placeholder="영화에 대한 후기를 남겨주세요." class="input-textarea"></textarea>
											<div class="util">
												<p class="count">
													<span>0</span> / 10
												</p>
											</div>
										</div>
									</div>
								</div>
								<div class="point">
									<p class="tit">
										<span class="oneText"></span>포인트는 무엇인가요?
									</p>
									<p class="txt">(최대 2개 선택가능)</p>
									<div class="box">
										<button type="button" class="btn">연출</button>
										<button type="button" class="btn">스토리</button>
										<button type="button" class="btn">영상미</button>
										<button type="button" class="btn">배우</button>
										<button type="button" class="btn">OST</button>
									</div>
								</div>
								<div class="txt-alert errText" style="display: none;">한줄평
									내용을 입력해 주세요.</div>
							</div>
						</div>
						<div class="btn-group-fixed">
							<button type="button" class="button close-layer">취소</button>
							<button type="button" class="button purple" id="regOneBtn">등록</button>
						</div>
						<button type="button" class="btn-modal-close">레이어 닫기</button>
					</div>
				</section>
</div>
</div>
				<%@include file="includes/footer.jsp" %>
</div>
</body>
</html>