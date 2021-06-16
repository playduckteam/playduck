<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>playduck - 전체보기</title>

<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/headerfooter.css">
<link rel="stylesheet" href="../resources/css/join.css">
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="../resources/css/findIdPw.css">

<link rel="stylesheet" href="../resources/css/list.css">


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
	
		 <div class="madal_listSort">
            <div class="madal_listSortDiv" title="">
                <span class="modal_content_close_1">X</span>
                <a href="/playduck/list/playlist.do?sortType=1" class="sort_title" style="margin-left:27px;">평점 높은 순</a>
                <hr class="sort_line"/>
                <a href="/playduck/list/playlist.do?sortType=2" class="sort_title">리뷰 많은 순</a>
                <hr class="sort_line"/>
                <a href="/playduck/list/playlist.do?sortType=3" class="sort_title">가나다 순</a>
                <hr class="sort_line"/>
                <a href="/playduck/list/playlist.do?sortType=4" class="sort_title">최신 순</a>
            </div>
    </div>
    
	<section>
	<div class="list_sort">분류 ▼</div>
	<p>총 ${totalContents}건의 게시물이 있습니다.</p>
	
	<div class="list_container">
	
		<c:forEach items="${plist}" var="pi" begin="0" varStatus="status">
		<div class="listArea">
			<img src="${pi.poster}">
			<div class="list_content">
			<div class="main_topinfo" style="display:none;">
					<button class="main_toprevieww"style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
				 <hr>
				</div>
				 <h3 style="color: #fff;">${pi.prfnm}</h3>
              <span class="main_toprate">95%</span>
				<div class="list_icon">
					<i class="far fa-star" id="star" style="color: yellow;"></i>
				</div>
			</div>
		</div>
		
		</c:forEach>
			
	</div>
	<c:out value="${pageBar}" escapeXml="false"/>
	</section>
<script>

$('.cell').on('mouseenter', function () {
	 $(this).children('.main_topinfo').show();
}).on('mouseleave', function () {
	 $(this).children('.main_topinfo').hide();
});
</script>
<br /><br /><br /><br /><br /><br /><br /><br />
	<%@ include file="common/footer.jsp"%>
</body>

</html>