<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <div class="AD_sidevar_container">

        <div class="AD_sidevar_title">
            <img src="../resources/images/logo.png">
        </div>

        <div>
            <table class="AD_sidevar_member">
                <thead>
                    <tr>
                        <th>회원 관리</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><a href="${pageContext.request.contextPath}/adminpage/admin.do">회원 관리</a></td>
                    </tr>
                    <tr>
                        <td onClick="location.href='reviewList.jsp'">리뷰 관리</td>
                    </tr>
                </tbody>
            </table>

        </div>
        <div>
            <table class="AD_sidevar_shopping">
                <thead>
                    <tr>
                        <th>MD 쇼핑</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td onClick="location.href='mdList.jsp'">목록 조회</td>
                    </tr>
                    <tr>
                        <td onClick="location.href='productEnList.jsp'">상품 등록</td>
                    </tr>
                    <tr>
                        <td onClick="location.href='salesList.jsp'">판매 목록</td>
                    </tr>
                    <tr>
                        <td><a href="${pageContext.request.contextPath}/adminpage/admincancel.do">취소 관리</td>
                    </tr>
                    <tr>
                        <td><a href="${pageContext.request.contextPath}/adminpage/adminreturn.do">반품 관리</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>