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
                        <h2 class=find_title>비밀번호 변경</h2>
                        <form action="" method="post">
                        <p class="findPwd_result">변경할 비밀번호를 입력하세요</p><br><br>
                            <input type="text" name="m_id" id="findPwd1" maxlength="20" placeholder="비밀번호"/>
                            <input type="text" name="m_email" id="findPwd2" placeholder="비밀번호 확인"/>
                            <button type="submit" class="login_box find orange">메인으로 이동</button>
                        </form>
                    </div>

                </div>
            </div>
            	<%@ include file="common/footer.jsp"%>
</body>
</html>