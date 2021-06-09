<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>playduck - 상세보기</title>

<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/headerfooter.css">
<link rel="stylesheet" href="../resources/css/join.css">
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="../resources/css/findIdPw.css">

<link rel="stylesheet" href="../resources/css/curation.css">


<script src="../resources/js/jquery-3.6.0.min.js"></script>
<script src="../resources/js/modal.js"></script>
<script src="../resources/js/topBtn.js"></script>
<script src="https://kit.fontawesome.com/2004329f9f.js" crossorigin="anonymous"></script>

<style>
body, html, section{
	min-height: 100%
}
</style>

</head>
<body>
	<h1 class="hidden">playduck</h1>
	<%@ include file="common/header.jsp"%>
	<section>
		<div class="curation_container">
			<img src="../resources/images/tower1.PNG" alt="" />
		<p class="curation_title">뮤지컬 '캣츠' 40주년-웨버 "영원히 시대 초월할것"</p>
		
		<div class="curation_content">
		
		<p>“고양이들, 생일 축하해.”</p>

<p>뮤지컬 ‘캣츠’의 40주년을 맞아 이 작품의 작곡가인 앤드루 로이드 웨버가 감격의 소감을 전했다.</p>

<p>웨버는 11일 자신의 사회관계망 서비스를 통해 캣츠 40주년을 축하하며 “나와 (프로듀서) 카메론 매킨토시의 인생을 바꿔줄 공연이 되리라고는 생각도 못 했다”고 전했다. 그는 1981년 초연을 올린 영국 런던의 뉴런던 극장을 떠올리며 “40년 전 나와·카메론 매킨토시가 초연 전 걱정하며 그곳에 서 있었다. 얼마나 떨었었는지 아직도 기억이 난다”고 회상했다.</p>

<p>지난해 코로나 19로 큰 위기를 겪었지만, 뮤지컬 거장은 명작의 힘과 관객의 사랑에 대한 신뢰를 드러냈다. 그는 “(캣츠의 원작인) T.S.엘리엇의 글은 시대를 초월한다”며 “그렇기 때문에 캣츠도 앞으로 영원히 시대를 초월할 것”이라고 기대했다.</p>

<p>캣츠는 웨버와 최고의 제작자 카메론 매킨토시가 콤비를 이룬 첫 작품으로 노벨상을 수상한 세계적인 대문호·T.S.엘리엇의 시를 뮤지컬화했다. 올리비에상, 토니상, 드라마데스크상, 그래미상 등 전 세계 유수의 상을·석권했으며 30개 국가, 300여 개 도시에서 15개 이상의 언어로 공연됐다.</p>
		
		</div>
		
		<p class="curation_writer">작성자 : 김오리</p>
		</div>
		
		<c:if test="${member.m_no eq curation.m_no}">
		    &nbsp;
			<button class="cu_modifyBtn" type="button" onclick="location.href='${pageContext.request.contextPath}/board/boardUpdateView.do?boardNo=${curation.c_no}'">수정</button>
			</c:if>
	</section>
<br /><br /><br /><br /><br /><br /><br /><br />
	<%@ include file="common/footer.jsp"%>
</body>

</html>