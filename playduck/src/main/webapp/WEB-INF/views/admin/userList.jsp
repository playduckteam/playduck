<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>관리자 페이지 - 회원 목록</title>
    <link rel="stylesheet" href="../../resources/css/common.css">
    <link rel="stylesheet" href="../../resources/css/headerfooter.css">
    <link rel="stylesheet" href="../../resources/css/sidevar.css">
    <link rel="stylesheet" href="../../resources/css/admin.css">
    <script src="../../resources/js/jquery-3.6.0.min.js"></script>

</head>

<body>

<%@ include file="sidevar.jsp"%>


    <div class="AD_main_container">

        <div class="AD_main_memberlist">

            <div class="AD_memberlist_title">회원 목록</div>

            <div class="AD_memberlist_search_img">

                <input type="text" class="searchbox">
                <img src="../../resources/images/search.png">
            </div>


            <table class="AD_memberlist_table">
                <thead>
                    <tr>
                        <th></th>
                        <th style="width:200px">회원명</th>
                        <th style="width:250px">리워드</th>
                        <th>회원등급</th>
                        <th>탈퇴</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>김오리</td>
                        <td>160점</td>
                        <td>파트너 큐레이터</td>
                        <td> <div class="memberlist_button_div"><button class="memberlist_button">탈퇴</button></div></td>
                    </tr>
                </tbody>
            </table>

        </div>

    </div>

<%@ include file="../common/footer.jsp"%>

</body>

</html>