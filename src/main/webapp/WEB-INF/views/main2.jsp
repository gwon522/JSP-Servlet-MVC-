<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="container no-padding-bottom main-container ">
	<div id="contents">
		<div class="main-page">
			<div id="main_section01" class="section main-movie on">
				<div class="bg">
					<div class="bg-pattern"></div>
					<img src="https://img.megabox.co.kr/SharedImg/2020/06/26/Iqs6FGbxVHJoFt0yIkWs16RsfjnyWIEu_380.jpg" alt="반도_2차포스터_01.jpg" >
				</div>
				<div class="cont-area">
					<div class="tab-sorting">
						<button type="button" class="on" name="btnSort">박스오피스</button>
					</div>
					<a href="${pageContext.request.contextPath}/movie.do" class="more-movie" title="더 많은 영화보기">더 많은 영화보기 <i class="iconset ico-more-corss gray"></i></a>
					<div class="main-movie-list">
						<ol class="list">
							<c:forEach var="dto" items="${list}" varStatus="status">
							<!-- 만약 list의 첫번째 값이라면 -->
								<c:if test="${status.first}">
									<li name="li_boxoRankList" class="first">
								</c:if>
							<!-- list의 첫번째 값 제외하고 -->
								<c:if test="${not status.first}">
									<li name="li_boxoRankList" class="">
								</c:if>
							<a href="${pageContext.request.contextPath}/movie-detail.do?movie=${dto.num}" class="movie-list-info" title="영화상세 보기">
							<p class="rank">${status.count}<span class="ir">위</span></p>
							<img src="${pageContext.request.contextPath}/img/poster/${dto.num}/${dto.num}.jpg" alt="오류" class="poster">
							<div class="wrap" style="display: none; opacity: 1;">
									<div class="summary">${dto.summary}</div>
									<div class="score"><div class="preview"><p class="tit">관람평</p><p class="number">0<span class="ir">점</span></p></div></div>
								</div>
							</a>
							<div class="btn-util">
                                <button type="button" class="button btn-like" rpst-movie-no="20021300">
								<i title="보고싶어 설정 안함" class="iconset ico-heart-toggle-gray"></i>0</button>
                                <div class="case">
                                <!-- 개봉 예매가능 기본-->
                                	<a href="${pageContext.request.contextPath}/booking.do?movie=${dto.num}" class="button gblue" title="영화 예매하기">예매</a>
                                </div>
                            </div>
							</li>
							</c:forEach>
						</ol>
					</div>
					
					<div class="search-link">
						<div class="cell">
							<div class="search">
								<input type="text" placeholder="영화명을 입력해 주세요" title="영화 검색" class="input-text" id="movieName">
								<button type="button" class="btn" onclick="fn_searchBtn();" id="btnSearch"><i class="iconset ico-search-w"></i> 검색</button>
							</div>
						</div>
						<div class="cell"><a href="#" title="상영시간표 보기"><i class="iconset ico-schedule-main"></i> 상영시간표</a></div>
						<div class="cell"><a href="${pageContext.request.contextPath}/movie.do" title="박스오피스 보기"><i class="iconset ico-boxoffice-main"></i> 박스오피스</a></div>
						<div class="cell"><a href="#" title="빠른예매 보기"><i class="iconset ico-quick-reserve-main"></i> 빠른예매</a></div>
					</div>
					<div class="moving-mouse">
						<img class="iconset" alt="" src="${pageContext.request.contextPath}/img/ico-mouse.png" style="top: 10px;">
					</div>
				</div>
			</div>
			
			<div id="main_section02" class="section main-benefit">
				<div class="wrap">
					<div class="tit-util">
							<h2 class="tit">혜택</h2>
							<a href="${pageContext.request.contextPath}/event.do"  class="btn-more-cross purple" title="혜택 더보기">더보기</a>
						</div>
						<div class="slider main-condition">
							<div class="slider-view" style="width: 1100px;">
								<div class="cell" style="display: block; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 0px; opacity: 1;"><a href="#" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/30/oH2Uzq7dWWj6sv3WyUleFH8qS8xbb9dZ.jpg" alt="" ></a></div>
										<div class="bg" style="left: 300px; opacity: 1;"><a href="#" target="_self" title=""><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/06/30/VZXUprYvo8Qx3fUCa6Kzb1tlBxmYGowz.jpg" alt="" ></a></div>
									</div>
								</div>
								<div class="cell" style="display: none; position: absolute; float: none;">
									<div class="position">
										<div class="txt" style="top: 100px; opacity: 0;"><a href="#" target="_self" title="메가박스 오리지널 티켓북 출시"><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/02/04/jIx6azAbreahaBC4Ax1uCtovoUWu3Cky.jpg" alt="" ></a></div>
										<div class="bg" style="left: 450px; opacity: 0;"><a href="#" target="_self" title="메가박스 오리지널 티켓북 출시"><img src="https://img.megabox.co.kr/SharedImg/BnftMng/2020/02/04/J907IQ97HGyZbAU8IYEijq0FAx2QckCd.jpg" alt="" ></a></div>
									</div>
								</div>
								</div>
								
							<div class="slider-control">
								<div class="page"><span class="on" style="width:50%"></span><span class="" style="width:50%"></span></div>
								<div class="util">
									<button type="button" class="btn-prev" disabled="true" style="opacity: 0.5;">이전 이벤트 보기</button>
									<button type="button" class="btn-next" style="opacity: 1;">다음 이벤트 보기</button>
									<button type="button" class="btn-pause on">일시정지</button>
									<button type="button" class="btn-play">자동재생</button>
								</div>
								<div class="page-count">페이징처리필요</div>
							</div>
						</div>

						<div class="brn-ad">
							<div class="banner">
								<div class="size">
									<a href="#" data-no="8355" data-netfunnel="N" class="eventBtn" title="">
										<img src="https://img.megabox.co.kr/SharedImg/event/2020/06/16/8HvrPS6EUBIVnqrk1CUBzmYvqbO7fY2L.jpg" alt="[KB RAPBEAT FESTIVAL 2020 X 메가박스] 관람 패키지 이벤트" >
									</a>
								</div>
								<div class="size small">
									<a href="#" data-no="8117" data-netfunnel="N" class="eventBtn" title="">
									<img src="https://img.megabox.co.kr/SharedImg/event/2020/02/11/ZDfCOz9hSvsotF2pjEuSdC8Lsl6R9jzH.jpg" alt="[코엑스] 더 부티크 프라이빗" >
									</a>
								</div>
							</div>
						</div>

					<div class="menu-link">
						<div class="cell vip"><a href="${pageContext.request.contextPath}/benefit/viplounge.do" title="VIP LOUNGE 페이지로 이동">VIP LOUNGE</a></div>
						<div class="cell membership"><a href="${pageContext.request.contextPath}/benefit/membership.do" title="멤버십 페이지로 이동">멤버십</a></div>
						<div class="cell card"><a href="${pageContext.request.contextPath}/benefit/discount.do" title="할인카드안내 페이지로 이동">할인카드안내</a></div>
						<div class="cell event"><a href="${pageContext.request.contextPath}/event.do"  title="이벤트 페이지로 이동">이벤트</a></div>
						<div class="cell store"><a href="${pageContext.request.contextPath}/store.do"  title="스토어 페이지로 이동">스토어</a></div>
					</div>
					<div class="grand-open">
						<p class="tit">
							<span>LIFE THEATER MEGABOX</span>
							<strong>GRAND<br>OPENING</strong>
						</p>
						<div class="open-cont">
							<div class="open-pagination swiper-pagination-bullets"><span class="swiper-pagination-bullet swiper-pagination-bullet-active"></span></div>
							<div class="open-control">
								<button type="button" class="open-prev swiper-button-disabled" tabindex="0" role="button" aria-label="Previous slide" aria-disabled="true">이전 이벤트 보기</button>
								<button type="button" class="open-next swiper-button-disabled" tabindex="0" role="button" aria-label="Next slide" aria-disabled="true">다음 이벤트 보기</button>
								<button type="button" class="open-pause on">일시정지</button>
								<button type="button" class="open-play">자동재생</button>
							</div>

							<div class="count-num">
								<span title="현재 페이지" class="active">1</span> /
								<span title="전체 페이지" class="total">1</span>
							</div>

							<div class="open-swiper swiper-container-initialized swiper-container-horizontal">
								<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px);">
									<div class="cell swiper-slide swiper-slide-active" style="width: 242.333px;">
											<a href="${pageContext.request.contextPath}/theater/list.do" data-no="8448" data-netfunnel="" class="eventBtn new" title="힐링 프리미엄 극장, 창원내서 6월 24일(수) OPEN! 페이지로 이동">
											<span class="label"><em>신규오픈</em></span>
												<p class="area">
													<span>부산/대구/경상</span>
													<strong> 창원내서</strong>
												</p>
												<p class="date">20.06.24</p>
												<img src="https://www.megabox.co.kr//static/pc/images/common/bg/bg-noimage-main.png" alt="힐링 프리미엄 극장, 창원내서 6월 24일(수) OPEN!" > <!-- 이벤트 이미지 적용하지 않고 기본이미지 사용 2019.08.29 -->
											</a>
										</div>
									<div class="cell swiper-slide swiper-slide-next" style="width: 242.333px;">
											<a href="${pageContext.request.contextPath}/theater/list.do" data-no="8447" data-netfunnel="" class="eventBtn new" title="세종에서 제일 편안한 극장, 세종청사 6월 24일(수) OPEN! 페이지로 이동">
											<span class="label">
													<em>신규오픈</em>
														</span>
												<p class="area">
													<span>대전/충청/세종</span>
													<strong> 세종청사</strong>
												</p>
												<p class="date">20.06.24</p>

												<img src="https://www.megabox.co.kr//static/pc/images/common/bg/bg-noimage-main.png" alt="세종에서 제일 편안한 극장, 세종청사 6월 24일(수) OPEN!" > <!-- 이벤트 이미지 적용하지 않고 기본이미지 사용 2019.08.29 -->
											</a>
										</div>
									<div class="cell swiper-slide" style="width: 242.333px;">
											<a href="${pageContext.request.contextPath}/theater/list.do" data-no="8446" data-netfunnel="" class="eventBtn new" title="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일(수) OPEN! 페이지로 이동">
											<span class="label">
													<em>신규오픈</em>
														</span>
												<p class="area">
													<span>대전/충청/세종</span>
													<strong> 대전현대아울렛</strong>
												</p>
												<p class="date">20.06.24</p>

												<img src="https://www.megabox.co.kr//static/pc/images/common/bg/bg-noimage-main.png" alt="품격있는 당신을 위한 명품극장, 대전현대아울렛 6월 24일(수) OPEN!" > 
											</a>
										</div>
								</div>
								<span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- ---------큐레이션 ------------------ -->
			<div id="main_section03" class="section main-curation">
				<div class="wrap">
					<div class="tit-util">
						<h2 class="tit">큐레이션</h2>
						<div class="right">
							<a href="${pageContext.request.contextPath}/curation.do" title="큐레이션 더보기">큐레이션 더보기 <i class="iconset ico-more-corss gray"></i></a>
						</div>
					</div>

						<div class="curation-area">
							<div class="curr-img">
								<p class="bage classic">메가박스 클래식소사이어티</p>
								<div class="img">
									<a href="${pageContext.request.contextPath}/movie-detail.do?movie=영화명" title="영화상세 보기">
									<img src="https://img.megabox.co.kr/SharedImg/2020/06/23/lepsjCKRQ84828xXV8miut1CmdnNG1X4_420.jpg" alt="[특별 상영] 베토벤 프로젝트" >
									</a>
								</div>

								<div class="btn-group justify">
									<div class="left">
										<a href="${pageContext.request.contextPath}/movie-detail.do?movie=영화명" class="button" title="영화상세 보기">상세정보</a>
									</div>
									<div class="right">
										<a href="${pageContext.request.contextPath}/booking.do?movie=" class="button gblue" title="영화 예매하기">예매</a>
									</div>
								</div>

								<div class="info classic">
									<p class="txt">
										#<span>클래식소사이어티</span>
									</p>
									<p class="tit">[특별 상영] 베토벤 프로젝트</p>
									<p class="summary">
										[상영 정보]<br>- 상영 지점 : 코엑스, 센트럴, 목동, 킨텍스, 분당, 성수, 마산 (4주 상영)<br>-
										추가 상영 지점 : 강남, 송도, 영통, 부산대, 대전현대아울렛, 세종청사 (2주 상영)<br>- 러닝 타임 :
										140분 * 인터미션 없음<br>- 상영 일정 : 2020년 7월 12일 ~ 8월 5일 / 수, 일 (1회씩)
										상영<br>- 배급사 사정에 따라 상영 일정 및 지점 등이 변경될 수 있습니다.<br> <br>제작 및 출연<br>작곡:
										루트비히 판 베토벤 Ludwig van Beethoven<br>안무: 존 노이마이어 John Neumeier<br>지휘:
										시몬 휴잇 Simon Hewett<br>연주: 미할 비아르크 (피아노), 도이치 방송 오케스트라 Michal
										Bialk (Piano), Deutsche Radio Philharmonie<br>무용: 함부르크 발레단
										Hamburg Ballett<br>공연 장소: 바덴-바덴 축제극장 Festspielhaus Baden-Baden<br> <br>루트비히
										판 베토벤: 알레시 마르티네즈 Aleix Martinez<br>베토벤의 ‘이루어지지 않은 사랑’: 안나 로더
										Anna Laudere<br>베토벤의 ‘이상향’: 드윈 레바초프 Edvin Revazov<br>베토벤의 어머니:
										패트리샤 프리차 Patricia Friza<br>베토벤의 조카: 보르하 베르무데즈 Borja Bermudez<br>크리스토퍼
										에반스 Christopher Evans<br>마크 후베테 Marc Jubete<br>에밀 마종 Emilie
										Mazon<br>박윤수 Yun-Su Park<br> <br>작품 소개<br>독일 바덴-바덴 축제극장에서 베토벤
										탄생 250주년을 기념해 공연된 기념비적인 발레 실황이다. 함부르크 발레단의 총감독이자 세계적으로 유명한 천재
										안무가, 존 노이마이어가 창작한 작품으로, 고난도 발레 테크닉으로 가득 찬 표현주의 발레를 선보인다. 인간
										베토벤의 삶에서 영감 받은 1부는 베토벤의 자전적인 이야기를 통해 개인적인 고뇌와 좌절을 그리고 있으며,
										자유로운 극작법을 따르는 2부는 현대무용과 정통발레 사이를 오가며 희망을 노래한다.<br>‘에로이카 변주곡’,
										교향곡 3번 ‘영웅’과 더불어 쉽게 접하기 힘든 베토벤 작곡의 발레곡을 중심으로 구성되는 공연은 독일 정상급
										교향악단의 연주로 진행된다. 특히 피아니스트 미할 비아르크가 무대 위 그랜드 피아노를 연주하며 피아노 음색을
										무용 속에 완전히 녹여내는 장면은 인상적이다. 악성 베토벤이 남긴 위대한 걸작과 경이로운 선율에 맞춰 움직이는
										세계적인 발레단의 몸짓은 베토벤의 삶과 음악을 짙은 예술성으로 엮어낸다.<br> <br>주요 음악<br>-
										변주곡과 푸가 Eb 장조, Op. 35 ‘에로이카 변주곡’<br>- 피아노 3중주 D 장조, Op. 70,
										No. 1 ‘유령’<br>- 피아노 소나타 D 장조, Op. 10, No. 3<br>- 프로메테우스의 창조물,
										Op. 43<br>- 교향곡 제3번, Eb 장조, Op. 55 ‘영웅’<br> <br>수입/배급 케빈앤컴퍼니<br>
									</p>
								</div>
							</div>
							<!--// curr-img -->
							<!--// list-area -->
							<div class="list">
								<ul>
									<li>
										<a href="#" title="영화상세 보기">
											<p class="bage classic">클래식소사이어티</p>
											<div class="img">
												<img src="https://img.megabox.co.kr/SharedImg/2020/06/23/4jr7i0mDwxOpILVarLlS05gmjZt8GiPp_230.jpg" alt="[시네도슨트] 빈센트 반 고흐 미술관&amp;크롤러 뮐러 미술관">
											</div>
											<p class="tit">[시네도슨트] 빈센트 반 고흐 미술관&amp;크롤러 뮐러 미술관</p>
											<p class="summary">내용</p>
										</a>
									</li>
									
								<li>
									<a href="javascript:gfn_moveDetail('20027700');"
										title="영화상세 보기">
											<p class="bage classic">클래식소사이어티</p>
											<div class="img">
												<img
													src="https://img.megabox.co.kr/SharedImg/2020/06/23/KUSs4KyOVlKT7SGGH9y6xLV6XvCjXuPR_230.jpg"
													alt="[팝콘클래식] 베토벤과 나폴레옹의 악연" >
											</div>
											<p class="tit">[팝콘클래식] 베토벤과 나폴레옹의 악연</p>
											<p class="summary">내용</p>
									</a>
								</li>
								<li>
									<a href="#" title="영화상세 보기">
										<p class="bage classic">클래식소사이어티</p>
										<div class="img">
											<img src="https://img.megabox.co.kr/SharedImg/2020/06/15/mkuTBD77ntyhS0FQUuZcYX03Fh3Cur6K_230.jpg" alt="[오페라] 아크나텐 @The Met" >
										</div>
										<p class="tit">[오페라] 오페라명</p>
										<p class="summary">정보</p>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div id="main_section04" class="section main-info">
				<h2 class="tit">메가박스 안내</h2>
				<div class="info-special">
					<a href="#" title="부티크 페이지로 이동" class="bg-boutique">부티크</a>
					<a href="#" title="MX 페이지로 이동" class="bg-mx">MX</a>
					<a href="#" title="COMFORT 페이지로 이동" class="bg-comfort">COMFORT</a>
					<a href="#" title="MEGA KIDS BOX 페이지로 이동" class="bg-kids">MEGA KIDS BOX</a>
					<a href="#" title="THE FIRST CLUB 페이지로 이동" class="bg-first">THE FIRST CLUB</a>
				</div>

				<div class="info-notice">
						<div class="wrap">
							<p class="tit">지점</p>
							<p class="link">
								<a href="#" title="공지사항 상세보기">
									<strong>
										[문경]
									</strong>
									 [문경] 7월휴관일 안내</a>
							</p>
							<p class="date">2020.07.06</p>
							<p class="more">
								<a href="#" title="전체공지 더보기">더보기 <i class="iconset ico-arr-right-gray"></i></a>
							</p>
						</div>
					</div>
					
				<div class="info-link">
					<div class="table">
						<div class="cell">
							<a href="#" title="고객센터 페이지로 이동">
								<i class="iconset ico-main-customer"></i>
								<span>고객센터</span>
							</a>
						</div>
						<div class="cell">
							<a href="#" title="자주 묻는 질문 페이지로 이동">
								<i class="iconset ico-main-faq"></i>
								<span>자주 묻는 질문</span>
							</a>
						</div>
						<div class="cell">
							<a href="#" title="1:1 문의 페이지로 이동">
								<i class="iconset ico-main-qna"></i>
								<span>1:1 문의</span>
							</a>
						</div>
						<div class="cell">
							<a href="#" title="단체/대관문의 페이지로 이동">
								<i class="iconset ico-main-group"></i>
								<span>단체/대관문의</span>
							</a>
						</div>
						<div class="cell">
							<a href="#" title="분실물 문의/접수 페이지로 이동">
								<i class="iconset ico-main-lost"></i>
								<span>분실물 문의/접수</span>
							</a>
						</div>
						<div class="cell">
							<a href="#" title="더 부티크 프라이빗 대관예매 페이지로 이동">
								<i class="iconset ico-main-boutique"></i>
								<span>더 부티크 프라이빗<br>대관예매</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
