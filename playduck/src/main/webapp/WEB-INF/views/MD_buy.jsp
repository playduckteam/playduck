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
				     <tr id="${baskList.d_no}" }>
                        <td class="Sale_title_td1">수량</td>
                        <td class="Sale_title_td2" id="${ baskList.d_price }">
        
                            <input type="number" class="input-num" id="num"  name="inputnum" value="${baskList.b_quan }"  min="0">
                        </td>
                    </tr>
                </table>
            </div>
            <div class="S_list" id="Sale_price">
                <table>
                    <tr class="Sale_price_tr1">    ${ formatter.format(baskList.d_price )}원   </tr>
                    <tr>
                           <td><p class="Sale_price_tr2" >합계</p></td>
                           <td></td>
                           <td ><p class="Sale_price_tr3">${ formatter.format( baskList.d_price* baskList.b_quan + 2500 ) }  </p></td>
                    </tr>
                </table>
            </div>
        </div>
        <hr style="border: solid 1px;">
        </c:forEach>      
        <!--리워드 사용  -->
         <div class="MD_order_text">
                   <table>
                 	 <tr>
                 	 	<td  id="table3_td1" rowspan="4"> 전체 합계 </td>
                 	 	<td class="table3_td2"> 상품수 </td>
                 	 	<td class="table3_td2"> 1개</td>
                 	 	</tr>
                 	 <tr>
                 	 	 <td class="table3_td2">상품 금액</td>
                 	 	 <td class="table3_td2">40000원</td>
                 	 </tr>
                 	 <tr>
                        <td class="table3_td2">내 리워드  </td>
                        <td class="table3_td2">
                          ${getReward}점
                        </td>
                    </tr>
                   <tr>
                   <td class="table3_td2">리워드 사용</td>
                   <td class="table3_td2"> 
                   <input type="number" id="reward" value="0"  step="10"max="${getReward}">원
                   </td>
                   </tr>
                    </table>
          </div>
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
  <%--  < --%>
        <!-- 구매하기 버튼 -->
        <div class="Sale_buybox">
            <button class="Sale_buybtn">
            <img class="Sale_buyimg"src="../frontEnd/md_card.png" alt="">
                <span class="Sale_buytext">구매하기</span>
            </button>
            
        </div>
       
        <br><br><br><br><br>
       <script>
       /* 수량변화에 따른 합계금액변화  */

       $('.input-num').on('input',function(){
    		  var $this = $(this);
    		  var price = $this.parent().attr('id');
    		  var totalprice = $this.val()*price + 2500 ;
    		  var num = $this.val();
			  var mno = ${member.m_no};
			  var dno = $this.parent().parent().attr('id');
			  /*3자리마다 컴마 표시  */
    		  var reprice = totalprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			  var sss = $this.parent().parent().parent().parent().parent().siblings('.S_list:nth-child(4)').find('.Sale_price_tr3');

			  
    	
    		  
    	 	  $.ajax({
    			  url:"${pageContext.request.contextPath}/MD/MD_buy3.do",
    			  type:"post",
    			  data:{ mno : mno, dno : dno, num : num},
    			  success:function(){
    				  sss.html(reprice + "원")
    				  
    			  },
    			  error:function(){}
    		  });
    		  
    		 
    	  });
      
      
      /*3자리마다 컴마 표시  
       $(function(){
    	   
    	  var mdp = $('.Sale_list').siblings('.S_list:nth-child(2)');
    	  console.log(mdp);
    	  var mdptd = document.getElementById('Sale_price_tr1');

    	  var reprice = mdp.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    	  
    	 mdptd.innerHTML =  reprice+"원" 
    	
       
       }); 
       
      /* 리워드 max 값 제한, 리워드 사용 값 반영
       $('#reward').on('input', function() {
    	    var $this = $(this);
    	    var max = ${getReward};
    	    var str = parseInt(max/10)*10
    	    var value = $this.val();
    	    var totalprice = $('#num').val()*${md.d_price} + 2500 -$this.val();
    	/*     alert(str); 
    	   	if(value )
    	    if (value >= max ) {
    	        $this.val(str);
    	    }
    	    var sum1 = document.getElementById('sum1');
    		  /*3자리마다 컴마 표시  
    		  var reprice = totalprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    	
    		  sum1.innerHTML = reprice+"원";
    	});
      /* 리워드 10원 단위로 사용 
       $('#reward').on('change', function() {
    	    var $this = $(this);
    	    var value = $this.val();
    	    value = parseInt(value/10)*10;
    	    $this.val(value); 
    	}); */
       </script>
        
    </section>
        	<%@ include file="common/footer.jsp"%>
</body>
</html>    