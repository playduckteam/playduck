<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<head>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    $(function(){
    	$('.join_addrBtn').on('click',function(){
    		new daum.Postcode({
                oncomplete: function(data) {
                    // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                    // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var extraRoadAddr = ''; // 참고 항목 변수

                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraRoadAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                       extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraRoadAddr !== ''){
                        extraRoadAddr = ' (' + extraRoadAddr + ')';
                    }

                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    $('#m_address0').val(data.zonecode);
                    $('#m_address1').val(roadAddr);
                }
            }).open();
    	});
    });

    
</script>
</head>

	<div class="headerArea">
	
<h1 class="hidden">playduck</h1>
<header>
	<div class="header_searchArea">
		<img class="header_search" src="${pageContext.request.contextPath}/resources/images/main_search.png"
			alt="">
		<a class="all_content" href="${pageContext.request.contextPath}/reviewWrite.do">전체작품</a> | <a class="all_md" href="../views/MD_main.jsp">전체MD</a>
	</div>
	
	<a href="../views/index.jsp"><img class="header_logo" src="${pageContext.request.contextPath}/resources/images/logo.png" alt=""></a>
	<div class="header_login">
		<a class="modal_loginBtn">로그인</a> | <a class="modal_joinBtn">회원가입</a> | <a href="${pageContext.request.contextPath}/mypage/mypage.do">마이페이지</a>
		
		<div class="modal_search">
            <div class="modal_searchDiv" title="검색">
                <span class="modal_content_close">X</span>
                <div class="modal_content searchArea">
                    <form action="" method="post">
                        <input class="main_searchInput" type="text" placeholder="보고싶은 공연을 검색하세요!"/>
                        <button class="main_search">검색</button>
                    </form>
                </div>
            </div>
    </div>

		
		<div class="modal_join">
        <div class="modal_joinDiv" title="회원가입">
            <span class="modal_content_close">X</span>
            <div class="modal_content joinArea">
                <form action="${pageContext.request.contextPath}/member/memberInsert.do" method="POST">
                    <h2 class=join_title>회원가입</h2>
                    <div id="join_container">

                        <table class="join_table">
                            <!-- ID -->
                            <tr>
                                <td class="join_title">
                                    <h4 class="join_subTitle">아이디</h4>
                                </td>
                                <td>
                                    <input type="text" name="m_id" id="join_id" placeholder="영문, 숫자 허용">

                                </td>

                            </tr>
                            <!-- PASSWORD -->
                            <tr>
                                <td class="join_title">
                                    <h4 class="join_subTitle">비밀번호</h4>
                                </td>
                                <td>
                                    <input type="password" id="join_pwd1" name="m_pwd" placeholder="6자리 이상, 영문 숫자 포함">
                                </td>
                            </tr>
                            <tr>
                                <td class="join_title">
                                    <h4 class="join_subTitle">비밀번호 확인</h4>
                                </td>
                                <td>
                                    <input type="password" id="m_pwd2" name="m_pwd2">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" id="pwdValidate" class="red"></td>
                            </tr>
                            <!-- NAME -->
                            <tr>
                                <td class="join_title">
                                    <h4 class="join_subTitle">이름</h4>
                                </td>
                                <td>
                                    <input type="text" name="m_name" id="m_name">
                                </td>
                            </tr>
                            <!-- GENDER -->
                            <tr>
                                <td class="join_title">
                                    <h4 class="join_subTitle">성별</h4>
                                </td>
                                <td class="join_gender">
                                    <input type="radio" name="m_gender" id="gender_M" value="M" /> <label
                                        for="gender_M">남성</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="m_gender" id="gender_F" value="F" /> <label
                                        for="gender_F">여성</label>
                                </td>
                            </tr>
                            <!-- BIRTH -->
                            <tr>
                                <td class="join_title">
                                    <h4 class="join_subTitle">생년월일</h4>
                                </td>
                                <td class="join_birth">
                                	<input type="hidden" name="m_pic" value="nopic.jpg"/>
                                	<input type="date" name="m_date" value="2021-06-23" style="display:none;"/>
                                    <input type="text" class="j_birth" name="m_date1" id="join_birth" maxlength="4"
                                        placeholder="2021">
                                    <input type="text" class="j_birth" name="m_date1" id="join_birth" maxlength="2"
                                        placeholder="월">
                                    <input type="text" class="j_birth" name="m_date1" id="join_birth" maxlength="2"
                                        placeholder="일">
                                </td>
                            </tr>
                            <!-- PHONE -->
                            <tr>
                                <td class="join_title">
                                    <h4 class="join_subTitle">연락처</h4>
                                </td>
                                <td class="join_phone">
                                    <select name="m_phone" id="m_phone" style="height: 24px;">
                                        <option value="010">
                                            010
                                        </option>
                                        <option value="011">
                                            011
                                        </option>
                                        <option value="016">
                                            016
                                        </option>
                                        <option value="019">
                                            019
                                        </option>
                                        <option value="02">
                                            02
                                        </option>
                                        <option value="050">
                                            050
                                        </option>
                                    </select>
                                    <span style="color:black">-</span>
                                    <input type="text" name="m_phone" id="m_phone" maxlength="10"
                                        style="width: 100px;" >
                                    <span style="color:black">-</span>
                                    <input type="text" name="m_phone" id="m_phone" maxlength="10"
                                        style="width: 100px;" >    

                                </td>
                            </tr>
                            <!-- E-MAIL -->
                            <tr>
                                <td class="join_title">
                                    <h4 class="join_subTitle">이메일</h4>
                                </td>
                                <td class="join_email">
                                    <input type="text" name="m_email" id="join_email" placeholder="example"> @
                                    <input type="text" name="m_email" id="join_email" placeholder="example.com">
                                </td>
                            </tr>
                            <!-- ADDRESS -->

                            <tr>
                                <td class="join_title">
                                    <h4 class="join_subTitle">우편번호</h4>
                                </td>
                                <td>
                                    <input type="text" name="m_addrcode" id="m_address0" size="40" maxlength="40" style="width:100px; background:rgb(233, 227, 227);"readonly>
                                    <button class="join_addrBtn" style="width:50px; height:26px; background:var(--main-color); text-align:center;" type="button">검색</button>
                                </td>
                            </tr>
                            <tr>
                                <td class="join_title">
                                    <h4 class="join_subTitle">도로명 주소</h4>
                                </td>
                                <td>
                                    <input type="text" name="m_address" id="m_address1" size="40" maxlength="40" style="background:rgb(233, 227, 227);"readonly>
                                </td>
                                
                            </tr>
                            <tr>
                                <td class="join_title">
                                    <h4 class="join_subTitle">상세주소</h4>
                                </td>
                                <td>
                                    <input type="text" name="m_detailadd" id="m_address2" size="40" maxlength="40">
                                </td>
                            </tr>
                        </table>
                    </div>



                    <!-- 선호 장르 선택 -->
                    <h4 class="join_checkTitle">선호 장르</h4>
                    <table class="check_table">
                        <tr>
                            <td class="join_checkArea"><input type="checkbox" class="check-box" id="check-box1"
                                    name="m_genre" value="연극"><label for="check-box1">연극</label></td>
                            <td class="join_checkArea"><input type="checkbox" class="check-box" id="check-box2"
                                    name="m_genre" value="뮤지컬"><label for="check-box2">뮤지컬</label></td>
                            <td class="join_checkArea"><input type="checkbox" class="check-box" id="check-box4"
                                    name="m_genre" value="무용"><label for="check-box4">무용</label></td>
                            <td class="join_checkArea"><input type="checkbox" class="check-box" id="check-box3"
                                    name="m_genre" value="클래식/오페라"><label for="check-box3">클래식/오페라</label></td>

                        </tr>
                        <tr>
                            <td class="join_checkArea"><input type="checkbox" class="check-box" id="check-box5"
                                    name="m_genre" value="국악"><label for="check-box5">국악</label></td>
                            <td class="join_checkArea"><input type="checkbox" class="check-box" id="check-box6"
                                    name="m_genre" value="아동"><label for="check-box6">아동</label></td>
                            <td class="join_checkArea"><input type="checkbox" class="check-box" id="check-box7"
                                    name="m_genre" value="오픈런"><label for="check-box7">오픈런</label></td>
                            <td class="join_checkArea"></td>
                        </tr>

                    </table>
            </div>

            <button class="join_submitBtn" type="submit">회원가입</button>
            </form>

        </div>
    </div>
    <div class="modal_login">
            <div class="modal_loginDiv" title="로그인">
                <span class="modal_content_close">X</span>
                <div class="modal_content loginArea">
                    <h2 class="modal_loginTitle">로그인</h2>
                    <form action="" method="post">
                        <input type="text" name="m_id" id="m_id" maxlength="20" placeholder="아이디"/>
                        <input type="password" name="m_pwd" id="m_pwd" placeholder="비밀번호"/>

                        <div class="login_find" id="modal_findBtn">아이디/비밀번호 찾기</div>

                        <button type="submit" class="login_box login orange">로그인</button>
                        <button type="button" class="login_box join orange" id="login_joinBtn">회원가입</button>
                        <div class="iconArea">
                            <img class="icon" src="${pageContext.request.contextPath}/resources/images/instar.png" alt="인스타 아이콘">
                            <img class="icon" src="${pageContext.request.contextPath}/resources/images/facefook.png" alt="페이스북 아이콘">
                            <img class="icon" src="${pageContext.request.contextPath}/resources/images/twitter.png" alt="트위터 아이콘">
                        </div>
                        <div class="icon_content">SNS 계정으로 로그인하기</div>
                    </form>
                </div>
            </div>
    </div>
    
    <div class="modal_find">
            <div class="modal_findDiv" title="아이디 비밀번호 찾기">
                <span class="modal_content_close">X</span>
                <div class="modal_content findArea">
                    <div class="find_id">
                        <h2 class=find_title>아이디 찾기</h2>
                        <form action="" method="post">
                            <input type="text" name="m_email" id="find_m_email" placeholder="이메일 주소"/>
                            <button type="submit" class="login_box find orange">이메일 인증받기</button>
                        </form>
                    </div>

                    <div class="find_pwd">
                        <h2 class=find_title>비밀번호 변경</h2>
                        <form action="">
                            <input type="text" name="m_id" id="m_id" maxlength="20" placeholder="아이디"/>
                            <input type="text" name="m_email" id="find_m_email" placeholder="이메일 주소"/>
                            <button type="submit" class="login_box login orange">이메일 인증받기</button>      
                        </form>
                    </div>

                </div>
            </div>
    </div>
    
    
    </div>
    
	</div>
</header>
</div>