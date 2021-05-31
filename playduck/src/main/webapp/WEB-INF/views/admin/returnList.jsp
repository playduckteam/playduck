<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>관리자 페이지 - 반품 관리</title>
    <link rel="stylesheet" href="../../resources/css/common.css">
    <link rel="stylesheet" href="../../resources/css/headerfooter.css">
    <link rel="stylesheet" href="../../resources/css/sidevar.css">
    <link rel="stylesheet" href="../../resources/css/admin.css">
    <script src="../../resources/asset/js/jquery-3.6.0.min.js"></script>

</head>

<body>
	
<%@ include file="sidevar.jsp"%>


	<div class="AD_main_container">

		<div class="AD_main_returnList">

			<div class="AD_returnList_title">반품 관리</div>

			<div class="AD_returnList_search_img">

				<input type="text" class="searchbox"> <img
					src="../../resources/images/search.png">
			</div>


			<table class="AD_returnList_table">
				<thead>
					<tr>
						<th></th>
						<th>회원명</th>
						<th></th>
						<th>상품명</th>
						<th>가격</th>
						<th>수량</th>
						<th>반품</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>김오리</td>
						<td><img src="../../resources/images/panda.gif"></td>
						<td>팬더팬더</td>
						<td>60,000</td>
						<td>1</td>
						<td><button class="salesList_button">반품 완료</button></td>
					</tr>
					<tr>
						<td>1</td>
						<td>김오리</td>
						<td><img src="../../resources/images/panda.gif"></td>
						<td>팬더팬더</td>
						<td>60,000</td>
						<td>1</td>
						<td><button class="salesList_button">반품 완료</button></td>
					</tr>
					<tr>
						<td>1</td>
						<td>김오리</td>
						<td><img src="../../resources/images/panda.gif"></td>
						<td>팬더팬더</td>
						<td>60,000</td>
						<td>1</td>
						<td><button class="salesList_button">반품 완료</button></td>
					</tr>
					<tr>
						<td>1</td>
						<td>김오리</td>
						<td><img src="../../resources/images/panda.gif"></td>
						<td>팬더팬더</td>
						<td>60,000</td>
						<td>1</td>
						<td><button class="salesList_button">반품 완료</button></td>
					</tr>

				</tbody>
			</table>

		</div>

	</div>


</body>
<%@ include file="../common/footer.jsp"%>
</html>