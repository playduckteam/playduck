<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../resources/css/common.css">
    	<link rel="stylesheet" href="../resources/css/headerfooter.css">
	<link rel="stylesheet" href="../resources/css/join.css">
	<link rel="stylesheet" href="../resources/css/login.css">
	<link rel="stylesheet" href="../resources/css/findIdPw.css">
    <link rel="stylesheet" href="../resources/css/MD.css">
    <script src="../resources/js/jquery-3.6.0.min.js"></script>
    <script src="../resources/js/MD.js"></script>
    <script src="../resources/js/modal.js"></script>
    <script src="../resources/js/topBtn.js"></script>
    <title>playduck - MD_play 페이지</title>
</head>
<body>
        <%@ include file="common/header.jsp"%>
    <section>
        <div class="MD_play_playtitle">${play.get("title")}</div>
        <div class="MD_play_playimage"><img src="${play.get("poster")}" alt="포스터 사진"></div>
        <div class="MD_play_playcontainer">
           
            <div class="MD_play_item">
                <div class="MD_play_mdimage"><img src="../resources/images/md.PNG" alt=""></div>
                <div class="MD_play_mdtitle">[EMK] 레베카 프로그램북 세트</div>
                <div class="MD_play_mdprice">60,000 원</div>
            </div>
            <div class="MD_play_item">
                <div class="MD_play_mdimage"><img src="../resources/images/md.PNG" alt=""></div>
                <div class="MD_play_mdtitle">[EMK] 레베카 프로그램북 세트</div>
                <div class="MD_play_mdprice">60,000 원</div>
            </div>
            <div class="MD_play_item">
                <div class="MD_play_mdimage"><img src="../resources/images/md.PNG" alt=""></div>
                <div class="MD_play_mdtitle">[EMK] 레베카 프로그램북 세트</div>
                <div class="MD_play_mdprice">60,000 원</div>
            </div>
            <div class="MD_play_item">
                <div class="MD_play_mdimage"><img src="../resources/images/md.PNG" alt=""></div>
                <div class="MD_play_mdtitle">[EMK] 레베카 프로그램북 세트</div>
                <div class="MD_play_mdprice">60,000 원</div>
            </div>
            <div class="MD_play_item">
                <div class="MD_play_mdimage"><img src="../resources/images/md.PNG" alt=""></div>
                <div class="MD_play_mdtitle">[EMK] 레베카 프로그램북 세트</div>
                <div class="MD_play_mdprice">60,000 원</div>
            </div>
            <div class="MD_play_item">
                <div class="MD_play_mdimage"><img src="../resources/images/md.PNG" alt=""></div>
                <div class="MD_play_mdtitle">[EMK] 레베카 프로그램북 세트</div>
                <div class="MD_play_mdprice">60,000 원</div>
            </div>
            <div class="MD_play_item">
                <div class="MD_play_mdimage"><img src="../resources/images/md.PNG" alt=""></div>
                <div class="MD_play_mdtitle">[EMK] 레베카 프로그램북 세트</div>
                <div class="MD_play_mdprice">60,000 원</div>
            </div>
            <div class="MD_play_item">
                <div class="MD_play_mdimage"><img src="../resources/images/md.PNG" alt=""></div>
                <div class="MD_play_mdtitle">[EMK] 레베카 프로그램북 세트</div>
                <div class="MD_play_mdprice">60,000 원</div>
            </div>
        </div>
    </section>
    <br /><br /><br /><br /><br />
    <%@ include file="common/footer.jsp"%>
</body>
</html>