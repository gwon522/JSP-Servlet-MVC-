<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<section id="layer_login_select" class="modal-layer" style="z-index: 501;">
<a href="" class="focus">레이어로 포커스 이동 됨</a>
<div class="wrap" style="width: 425px; height: 365px; top:200px;left:37%;">
	<header class="layer-header"> <h3 class="tit">로그인</h3> </header>
	<div class="layer-con" style="height: 350px;">
		<div class="tab-cont-wrap">
		<div id="login_tab_01" class="tab-cont on">
			<a href="" class="ir" title="로그인"></a>
			<div class="login-member col-2">
				<div class="col-wrap">
					<div class="col left">
					<form id="loginForm" action="/login" method="post">
						<div class="login-input-area">
						<input autocomplete="off" id="ibxLoginId" maxlength="20" name="username" type="text" placeholder="아이디" title="아이디를 입력하세요" class="input-text strTrim"value="">
						<input autocomplete="off" id="ibxLoginPwd" maxlength="20" name="password" type="password" placeholder="비밀번호" title="비밀번호를 입력하세요" class="input-text mt15">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
							<div class="alert"></div>
							<div class="chk-util">
								<div class="left">
									<input id="chkIdSave" name="chkIdSave" type="checkbox"> <label for="chkIdSave">아이디 저장</label>
								</div>
							</div>
							<button id="btnLogin" type="submit" class="button purple large btn-login" >로그인</button>
							<div class="link">
								<a href="${ pageContext.request.contextPath }/user-find.do?find=id" title="ID/PW 찾기 선택">ID/PW 찾기</a>
								<a href="${ pageContext.request.contextPath }/joinus/join.do" title="회원가입 선택">회원가입</a>
								<a href="${ pageContext.request.contextPath }/nonMem.do" title="비회원 예매확인 선택">비회원 예매확인</a>
							</div>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
	<button type="button" class="btn-modal-close">레이어 닫기</button>
</div>
</section>
<script>
$(function() {
	if (<c:out value='${login}'/>=='fail') {
		alert("아이디와 비밀번호를 확인해주세요.");
	}
})
</script>