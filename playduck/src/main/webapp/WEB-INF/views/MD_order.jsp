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
                <div class="MD_order_mainpic"><img src="${md.d_pic }" alt=""></div>
                <table class="MD_order_maintbl">
                    <tr class="MD_order_title">
                        <td>${md.d_title }</td>
                        <td>${md.d_price }원</td>
                    </tr>
                    <tr class="MD_order_text">
                        <td>배송비</td>
                        <td>2,500원</td>
                    </tr>
                    <tr class="MD_order_text">
                        <td>수량</td>
                        <td>
                            <input type="number" id="num" value="0"  min="0">
                        </td>
                    </tr>
                    <tr class="MD_order_text">
                    <c:if test="${empty member}">
					 <td>리워드 사용 <span class="MD_myreword">내 리워드 : 0점</span></td>
                       <td>
                            <input type="number" id="reward" value="0" max="0"}>원
                        </td>
                    </c:if>
                     <c:if test="${!empty member}">
                        <td>리워드 사용 <span class="MD_myreword">내 리워드 : ${getReward}점</span></td>
                        <td>
                            <input type="number" id="reward" value="0"  step="10"max="${getReward}">원
                        </td>
                     </c:if>
                    </tr>
                    <tr class="MD_order_sum">
                    <td>합계</td>
                    <td id="sum1">0 원</td>
             
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
                <img src="${md.d_detail}" alt="">
            </div>
        </section>
    </form>
    <br /><br /><br /><br /><br />
   <script>
	/* 리워드 max 값 제한 */
   $('#reward').on('input', function() {
	    var $this = $(this);
	    var max = ${getReward};
	    var str = parseInt(max/10)*10
	    var value = $this.val();
	/*     alert(str); */
	   	if(value )
	    if (value >= max ) {
	        $this.val(str);
	    }
	});
  /* 리워드 10원 단위로 사용 */ 
   $('#reward').on('change', function() {
	    var $this = $(this);
	    var value = $this.val();
	    value = parseInt(value/10)*10;
	    $this.val(value); 
	});
  
  /* 수량변화에 따른 합계금액변화  */
   $('#num').on('input',function(){
		  var $this = $(this);
		  var totalprice = $this.val()*${md.d_price};
		  var sum1 = document.getElementById('sum1');
		
		  /*3자리마다 컴마 표시  */
		  var reprice = totalprice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		  
		  sum1.innerHTML = reprice+"원";
	  });
  
  $
   function numberWithCommas(${md.d_price}) {
	    return ${md.d_price}.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	
   }

  $(function(){

  
      $('input:checkbox').attr('checked', true);
      

  });
  	

 
  
   </script>
   <%@ include file="common/footer.jsp"%>
</body>
</html>