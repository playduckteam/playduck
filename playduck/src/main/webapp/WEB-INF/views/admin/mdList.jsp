<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>관리자 페이지 - 목록 조회</title>
    <link rel="stylesheet" href="../../resources/css/common.css">
    <link rel="stylesheet" href="../../resources/css/headerfooter.css">
    <link rel="stylesheet" href="../../resources/css/sidevar.css">
    <link rel="stylesheet" href="../../resources/css/admin.css">
    <script src="../../resources/js/jquery-3.6.0.min.js"></script>
</head>

<body>


<%@ include file="sidevar.jsp"%>

	<div class="AD_main_container">

		<div class="AD_main_mdList">

			<div class="AD_mdList_title">목록 조회</div>

			<div class="AD_mdList_search_img">

				<input type="text" class="searchbox"> <img
					src="../../resources/images/search.png">
			</div>


			<table class="AD_mdList_table">
				<thead>
					<tr>
						<th></th>
						<th></th>
						<th>상품명</th>
						<th>가격</th>
						<th>수량</th>
						<th>수정</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td><img src="../../resources/images/panda.gif"></td>
						<td>SCH 성창현 컬렉션</td>
						<td>1억</td>
						<td>40</td>
						<td><button class="mdList_button">수정</button></td>
					</tr>
					<tr>
						<td>1</td>
						<td><img src="../../resources/images/panda.gif"></td>
						<td>SCH 성창현 컬렉션</td>
						<td>1억</td>
						<td>40</td>
						<td><button class="mdList_button">수정</button></td>
					</tr>
					<tr>
						<td>1</td>
						<td><img src="../../resources/images/panda.gif"></td>
						<td>SCH 성창현 컬렉션</td>
						<td>1억</td>
						<td>40</td>
						<td><button class="mdList_button">수정</button></td>
					</tr>
					<tr>
						<td>1</td>
						<td><img src="../../resources/images/panda.gif"></td>
						<td>SCH 성창현 컬렉션</td>
						<td>1억</td>
						<td>40</td>
						<td><button class="mdList_button">수정</button></td>
					</tr>

				</tbody>
			</table>

		</div>

	</div>
</body>
<%@ include file="../common/footer.jsp"%>

</html>