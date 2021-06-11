<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>playduck - 구매 목록</title>
    <link rel="stylesheet" href="../resources/css/common.css">
    <link rel="stylesheet" href="../resources/css/headerfooter.css">
<link rel="stylesheet" href="../resources/css/join.css">
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="../resources/css/findIdPw.css">
    <link rel="stylesheet" href="../resources/css/buy.css">
<script src="../resources/js/jquery-3.6.0.min.js"></script>
<script src="../resources/js/modal.js"></script>
<script src="../resources/js/topBtn.js"></script>
</head>
<body>
<%@ include file="common/header.jsp"%>
    <section>
        <div class ="buylist_title">
            구매목록
        </div>
        <div> 배송조회 서비스 <select class="shipment-comp"><option value="" selected="" disabled="" style="color:#ccc" data-v-9131d49c="">택배사</option> <option data-v-9131d49c="" value="de.dhl">DHL</option><option data-v-9131d49c="" value="jp.sagawa">Sagawa</option><option data-v-9131d49c="" value="jp.yamato">Kuroneko Yamato</option><option data-v-9131d49c="" value="jp.yuubin">Japan Post</option><option data-v-9131d49c="" value="kr.chunilps">천일택배</option><option data-v-9131d49c="" value="kr.cjlogistics">CJ대한통운</option><option data-v-9131d49c="" value="kr.cupost">CU 편의점택배</option><option data-v-9131d49c="" value="kr.cvsnet">GS Postbox 택배</option><option data-v-9131d49c="" value="kr.cway">CWAY (Woori Express)</option><option data-v-9131d49c="" value="kr.daesin">대신택배</option><option data-v-9131d49c="" value="kr.epost">우체국 택배</option><option data-v-9131d49c="" value="kr.hanips">한의사랑택배</option><option data-v-9131d49c="" value="kr.hanjin">한진택배</option><option data-v-9131d49c="" value="kr.hdexp">합동택배</option><option data-v-9131d49c="" value="kr.homepick">홈픽</option><option data-v-9131d49c="" value="kr.honamlogis">한서호남택배</option><option data-v-9131d49c="" value="kr.ilyanglogis">일양로지스</option><option data-v-9131d49c="" value="kr.kdexp">경동택배</option><option data-v-9131d49c="" value="kr.kunyoung">건영택배</option><option data-v-9131d49c="" value="kr.logen">로젠택배</option><option data-v-9131d49c="" value="kr.lotte">롯데택배</option><option data-v-9131d49c="" value="kr.slx">SLX</option><option data-v-9131d49c="" value="kr.swgexp">성원글로벌카고</option><option data-v-9131d49c="" value="nl.tnt">TNT</option><option data-v-9131d49c="" value="un.upu.ems">EMS</option><option data-v-9131d49c="" value="us.fedex">Fedex</option><option data-v-9131d49c="" value="us.ups">UPS</option><option data-v-9131d49c="" value="us.usps">USPS</option></select>
<input type="number" autocomplete="on" placeholder="송장번호" class="input input_invoice">
<a class="trackingBtn" href="#" target="_blank">배송조회</a></div>
         <!--물품 구매 리스트-->
         <div class="Sale_list">
         
            <div class="S_list" id="Sale_img">
                <img src="../resources/images/noimage.png" width="200px" height="200px">
            </div>
            <div class="S_list" id="Sale_title">
                <table>
                    <tr> 
                        <td class="Sale_title_th1"colspan="4">[EMK] 레베카 프로그램북 세트</td>
                        <td colspan="2" ><p class="Sale_price_td1" >60,000원</p></td>
                    </tr>
                    <tr>
                        <td class="Sale_title_td1">배송비</td>
                        <td class="Sale_title_td2">2,500원</td>
                        <td class="Sale_title_td1">수량</td>
                        <td class="Sale_title_td2">1</td>
                        <td class="Sale_title_td1">리워드 사용</td>
                        <td class="Sale_title_td2"  > 160원 </td>
                    </tr>
                    <tr>
                        <td class="Sale_title_td1" style="padding-bottom: 0px;">송장번호</td>
                        <td class="Sale_title_td2" style="padding-bottom: 0px;">12345678</td>
                        <td></td>
                        <td><p class="Sale_price_td2">합계</p></td>
                        <td><p class="Sale_price_td3">62,340원</p></td>
                    </tr>
                    <tr>
                    	<td colspan="6"><button class="Sale_returnBtn">반품</button><button class="Sale_canclenBtn">취소</button></td>
                    </tr>
                    <tr>
                    
                    <td>주문날짜</td>
                    </tr>
                </table>
            </div>
        </div>
        <hr style="border: solid 1px;">
        
        <script>
        // 끝
        	$('.shipment-comp,.input_invoice').on('change', function(){
        		var shipment_comp = $(this).parent().children('.shipment-comp').val();
        		var invoice_number = $(this).parent().children('.input_invoice').val();
        		$(this).siblings('a.trackingBtn').attr('href', 'https://tracker.delivery/#/' + shipment_comp + '/' + invoice_number);
        	});
        
        </script>
        <!-- 물품 구매 리스트 끝-->
         <!--물품 구매 리스트-->
         <div class="Sale_list">
            <div class="S_list" id="Sale_img">
                <img src="../resources/images/noimage.png" width="200px" height="200px">
            </div>
            <div class="S_list" id="Sale_title">
                <table>
                    <tr> 
                        <td class="Sale_title_th1"colspan="4">[EMK] 레베카 프로그램북 세트</td>
                        <td colspan="2" ><p class="Sale_price_td1" >60,000원</p></td>
                    </tr>
                    <tr>
                        <td class="Sale_title_td1">배송비</td>
                        <td class="Sale_title_td2">2,500원</td>
                        <td class="Sale_title_td1">수량</td>
                        <td class="Sale_title_td2">1</td>
                        <td class="Sale_title_td1">리워드 사용</td>
                        <td class="Sale_title_td2"  > 160원 </td>
                    </tr>
                    <tr>
                        <td class="Sale_title_td1" style="padding-bottom: 0px;">송장번호</td>
                        <td class="Sale_title_td2" style="padding-bottom: 0px;">12345678</td>
                        <td colspan="2" style="padding-bottom: 0px;"><a href="">>>송장번호 조회하러가기</a></td>
                        <td><p class="Sale_price_td2">합계</p></td>
                        <td><p class="Sale_price_td3">62,340원</p></td>
                    </tr>
                    <tr>
                    	<td colspan="6"><button class="Sale_returnBtn">반품</button><button class="Sale_canclenBtn">취소</button></td>
                    </tr>
                </table>
            </div>
        </div>
        <hr style="border: solid 1px;">
        <!-- 물품 구매 리스트 끝-->

    </section>
    <br /><br /><br /><br /><br />
    	<%@ include file="common/footer.jsp"%>
</body>
</html>