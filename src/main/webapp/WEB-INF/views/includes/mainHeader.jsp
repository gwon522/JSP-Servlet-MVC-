<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<header id="header" class="main-header no-bg none-ad">
    <h1 class="ci"><a href="main.do" title="MEGABOX 메인으로 가기">MEGABOX : Life Theater</a></h1>
    <div class="util-area">
        <div class="left-link">
        <sec:authorize access="permitAll">
            <a href="${ pageContext.request.contextPath }/benefit/viplounge.do" title="VIP LOUNGE">VIP LOUNGE</a>
            <a href="${ pageContext.request.contextPath }/benefit/membership.do" title="멤버십">멤버십</a>
            <a href="${ pageContext.request.contextPath }/support.do" title="고객센터">고객센터</a>
        </sec:authorize>
        <sec:authorize access="hasRole('ROLE_MANAGER')">
        	<a href="${ pageContext.request.contextPath}/management/management.do" title="관리 페이지">관리페이지로 이동</a>
        </sec:authorize>
        </div>
        <div class="right-link">
<!-- 로그인전 -->
		<sec:authorize access="anonymous">
            <div class="before">
                <a href="javascript:void(0)" id="login" title="로그인">로그인</a>
                <a href="${ pageContext.request.contextPath }/joinus/join.do" title="회원가입">회원가입</a>
            </div>
        </sec:authorize>
<!-- 로그인후 -->
		<sec:authorize access="hasAnyRole('ROLE_USER','ROLE_MANAGER')">
           <div class="after">
                <a href="javascript:void(0)" onclick="document.getElementById('logout').submit();" class="" title="로그아웃">로그아웃</a>
                <a href="" class="notice" title="알림">알림</a>
				<div class="layer-header-notice">
					<div class="notice-wrap">
						<p class="tit-notice">알림함</p>
						<div class="count">
							<p class="left">전체 <em class="totalCnt">0</em> 건</p>
							<p class="right">* 최근 30일 내역만 노출됩니다.</p>
						</div>
						<div class="scroll m-scroll mCustomScrollbar _mCS_1 mCS_no_scrollbar">
							<div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" style="max-height: none;" tabindex="0"><div id="mCSB_1_container" class="mCSB_container mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
								<ul class="list">
									<li class="no-list">
										알림 내역이 없습니다.
									</li>
								</ul>
							</div>
								<div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 30px; display: none; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="notice-list-more">
							<button type="button" class="button btn-more-notice-list">더보기 <i class="iconset ico-btn-more-arr"></i></button>
						</div>
						<button type="button" class="btn-close-header-notice">알림 닫기</button>
					</div>
            	</div>
           		<a href="${ pageContext.request.contextPath }/booking.do">빠른예매</a>
        </div>
        </sec:authorize>
    	</div>
    </div>
     <div class="link-area">
        <a href="#layer_sitemap" id="sitemap" class="header-open-layer btn-layer-sitemap" title="사이트맵">사이트맵</a>
        <a href="#layer_header_search" class="header-open-layer btn-layer-search" title="검색">검색</a>
        <a href="${ pageContext.request.contextPath }/booking/timetable.do" class="link-ticket" title="상영시간표">상영시간표</a>
        <a href="#layer_mymega" class="header-open-layer btn-layer-mymega" title="나의 메가박스">나의 메가박스</a>
    </div>
    <nav id="gnb" class="">
        <ul class="gnb-depth1">
            <li><a href="${ pageContext.request.contextPath }/movie.do?type=1" class="gnb-txt-movie" title="영화">영화</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="${ pageContext.request.contextPath }/movie.do?type=1" title="전체영화">전체영화</a></li>
                        <li><a href="${ pageContext.request.contextPath }/curation.do" title="큐레이션">큐레이션</a></li>
                        <li id="festivalArea" style="display: none;"><a href="#" title="영화제">영화제</a></li>
                        <li><a href="${ pageContext.request.contextPath }/moviepost.do" title="무비포스트">무비포스트</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="${ pageContext.request.contextPath }/booking.do" class="gnb-txt-reserve" title="예매">예매</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="${ pageContext.request.contextPath }/booking.do" title="빠른예매">빠른예매</a></li>
                        <li><a href="${ pageContext.request.contextPath }/booking/timetable.do" title="상영시간표">상영시간표</a></li>
                        <li><a href="${ pageContext.request.contextPath }/booking/privatebooking.do" title="더 부티크 프라이빗 예매">더 부티크 프라이빗 예매</a></li>
                    </ul>
                </div>
            </li>
            <li class=""><a href="${ pageContext.request.contextPath }/theater/list.do" class="gnb-txt-theater" title="극장">극장</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="${ pageContext.request.contextPath }/theater/list.do" title="전체극장">전체극장</a></li>
                        <li><a href="${ pageContext.request.contextPath }/specialtheater/list.do" title="특별관">특별관</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="${ pageContext.request.contextPath }/event.do"  class="gnb-txt-event" title="이벤트">이벤트</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="${ pageContext.request.contextPath }/event.do"  title="진행중 이벤트">진행중 이벤트</a></li>
                        <li><a href="${ pageContext.request.contextPath }/event/past.do"  title="지난 이벤트">지난 이벤트</a></li>
                        <li><a href="${ pageContext.request.contextPath }/board.do"  title="당첨자발표">당첨자발표</a></li>
                    </ul>
                </div>
            </li>
            <li><a href="${ pageContext.request.contextPath }/store.do"  class="gnb-txt-store" title="스토어">스토어</a></li>
            <li><a href="${ pageContext.request.contextPath }/benefit/membership.do" class="gnb-txt-benefit" title="혜택">혜택</a>
                <div class="gnb-depth2">
                    <ul>
                        <li><a href="${ pageContext.request.contextPath }/benefit/membership.do" title="메가박스 멤버십">메가박스 멤버십</a></li>
                        <li><a href="${ pageContext.request.contextPath }/benefit/discount.do" title="제휴/할인">제휴/할인</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </nav>
    <div id="layer_sitemap" class="header-layer layer-sitemap">
        <div class="wrap">
            <a href="" class="link-acc" title="사이트맵 레이어 입니다.">사이트맵 레이어 입니다.</a>
            <p class="tit">SITEMAP</p>
            <div class="list position-1">
                <p class="tit-depth">영화</p>
                <ul class="list-depth">
                    <li><a href="${ pageContext.request.contextPath }/movie.do?type=1" title="전체영화">전체영화</a></li>
                    <li><a href="${ pageContext.request.contextPath }/curation.do" title="큐레이션">큐레이션</a></li>
                    <li><a href="javascript:void(0)" title="영화제">영화제</a></li>
                    <li><a href="${ pageContext.request.contextPath }/moviepost.do" title="무비포스트">무비포스트</a></li>
                </ul>
            </div>

            <div class="list position-2">
                <p class="tit-depth">예매</p>
                <ul class="list-depth">
                    <li><a href="${ pageContext.request.contextPath }/booking.do" title="빠른예매">빠른예매</a></li>
                    <li><a href="${ pageContext.request.contextPath }/booking/timetable.do" title="상영시간표">상영시간표</a></li>
                    <li><a href="${ pageContext.request.contextPath }/booking/privatebooking.do" title="더 부티크 프라빗 예매">더 부티크 프라이빗 예매</a></li>
                </ul>
            </div>

            <div class="list position-3">
                <p class="tit-depth">극장</p>
                <ul class="list-depth">
                    <li><a href="${ pageContext.request.contextPath }/theater/list.do" title="전체극장">전체극장</a></li>
                    <li><a href="${ pageContext.request.contextPath }/specialtheater/list.do" title="특별관">특별관</a></li>
                </ul>
            </div>

            <div class="list position-4">
                <p class="tit-depth">이벤트</p>
                <ul class="list-depth">
                    <li><a href="${ pageContext.request.contextPath }/event.do"  title="진행중 이벤트">진행중 이벤트</a></li>
                    <li><a href="${ pageContext.request.contextPath }/event/past.do"  title="지난 이벤트">지난 이벤트</a></li>
                    <li><a href="${ pageContext.request.contextPath }/board.do"  title="당첨자발표">당첨자발표</a></li>
                </ul>
            </div>
            
            <div class="list position-5">
                <p class="tit-depth">스토어</p>
                <ul class="list-depth">
                    <li><a href="${ pageContext.request.contextPath }/store.do?group=0"  title="새로운 상품">새로운 상품</a></li>
                    <li><a href="${ pageContext.request.contextPath }/store.do?group=1"  title="메가티켓">메가티켓</a></li>
                    <li><a href="${ pageContext.request.contextPath }/store.do?group=2"  title="메가찬스">메가찬스</a></li>
                    <li><a href="${ pageContext.request.contextPath }/store.do?group=3"  title="팝콘/음료/굿즈">팝콘/음료/굿즈</a></li>
                </ul>
            </div>
            
            
            <div class="list position-6">
                <p class="tit-depth">나의 메가박스</p>
                <ul class="list-depth mymage">
            		<li><a href="#" title="나의 메가박스 홈">나의 메가박스 홈</a></li>
		            <li><a href="#" title="예매/구매내역">예매/구매내역</a></li>
		            <li><a href="#" title="영화관람권">영화관람권</a></li>
		            <li><a href="#" title="스토어교환권">스토어교환권</a></li>
		            <li><a href="#" title="할인/제휴쿠폰">할인/제휴쿠폰</a></li>
		            <li><a href="#" title="멤버십포인트">멤버십포인트</a></li>
		            <li><a href="#" title="나의 무비스토리">나의 무비스토리</a></li>
		            <li><a href="#" title="나의 이벤트 응모내역">나의 이벤트 응모내역</a></li>
		            <li><a href="#" title="나의 문의내역">나의 문의내역</a></li>
		            <li><a href="#" title="자주쓰는 할인 카드">자주쓰는 할인 카드</a></li>
		            <li><a href="#" title="회원정보">회원정보</a></li>
                </ul>
            </div>
            
            <div class="list position-7">
                <p class="tit-depth">혜택</p>
                <ul class="list-depth">
                    <li><a href="${ pageContext.request.contextPath }/benefit/membership.do" title="멤버십 안내">멤버십 안내</a></li>
                    <li><a href="${ pageContext.request.contextPath }/benefit/viplounge.do" title="VIP LOUNGE">VIP LOUNGE</a></li>
                    <li><a href="${ pageContext.request.contextPath }/benefit/discount.do" title="제휴/할인">제휴/할인</a></li>
                </ul>
            </div>

            <div class="list position-8">
                <p class="tit-depth">고객센터</p>
                <ul class="list-depth">
                    <li><a href="${ pageContext.request.contextPath }/support.do" title="고객센터 홈">고객센터 홈</a></li>
                    <li><a href="${ pageContext.request.contextPath }/support/faq.do" title="자주묻는질문">자주묻는질문</a></li>
                    <li><a href="${ pageContext.request.contextPath }/support/notice.do" title="공지사항">공지사항</a></li>
                    <li><a href="${ pageContext.request.contextPath }/support/inquiry.do" title="1:1문의">1:1문의</a></li>
                    <li><a href="${ pageContext.request.contextPath }/support/rent.do" title="단체/대관문의">단체/대관문의</a></li>
                    <li><a href="${ pageContext.request.contextPath }/support/lostQna.do" title="분실물문의">분실물문의</a></li>
                </ul>
            </div>

            <div class="list position-9">
                <p class="tit-depth">회사소개</p>
                <ul class="list-depth">
                    <li><a href="#" target="_blank" title="메가박스소개">메가박스소개</a></li>
                    <li><a href="#" target="_blank" title="사회공헌">사회공헌</a></li>
                    <li><a href="#" target="_blank" title="홍보자료">홍보자료</a></li>
                    <li><a href="#" target="_blank" title="제휴/부대사업문의">제휴/부대사업문의</a></li>
                    <li><a href="#" target="_blank" title="온라인제보센터">온라인제보센터</a></li>
                    <li><a href="#" target="_blank" title="자료">IR자료</a></li>
                    <li><a href="#" target="_blank" title="인재채용림">인재채용</a></li>
                    <li><a href="#" target="_blank" title="윤리경영">윤리경영</a></li>
                </ul>
            </div>
            <div class="ir">
                <a href="#" class="layer-close" title="레이어닫기">레이어닫기</a>
            </div>
        </div>
    </div>
<!-- 레이어 : 검색 -->
    <div id="layer_header_search" class="header-layer layer-header-search"></div>
    
<!-- 로그아웃 폼 -->
    <form action="/joinus/logout.do" id="logout" method='post'>
           	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>
<!-- 나의 메가박스 -->

    <div id="layer_mymega" class="header-layer layer-mymege">
    	<a href="" class="ir" title="나의 메가박스 레이어 입니다.">나의 메가박스 레이어 입니다.</a>
        <div class="wrap" id="mymegabox" style="display:block">
        <sec:authorize access="hasAnyRole('ROLE_USER','ROLE_MANAGER')">
            <div class="login-after">
                <div class="user-info">
                    <p class="txt">안녕하세요!</p>
                    <p class="info">
                       <em class="name"><sec:authentication property="principal.member.name"/></em><span> 회원님</span>
                    </p>
                    <div class="last-date">마지막 접속일 : <em><%=session.getAttribute("date")%></em></div>
                    <div class="membership"><sec:authentication property="principal.member.grade"/></div>
                    <div class="btn-fixed">
                        <a href="#" class="button" title="나의 메가박스">나의 메가박스</a>
                    </div>
                </div>
                
                <div class="box">
                    <div class="point">
                        <p class="tit">Point</p>
                        <p class="count"><sec:authentication property="principal.member.point"/> P</p>
                        <div class="btn-fixed">
                            <a href="#포인트이용내역으로 이동" class="button" title="멤버십 포인트">멤버십 포인트</a>
                        </div>
                    </div>
                </div>
                
                <div class="box">
                    <div class="coupon">
                        <p class="tit">쿠폰/관람권</p>
                        <p class="count">
                            <em title="쿠폰 수" class="cpon">0</em>
                            <span title="관람권 수" class="movie">0</span>
                        </p>
                       	<div class="btn-fixed">
                            <a href="#쿠폰페이지이동" class="button" title="쿠폰">쿠폰</a>
                            <a href="#관람권" class="button" title="관람권">관람권</a>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="reserve">
                        <p class="tit">예매</p>
                        <p class="txt">${auth.bookingList}</p>
                        <div class="btn-fixed">
                            <a href="#예매내역으로 이동" class="button" title="예매내역">예매내역 </a>
                        </div>
                    </div>
                </div>
                
                <div class="box">
                    <div class="buy">
                        <p class="tit">구매</p>
                        <p class="count"><em>${auth.buyList}</em><span> 건</span></p>
                    </div>
                    <div class="btn-fixed">
                        <a href="#구매내역으로 이동" class="button" title="구매내역">구매내역</a>
                    </div>
                </div>
            </div>
            </sec:authorize>
          <sec:authorize access="anonymous">
            <div class="login-before">
                <p class="txt">
                    로그인 하시면 나의 메가박스를 만날 수 있어요.<br>
                    영화를 사랑하는 당신을 위한 꼭 맞는 혜택까지 확인해 보세요!
                </p>
                <div class="mb50">
                    <a href="javascript:void(0)" id="mylogin" title="로그인" class="button w120px">로그인</a>
                </div>
                <a href="${ pageContext.request.contextPath }/join.do" class="link" title="혹시 아직 회원이 아니신가요?">혹시 아직 회원이 아니신가요?</a>
            </div>
            </sec:authorize>
        </div>
        <div class="ir">
            <a href="javascript:void(0)" class="layer-close" title="레이어닫기">레이어닫기</a>
        </div>
	</div>
</header>
