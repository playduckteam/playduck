<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>playduck - MD 구매 페이지</title>
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
</head>
<body>
    <%@ include file="common/header.jsp"%>
    <form action="">
        <section>
            <div class="MD_order_container">
                <div class="MD_order_mainpic"><img src="../resources/images/sleepnomore.jpg" alt=""></div>
                <table class="MD_order_maintbl">
                    <tr class="MD_order_title">
                        <td>[EMK} 레베카 프로그램북 세트</td>
                        <td>60,000 원</td>
                    </tr>
                    <tr class="MD_order_text">
                        <td>배송비</td>
                        <td>2,500원</td>
                    </tr>
                    <tr class="MD_order_text">
                        <td>수량</td>
                        <td>
                            <input type="number" id="" value="0">
                        </td>
                    </tr>
                    <tr class="MD_order_text">
                        <td>리워드 사용 <span class="MD_myreword">내 리워드 : 000점</span></td>
                        <td>
                            <input type="number" id="" value="0">원
                        </td>
                    </tr>
                    <tr class="MD_order_sum">
                    <td>합계</td>
                    <td>59840원</td>
             
                    </tr>
                    <tr class="MD_order_btn MD_order_basketbtn">
                        <td colspan="2">
                            <div>
                                <img src="../resources/images/md_basket.png">
                                <p>장바구니</p>
                            </div>
                        </td>
                    </tr>
                    <tr class="MD_order_btn MD_order_orderbtn">
                        <td colspan="2">
                            <div>
                                <img src="../resources/images/md_card.png">
                                <p>결제하기</p>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div class="MD_order_imgarea">
                <img src="../resources/images/K_head.jpg" alt="">
            </div>
        </section>
    </form>
    <br /><br /><br /><br /><br />
   <%@ include file="common/footer.jsp"%>
</body>
</html>