<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>playduck - 주문하기</title>
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
        <!--물품 구매 리스트-->
  
  <c:forEach items="${baskList}" var="baskList">
        <div class="Sale_list">
            <div class="S_list" id="Sale_check">
                <input type="checkbox" name="list" id="펭수" value="펭수" checked>
                <label for="펭수"></label>
            </div>
            <div class="S_list" id="Sale_img">
                <img src="${baskList.d_pic}" width="200px" height="200px">
            </div>
            <div class="S_list" id="Sale_title">
                <table>
                    <tr> 
                        <td class="Sale_title_th1"colspan="2">${baskList.d_title }</td>
                    </tr>
                    <tr>
                        <td class="Sale_title_td1">배송비</td>
                        <td class="Sale_title_td2">2,500원</td>
                    </tr>
                    <tr>
                        <td class="Sale_title_td1"></td>
                        <td class="Sale_title_td2"></td>
                    </tr>
				     <tr>
                        <td class="Sale_title_td1">수량</td>
                        <td class="Sale_title_td2">
        
                            <input type="number" id="num" value="0"  min="0">
                        </td>
                    </tr>
                </table>
            </div>
            <div class="S_list" id="Sale_price">
                <table>
                    <tr>
                     <p id="Sale_price_tr1"> ${ baskList.d_price }원 </p>
                    </tr>
                    <tr>
                       <p id="Sale_price_tr2">
                            합계 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            62,340원
                        </p>
                    </tr>
                </table>
            </div>
        </div>
        <hr style="border: solid 1px;">
        </c:forEach>

        <div class="Sale_list">
            <div class="S_list" id="Sale_check">
                <input type="checkbox" name="list" id="펭수" value="펭수" checked>
                <label for="펭수"></label>
            </div>
            <div class="S_list" id="Sale_img">
                <img src="../resources/images/noimage.png" width="200px" height="200px">
            </div>
            <div class="S_list" id="Sale_title">
                <table>
                    <tr> 
                        <td class="Sale_title_th1" colspan="2">[EMK] 레베카 프로그램북 세트</td>
                    </tr>
                    <tr>
                        <td class="Sale_title_td1">배송비</td>
                        <td class="Sale_title_td2">2,500원</td>
                    </tr>
                    <tr>
                        <td class="Sale_title_td1">수량</td>
                        <td class="Sale_title_td2">1</td>
                    </tr>
                    <tr>
                        <td class="Sale_title_td1">리워드 사용</td>
                        <td class="Sale_title_td2"> 160원 </td>
                    </tr>
                </table>
            </div>
            <div class="S_list" id="Sale_price">
                <table>
                    <tr>
                     <p id="Sale_price_tr1"> 60,000원 </p>
                    </tr>
                    <tr>
                       <p id="Sale_price_tr2">
                            합계 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            62,340원
                        </p>
                    </tr>
                </table>
            </div>
        </div>
        <hr style="border: solid 1px;">
        
        <!-- 총 가격 -->
        <div id="Sale_AllPrice">
            총 상품 합계 124,680 원
        </div>

        <!--배송주소 입력창-->
        <div class="Sale_deliver">
            <form action="">
            <table >
            <tr>
            	
            <td colspan="2" class="loadArea">
            <input type="checkbox"  id="info_load"/> <label for="info_load" id ="info_load">내 정보 불러오기</label>
            </td>
            </tr>
                <tr>
                    <td class="Sale_deliver_td1">수령인</td>
                    <td><input type="text" class="Sale_deliver_text" ></td>
                </tr>
                <tr>
                    <td class="Sale_deliver_td1">전화번호</td>
                    <td><input type="text" class="Sale_deliver_text"></td>
                </tr>
                <tr>
                    <td class="Sale_deliver_td1" rowspan="3">배송지주소</td>
                    <td>
                        <input type="text" class="Sale_deliver_text1">
                        <button class="Sale_addres">주소찾기</button>
                    </td>
                </tr>
                <tr>
                    <td><input type="text" class="Sale_deliver_text"></td>
                </tr>
                <tr>
                    <td><input type="text" class="Sale_deliver_text"></td>
                </tr>
                <tr>
                    <td class="Sale_deliver_td1">배송 메모</td>
                    <td><input type="text" class="Sale_deliver_text"></td>
                </tr>
            </table>
        </form>
        </div>
  <%--  <tr class="MD_order_text">
                    <c:if test="${empty member}">
					 <td class="Sale_title_td1"> 리워드 사용 <span class="MD_myreword">내 리워드 : 0점</span></td>
                       <td>
                            <input type="number" id="reward" value="0" max="0"}>원
                        </td>
                    </c:if>
                     <c:if test="${!empty member}">
                        <td class="Sale_title_td1">리워드 사용 <span class="MD_myreword">내 리워드 : ${getReward}점</span></td>
                        <td>
                            <input type="number" id="reward" value="0"  step="10"max="${getReward}">원
                        </td>
                     </c:if>
                    </tr> --%>
        <!-- 구매하기 버튼 -->
        <div class="Sale_buybox">
            <button class="Sale_buybtn">
            <img class="Sale_buyimg"src="../frontEnd/md_card.png" alt="">
                <span class="Sale_buytext">구매하기</span>
            </button>
            
        </div>
       
        <br><br><br><br><br>
<!--        <script>
       /* 리워드 max 값 제한, 리워드 사용 값 반영*/
       $('#reward').on('input', function() {
    	    var $this = $(this);
    	    var max = ${getReward};
    	    var str = parseInt(max/10)*10
    	    var value = $this.val();
    	    var totalprice = $('#num').val()*${md.d_price} + 2500 -$this.val();
    	/*     alert(str); */
    	   	if(value )
    	    if (value >= max ) {
    	        $this.val(str);
    	    }
    	    var sum1 = document.getElementById('sum1');
    		  /*3자리마다 컴마 표시  */
    		  var reprice = totalprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    	
    		  sum1.innerHTML = reprice+"원";
    	});
      /* 리워드 10원 단위로 사용 */ 
       $('#reward').on('change', function() {
    	    var $this = $(this);
    	    var value = $this.val();
    	    value = parseInt(value/10)*10;
    	    $this.val(value); 
    	});
       </script> -->
        
    </section>
        	<%@ include file="common/footer.jsp"%>
</body>
</html>       