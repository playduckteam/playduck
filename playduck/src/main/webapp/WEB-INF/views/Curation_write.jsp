<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>playduck - 상세보기</title>
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/headerfooter.css">
<link rel="stylesheet" href="../resources/css/join.css">
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="../resources/css/findIdPw.css">

<link rel="stylesheet" href="../resources/css/curation.css">


<script src="../resources/js/jquery-3.6.0.min.js"></script>
<script src="../resources/js/modal.js"></script>
<script src="../resources/js/topBtn.js"></script>
<script src="https://kit.fontawesome.com/2004329f9f.js" crossorigin="anonymous"></script>


<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<style>
body, html, section{
	min-height: 100%
}

.note-editable, .panel-heading, .note-btn{
	background-color: var(--black-color)
}

</style>

</head>
<body>
	<h1 class="hidden">playduck</h1>
	<%@ include file="common/header.jsp"%>
	<section>
		<div class="curation_container">
			<img src="../resources/images/tower1.PNG" alt="" />
		<span class="curation_title">제목</span> <input type="text" id="curation_titleArea"/>
		   
		<textarea id="summernote"></textarea>

    <script>
        $('#summernote').summernote();
    </script>
		</div>
		<button class="curation_writeBtn">리뷰 작성하기</button>
	</section>
<br /><br /><br /><br /><br /><br /><br /><br />
	<%@ include file="common/footer.jsp"%>
</body>

</html>