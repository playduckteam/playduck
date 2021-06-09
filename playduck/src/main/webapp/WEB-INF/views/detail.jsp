<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>playduck - 상세보기</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/headerfooter.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/findIdPw.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/detail.css">


<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/modal.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/topBtn.js"></script>
<script src="https://kit.fontawesome.com/2004329f9f.js" crossorigin="anonymous"></script>
</head>
<body>
	<h1 class="hidden">playduck</h1>
	<%@ include file="common/header.jsp"%>
	<section>

		<a href="MD_play.jsp"><img class="detail_mdLink" src="${pageContext.request.contextPath}/resources/images/md_link.png"></a>
		<div class="detail_main">
			<div class="detail_poster">
				<img class="detail_poster" src="${dlist[1]}"
					alt="">
				<i class="far fa-star" id="star" style="color: yellow;"></i>	
			</div>
			
		<script>
	    $(function () {
	        $("#star").click(function () {
	            $("#star").removeClass("far");
	            $("#star").addClass("fas");
	          })
	        });
		</script>
			
			
			<table class="detail_content">
				<tr>
					<td class="detail_title">${dlist[0]}</td>
					<td class="detail_rating">95 <img
						src="${pageContext.request.contextPath}/resources/images/rating.png"></td>
				</tr>
				<tr>
					<td colspan="2">
						<div class="detail_ReservationLink">
							<img src="${pageContext.request.contextPath}/resources/images/detail_card.png">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 예매처 바로가기
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table class="detail_detailContent">
							<tr>
								<td class="detail_ContentTilte">장르</td>
								<td class="detail_ContentContent">${dlist[2]}</td>
								<td class="detail_ContentTilte">장소</td>
								<td class="detail_ContentContent">${dlist[3]}</td>
							</tr>
							<tr>
								<td class="detail_ContentTilte">관람시간</td>
								<td class="detail_ContentContent">${dlist[4]}</td>
								<td class="detail_ContentTilte">제작사</td>
								<td class="detail_ContentContent">${dlist[5]}</td>
							</tr>
							<tr>
								<td class="detail_ContentTilte">기간</td>
								<td colspan="3" class="detail_ContentContent">${dlist[6]} ~ ${dlist[7]}</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="border-bottom: 1px solid white;"></td>
				</tr>
				<tr>
					<td class="detail_ratingTitle" colspan="2">DUCK's 평점</td>
				</tr>
				<tr>
					<td colspan="2">
						<table class="detail_ratingArea">
							<tr>
								<td>공연장</td>
								<td>
									<div class="progress">
										<div class="progress-bar" style="width: 90%;"></div>
									</div>
								</td>
								<td style="font-weight: 300;">90%</td>
							</tr>
							<tr>
								<td>스토리</td>
								<td>
									<div class="progress">
										<div class="progress-bar" style="width: 70%;"></div>
									</div>
								</td>
								<td style="font-weight: 300;">70%</td>
							</tr>
							<tr>
								<td>연출</td>
								<td>
									<div class="progress">
										<div class="progress-bar" style="width: 60%;"></div>
									</div>
								</td>
								<td style="font-weight: 300;">60%</td>
							</tr>
							<tr>
								<td>캐스팅</td>
								<td>
									<div class="progress">
										<div class="progress-bar" style="width: 90%;"></div>
									</div>
								</td>
								<td style="font-weight: 300;">90%</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div class="detail_sub">
			<!-- 
			<h4 class="detail_sub_title">시놉시스</h4>
			<p class="detail_sub_content">국회는 국가의 예산안을 심의·확정한다. 헌법재판소에서 법률의
				위헌결정, 탄핵의 결정, 정당해산의 결정 또는 헌법소원에 관한 인용결정을 할 때에는 재판관 6인 이상의 찬성이 있어야
				한다. 훈장등의 영전은 이를 받은 자에게만 효력이 있고, 어떠한 특권도 이에 따르지 아니한다. 이 헌법시행 당시의
				대법원장과 위원은 탄핵 또는 금고 이상의 형의 선고에 의하지 아니하고는 파면되지 아니한다. 헌법재판소의 조직과 운영 기타
				필요한 사항은 법률로 정한다.</p>
				 -->
			<h4 class="detail_sub_title">출연진</h4>
			<p class="detail_sub_content">${dlist[7]}</p>

			<hr>
			
			
			<div class="detail_review">
			
				<h3 class="detail_reviewTitle">DUCK's 리뷰</h3>
				<button class="detail_reviewWrite" onclick = "fn_goReviewForm()">리뷰 작성하기</button>
				<script>
				function fn_goReviewForm(){
					location.href = "${pageContext.request.contextPath}/review/reviewForm.do"
				}
				</script>
				<div class="detail_reviewTab">
					<img class="good" src="${pageContext.request.contextPath}/resources/images/review_good_current.png"
						alt=""> <img class="good_gray" data-tab="good_gray"
						src="${pageContext.request.contextPath}/resources/images/review_good.png" alt=""> <img
						class="bad" src="${pageContext.request.contextPath}/resources/images/review_bad_current.png"
						alt=""> <img class="bad_gray" data-tab="bad_gray"
						src="${pageContext.request.contextPath}/resources/images/review_bad.png" alt="">
				</div>
				<script>
                    $(document).ready(function () {
                        /*웹페이지 열었을 때*/
                        $(".good").show();
                        $(".bad_gray").show();
                        $(".good_gray").hide();
                        $(".bad").hide();

                        /*bad_gray 클릭했을 때 bad를 보여줌*/
                        $(".bad_gray").click(function () {
                            $(".good").hide();
                            $(".bad_gray").hide();
                            $(".good_gray").show();
                            $(".bad").show();
                            var tab_id = $(this).attr('data-tab');

                            $('.tab-content').removeClass('current');

                            $(this).addClass('current');
                            $("#" + tab_id).addClass('current');
                        });

                        /*good_gray를 클릭했을 때 good을 보여줌*/
                        $(".good_gray").click(function () {
                            $(".good").show();
                            $(".bad_gray").show();
                            $(".good_gray").hide();
                            $(".bad").hide();

                            var tab_id = $(this).attr('data-tab');

                            $('.tab-content').removeClass('current');

                            $(this).addClass('current');
                            $("#" + tab_id).addClass('current');
                        });

                    });
                </script>
				<div class="tab-content current" id="good_gray">
				
					<!-- 리뷰 1 -->
					<div id="detail_goodContent" style="position: relative;">
						<div class="detail_reviewProfile"></div>
						<div class="detail_reviewOne">
							<table>
								<tr>
									<td class="detail_reviewContent">국회는 국가의 예산안을 심의·확정한다.
										헌법재판소에서 법률의 위헌 결정, 탄핵의 결정, 정당해핵의 결정, 정당핵의 결정, 정당</td>
									<td>
									<table class="review_thumbsArea">
										<tr>
										<td class="review_thumbs" style="height: 30px">
										<i class="far fa-thumbs-up" style="color: var(--main-color)"></i> <p class="thumb_count">3</p><br>
										<i class="far fa-thumbs-down" style="color: gray"></i> <p class="thumb_count">  3</p></td>
										</tr>
									</table>
									</td>
									
								</tr>
							</table>
							<button class="detail_reviewDelete">삭제하기</button>
						</div>
					</div>
					<!-- ---------- -->
					<!-- 리뷰 1 -->
					<div id="detail_goodContent" style="position: relative;">
						<div class="detail_reviewProfile"></div>
						<div class="detail_reviewOne">
							<table>
								<tr>
									<td class="detail_reviewContent">국회는 국가의 예산안을 심의·확정한다.
										헌법재판소에서 법률의 위헌 결정, 탄핵의 결정, 정당해핵의 결정, 정당핵의 결정, 정당</td>
									<td>
									<table class="review_thumbsArea">
										<tr>
										<td class="review_thumbs" style="height: 30px">
										<i class="far fa-thumbs-up" style="color: var(--main-color)"></i> <p class="thumb_count">3</p><br>
										<i class="far fa-thumbs-down" style="color: gray"></i> <p class="thumb_count">  3</p></td>
										</tr>
									</table>
									</td>
									
								</tr>
							</table>
							<button class="detail_reviewDelete">삭제하기</button>
						</div>
					</div>
					<!-- ---------- -->
					<!-- 리뷰 1 -->
					<div id="detail_goodContent" style="position: relative;">
						<div class="detail_reviewProfile"></div>
						<div class="detail_reviewOne">
							<table>
								<tr>
									<td class="detail_reviewContent">국회는 국가의 예산안을 심의·확정한다.
										헌법재판소에서 법률의 위헌 결정, 탄핵의 결정, 정당해핵의 결정, 정당핵의 결정, 정당</td>
									<td>
									<table class="review_thumbsArea">
										<tr>
										<td class="review_thumbs" style="height: 30px">
										<i class="far fa-thumbs-up" style="color: var(--main-color)"></i> <p class="thumb_count">3</p><br>
										<i class="far fa-thumbs-down" style="color: gray"></i> <p class="thumb_count">  3</p></td>
										</tr>
									</table>
									</td>
									
								</tr>
							</table>
							<button class="detail_reviewDelete">삭제하기</button>
						</div>
					</div>
					<!-- ---------- -->
					<!-- 리뷰 1 -->
					<div id="detail_goodContent" style="position: relative;">
						<div class="detail_reviewProfile"></div>
						<div class="detail_reviewOne">
							<table>
								<tr>
									<td class="detail_reviewContent">국회는 국가의 예산안을 심의·확정한다.
										헌법재판소에서 법률의 위헌 결정, 탄핵의 결정, 정당해핵의 결정, 정당핵의 결정, 정당</td>
									<td>
									<table class="review_thumbsArea">
										<tr>
										<td class="review_thumbs" style="height: 30px">
										<i class="far fa-thumbs-up" style="color: var(--main-color)"></i> <p class="thumb_count">3</p><br>
										<i class="far fa-thumbs-down" style="color: gray"></i> <p class="thumb_count">  3</p></td>
										</tr>
									</table>
									</td>
									
								</tr>
							</table>
							<button class="detail_reviewDelete">삭제하기</button>
						</div>
					</div>
					<!-- ---------- -->
					<!-- 리뷰 1 -->
					<div id="detail_goodContent" style="position: relative;">
						<div class="detail_reviewProfile"></div>
						<div class="detail_reviewOne">
							<table>
								<tr>
									<td class="detail_reviewContent">국회는 국가의 예산안을 심의·확정한다.
										헌법재판소에서 법률의 위헌 결정, 탄핵의 결정, 정당해핵의 결정, 정당핵의 결정, 정당</td>
									<td>
									<table class="review_thumbsArea">
										<tr>
										<td class="review_thumbs" style="height: 30px">
										<i class="far fa-thumbs-up" style="color: var(--main-color)"></i> <p class="thumb_count">3</p><br>
										<i class="far fa-thumbs-down" style="color: gray"></i> <p class="thumb_count">  3</p></td>
										</tr>
									</table>
									</td>
									
								</tr>
							</table>
							<button class="detail_reviewDelete">삭제하기</button>
						</div>
					</div>
					<!-- ---------- -->
					
				</div>
				<div class="tab-content" id="bad_gray">
					<!-- 리뷰 1 -->
					<div id="detail_goodContent" style="position: relative;">
						<div class="detail_reviewProfile"></div>
						<div class="detail_reviewOne">
							<table>
								<tr>
									<td class="detail_reviewContent">국회는 국가의 예산안을 심의·확정한다.
										헌법재판소에서 법률의 위헌 결정, 탄핵의 결정, 정당해핵의 결정, 정당핵의 결정, 정당</td>
									<td>
									<table class="review_thumbsArea">
										<tr>
										<td class="review_thumbs" style="height: 30px">
										<i class="far fa-thumbs-up" style="color: var(--main-color)"></i> <p class="thumb_count">3</p><br>
										<i class="far fa-thumbs-down" style="color: gray"></i> <p class="thumb_count">  3</p></td>
										</tr>
									</table>
									</td>
									
								</tr>
							</table>
							<button class="detail_reviewDelete">삭제하기</button>
						</div>
					</div>
					<!-- ---------- -->
					<!-- 리뷰 1 -->
					<div id="detail_goodContent" style="position: relative;">
						<div class="detail_reviewProfile"></div>
						<div class="detail_reviewOne">
							<table>
								<tr>
									<td class="detail_reviewContent">국회는 국가의 예산안을 심의·확정한다.
										헌법재판소에서 법률의 위헌 결정, 탄핵의 결정, 정당해핵의 결정, 정당핵의 결정, 정당</td>
									<td>
									<table class="review_thumbsArea">
										<tr>
										<td class="review_thumbs" style="height: 30px">
										<i class="far fa-thumbs-up" style="color: var(--main-color)"></i> <p class="thumb_count">3</p><br>
										<i class="far fa-thumbs-down" style="color: gray"></i> <p class="thumb_count">  3</p></td>
										</tr>
									</table>
									</td>
									
								</tr>
							</table>
							<button class="detail_reviewDelete">삭제하기</button>
						</div>
					</div>
					<!-- ---------- -->
					<!-- 리뷰 1 -->
					<div id="detail_goodContent" style="position: relative;">
						<div class="detail_reviewProfile"></div>
						<div class="detail_reviewOne">
							<table>
								<tr>
									<td class="detail_reviewContent">국회는 국가의 예산안을 심의·확정한다.
										헌법재판소에서 법률의 위헌 결정, 탄핵의 결정, 정당해핵의 결정, 정당핵의 결정, 정당</td>
									<td>
									<table class="review_thumbsArea">
										<tr>
										<td class="review_thumbs" style="height: 30px">
										<i class="far fa-thumbs-up" style="color: var(--main-color)"></i> <p class="thumb_count">3</p><br>
										<i class="far fa-thumbs-down" style="color: gray"></i> <p class="thumb_count">  3</p></td>
										</tr>
									</table>
									</td>
									
								</tr>
							</table>
							<button class="detail_reviewDelete">삭제하기</button>
						</div>
					</div>
					<!-- ---------- -->
					<!-- 리뷰 1 -->
					<div id="detail_goodContent" style="position: relative;">
						<div class="detail_reviewProfile"></div>
						<div class="detail_reviewOne">
							<table>
								<tr>
									<td class="detail_reviewContent">국회는 국가의 예산안을 심의·확정한다.
										헌법재판소에서 법률의 위헌 결정, 탄핵의 결정, 정당해핵의 결정, 정당핵의 결정, 정당</td>
									<td>
									<table class="review_thumbsArea">
										<tr>
										<td class="review_thumbs" style="height: 30px">
										<i class="far fa-thumbs-up" style="color: var(--main-color)"></i> <p class="thumb_count">3</p><br>
										<i class="far fa-thumbs-down" style="color: gray"></i> <p class="thumb_count">  3</p></td>
										</tr>
									</table>
									</td>
									
								</tr>
							</table>
							<button class="detail_reviewDelete">삭제하기</button>
						</div>
					</div>
					<!-- ---------- -->
					<!-- 리뷰 1 -->
					<div id="detail_goodContent" style="position: relative;">
						<div class="detail_reviewProfile"></div>
						<div class="detail_reviewOne">
							<table>
								<tr>
									<td class="detail_reviewContent">국회는 국가의 예산안을 심의·확정한다.
										헌법재판소에서 법률의 위헌 결정, 탄핵의 결정, 정당해핵의 결정, 정당핵의 결정, 정당</td>
									<td>
									<table class="review_thumbsArea">
										<tr>
										<td class="review_thumbs" style="height: 30px">
										<i class="far fa-thumbs-up" style="color: var(--main-color)"></i> <p class="thumb_count">3</p><br>
										<i class="far fa-thumbs-down" style="color: gray"></i> <p class="thumb_count">  3</p></td>
										</tr>
									</table>
									</td>
									
								</tr>
							</table>
							<button class="detail_reviewDelete">삭제하기</button>
						</div>
					</div>
					<!-- ---------- -->
				</div>
			</div>
		</div>
	<!--	<button class="detail_reviewWrite" onclick = "location.href = 'reviewWrite.jsp'">리뷰 작성하기</button>  -->
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />

		<br />

	</section>

	  <%@ include file="/WEB-INF/views/common/footer.jsp"%>
</body>

</html>