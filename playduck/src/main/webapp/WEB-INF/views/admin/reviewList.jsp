<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>관리자 페이지 - 리뷰 관리</title>
    <link rel="stylesheet" href="../../resources/css/common.css">
    <link rel="stylesheet" href="../../resources/css/headerfooter.css">
    <link rel="stylesheet" href="../../resources/css/sidevar.css">
    <link rel="stylesheet" href="../../resources/css/admin.css">
    <script src="../../resources/js/jquery-3.6.0.min.js"></script>

</head>

<body>

<%@ include file="sidevar.jsp"%>

    <div class="AD_main_container">

        <div class="AD_main_reviewList">

            <div class="AD_reviewList_title">리뷰 관리</div>

            <div class="AD_reviewList_search_img">

                <input type="text" class="searchbox">
                <img src="../../resources/images/search.png">
            </div>


            <table class="AD_reviewList_table">
                <thead>
                    <tr>
                        <th></th>
                        <th>회원명</th>
                        <th>한줄평</th>
                        <th>삭제</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>김오리</td>
                        <td>일단 뭐라도 한번 써볼게요 안녕하세요 ^^ 잘 나오네요</td>
                        <td><div class="reviewList_button_div"><button class="reviewList_button">삭제</button></div> </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>김오리</td>
                        <td>일단 뭐라도 한번 써볼게요 안녕하세요 ^^ 잘 나오네요</td>
                        <td><div class="reviewList_button_div"><button class="reviewList_button">삭제</button></div></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>김오리</td>
                        <td>일단 뭐라도 한번 써볼게요 안녕하세요 ^^ 잘 나오네요</td>
                        <td><div class="reviewList_button_div"><button class="reviewList_button">삭제</button></div></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>김오리</td>
                        <td>일단 뭐라도 한번 써볼게요 안녕하세요 ^^ 잘 나오네요</td>
                        <td><div class="reviewList_button_div"><button class="reviewList_button">삭제</button></div></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>김오리</td>
                        <td>일단 뭐라도 한번 써볼게요 안녕하세요 ^^ 잘 나오네요</td>
                        <td><div class="reviewList_button_div"><button class="reviewList_button">삭제</button></div></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>김오리</td>
                        <td>일단 뭐라도 한번 써볼게요 안녕하세요 ^^ 잘 나오네요</td>
                        <td><div class="reviewList_button_div"><button class="reviewList_button">삭제</button></div></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>김오리</td>
                        <td>일단 뭐라도 한번 써볼게요 안녕하세요 ^^ 잘 나오네요</td>
                        <td><div class="reviewList_button_div"><button class="reviewList_button">삭제</button></div></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>김오리</td>
                        <td>일단 뭐라도 한번 써볼게요 안녕하세요 ^^ 잘 나오네요</td>
                        <td><div class="reviewList_button_div"><button class="reviewList_button">삭제</button></div></td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>김오리</td>
                        <td>일단 뭐라도 한번 써볼게요 안녕하세요 ^^ 잘 나오네요</td>
                        <td><div class="reviewList_button_div"><button class="reviewList_button">삭제</button></div></td>
                    </tr>
                </tbody>
            </table>

        </div>

    </div>

</body>
<%@ include file="../common/footer.jsp"%>
</html>