<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="tab-content current" id="tab_GoodReview">
				<c:forEach items="${rlist}" var="r">
					<!-- 리뷰 1 -->
					<div id="detail_goodContent" style="position: relative;">
						<div class="detail_reviewProfile">
						<img src="${pageContext.request.contextPath}/resources/profileImg/${r.M_PICRENAMED}" alt="" />
						</div>
						<div class="detail_reviewOne">
							<table>
								<tr>
									<td class="detail_reviewContent">${r.R_CONTENT}</td>
									<td>
									<table class="review_thumbsArea">
										<tr>
										<td class="review_thumbs" style="height: 30px">
										<i class="far fa-thumbs-up" style="color: var(--main-color)"></i> <p class="thumb_count">${r.R_GOOD}</p><br>
										<i class="far fa-thumbs-down" style="color: gray"></i> <p class="thumb_count">${r.R_BAD}</p></td>
										</tr>
									</table>
									</td>
									
								</tr>
							</table>
				
							<c:if test="${member.m_no eq r.M_NO}">
		    
			<button class="detail_reviewDelete" type="button" onclick="location.href='${pageContext.request.contextPath}/review/reviewDelete.do?r_no=${r.R_NO}'">삭제하기</button>
			</c:if>
						</div>
					</div>
					<!-- ---------- -->
					</c:forEach>
				</div>