<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
<link rel="stylesheet" href="../resources/css/common.css">
<link rel="stylesheet" href="../resources/css/findIdPw.css">
<link rel="stylesheet" href="../resources/css/headerfooter.css">
<link rel="stylesheet" href="../resources/css/join.css">
<link rel="stylesheet" href="../resources/css/login.css">
<style>
body,html{
height: 100%}
</style>
</head>
<body>
	<%@ include file="common/header.jsp"%>
            <div class="modal_findPwdDiv" title="아이디 비밀번호 찾기">
                <div class="modal_content findArea">
                    <div class="find_id">
                        <h2 class=find_title>이메일 인증번호 확인</h2>
                        <form action="${pageContext.request.contextPath}/member/pw_set.do" method="post">
                        	<input type="hidden" name ="num" value="${num }">
							<div class=content>
								<div class="textbox">
								<input type="text" name="email_injeung" placeholder="인증번호를 입력하세요"><label>인증번호 </label>
								<div class="error"> </div>
							</div><br><br>
								<input type="submit" id="check" value="확인">
                        </form>
                    </div>

                </div>
            </div>
            	<%@ include file="common/footer.jsp"%>
</body>
</html>