<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>



  <script src="../resources/js/jquery-3.6.0.min.js"></script>
   
   
    <script src="https://kit.fontawesome.com/2004329f9f.js" crossorigin="anonymous"></script>
    
    <script src="../resources/js/modal.js"></script>
<script src="../resources/js/topBtn.js"></script>
    <link rel="stylesheet" href="../resources/css/common.css">
    <link rel="stylesheet" href="../resources/css/headerfooter.css">
<link rel="stylesheet" href="../resources/css/join.css">
<link rel="stylesheet" href="../resources/css/login.css">
<link rel="stylesheet" href="../resources/css/findIdPw.css">
<link rel="stylesheet" href="../resources/css/profileModify.css">

    <style>
        section {
            position: relative;
        }

        body {
            background: var(--black-color);
        }

        .Mypage_img {
            width: 300px;
            height: 300px;
            border-radius: 30px;
            margin-top: 5%;
            margin-left: 20%;

        }

        .Mypage_table .Mypage_head {
            font-size: 24px;
            font-weight: 700;
            padding: 12px;

        }

        .Mypage_table .Mypage_guide {
            font-size: 17px;
            font-weight: 700;

        }

        .Mypage_update_button {
            width: 250px;
            height: 40px;
            text-align: center;
            cursor: pointer;
            padding: 5px;
            background-color: none;
            border: 3px solid gray;
            border-radius: 10px;
            background: var(--black-color);
            color: white;
        }

        .Mypage_content td {
            color: white;
            font-size: 17px;
            padding: 10px;

        }

        .Mypage_table {
            margin: auto;
            margin-top: 30px;
            margin-right: 50px;

        }

        .profile {
            display: flex;
            justify-content: space-around;
        }

        .Mypage_line {
            background-color: white;
            height: 1px;
            margin-top: 10%;
        }

        /* 아이콘 부분 CSS */
        .Mypage_icons_table td {
            color: white;
            font-size: 24px;
            font-weight: 700;
            text-align: center;

        }

        .Mypage_icon_img {
            width: 100px;
        }

        .Mypage_icons_table {
            width: 1000px;
            height: 200px;
            margin-top: 5%;
        }

        .Mypage_icons_table td {
            width: 330px;
        }

        .Mypage_line1 {
            background-color: white;
            height: 1px;
            margin-top: 3%;
        }

        .main_topwindow {

            overflow: hidden;
            /*check out container's movement : command + / */
            position: relative;
            top: 20%;
            left: 50%;
            transform: translateY(-50%);
            transform: translateX(-50%);
            height: 300px;
            width: 1000px;
        }

        .main_topcontainer,
        .mypage_bookmarkContainer, .mypage_bookmarkContainer2 {
            position: absolute;
            height: 220px;
            width: 3500px;
            margin-left: 0;
            padding-left: 0;
            background: var(--black-color);
        }

        .left {
            border: solid #fff;
            border-width: 0 7px 7px 0;
            display: inline-block;
            position: absolute;
            top: 120px;
            z-index: 100;
            padding: 20px;
            margin-right: 10px;
            left: 30px;
            transform: rotate(135deg);
            -webkit-transform: rotate(135deg);
        }

        .right {
            border: solid #fff;
            border-width: 0 7px 7px 0;
            display: inline-block;
            right: 30px;
            position: absolute;
            top: 120px;
            z-index: 100;
            padding: 20px;
            transform: rotate(-45deg);
            -webkit-transform: rotate(-45deg);
        }

        .cell {
            width: 150px;
            height: 220px;
            display: inline-block;
            margin-right: 5px;
            margin-left: 5px;
            position: relative;
        }

        .cell img {
            width: 150px;
            height: 220px;
            margin-bottom: 5px;
        }

        .main_topcontainer li,
        .mypage_bookmarkContainer, .mypage_bookmarkContainer2 {
            vertical-align: top;
        }

        .main_toprate {
            font-family: NanumBarunGothic;
            color: #fff;
            font-size: 14px;
            font-weight: 400;
        }

        .main_topcontent {
            position: relative;
        }

        .main_topicon {
            position: absolute;
            width: 15px;
            bottom: 10px;
            right: 10px;
            cursor: pointer;
            float: right;
        }

        .main_topinfo {
            position: absolute;
            top: 60px;
            left: 50px;
        }

        .main_contentTitle {
            font-size: 14px;
            font-weight: 400;
        }
        
            .main_fonto {
      font-family: NanumBarunGothic;
      color: #ff6801;
      font-size: 24px;
      font-weight: 400;
    }

    .main_fontw {
      font-family: NanumBarunGothic;
      color: #fff;
      font-size: 24px;
      font-weight: 400;
    }
    .mypage_myReview{
    margin-top: 80px
    }
    </style>
</head>

<body>
<%@ include file="common/header.jsp"%>

<div class="modal_profileModify">
        
        <div class="modal_profileModifyDiv" title="회원정보 수정">
<p class="modal_content_close ">X</p>
            <div class="modal_content loginArea">
                <form action="" method="POST">
                    <h2 class=pm_title>회원가입</h2>
                    <div id="pm_container">

                        <table class="pm_table">
                            <!-- ID -->
                            <tr>
                                <td class="pm_title">
                                    <h4 class="pm_subTitle">아이디</h4>
                                </td>
                                <td>
                                    <input type="text" name="m_id" id="pm_id" placeholder="영문, 숫자 허용">

                                </td>

                            </tr>
                            <!-- PASSWORD -->
                            <tr>
                                <td class="pm_title">
                                    <h4 class="pm_subTitle">비밀번호</h4>
                                </td>
                                <td>
                                    <input type="password" id="pm_pwd1" name="m_pwd" placeholder="6자리 이상, 영문 숫자 포함">
                                </td>
                            </tr>
                            <tr>
                                <td class="pm_title">
                                    <h4 class="pm_subTitle">비밀번호 확인</h4>
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
                                <td class="pm_title">
                                    <h4 class="pm_subTitle">이름</h4>
                                </td>
                                <td>
                                    <input type="text" name="m_name" id="m_name">
                                </td>
                            </tr>
                            <!-- GENDER -->
                            <tr>
                                <td class="pm_title">
                                    <h4 class="pm_subTitle">성별</h4>
                                </td>
                                <td class="pm_gender">
                                    <input type="radio" name="m_gender" id="gender_M" value="M" /> <label
                                        for="gender_M">남성</label>&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="radio" name="m_gender" id="gender_F" value="F" /> <label
                                        for="gender_F">여성</label>
                                </td>
                            </tr>
                            <!-- BIRTH -->
                            <tr>
                                <td class="pm_title">
                                    <h4 class="pm_subTitle">생년월일</h4>
                                </td>
                                <td class="pm_birth">
                                    <input type="text" class="j_birth" name="m_birth" id="pm_birth" maxlength="4"
                                        placeholder="2021">
                                    <input type="text" class="j_birth" name="m_birth" id="pm_birth" maxlength="2"
                                        placeholder="월">
                                    <input type="text" class="j_birth" name="m_birth" id="pm_birth" maxlength="2"
                                        placeholder="일">
                                </td>
                            </tr>
                            <!-- PHONE -->
                            <tr>
                                <td class="pm_title">
                                    <h4 class="pm_subTitle">연락처</h4>
                                </td>
                                <td class="pm_phone">
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
                                    <input type="text" name="m_phone" id="m_phone" maxlength="10"
                                        style="width: 249px;" placeholder="'-'를 제외하고 작성해 주세요">

                                </td>
                            </tr>
                            <!-- E-MAIL -->
                            <tr>
                                <td class="pm_title">
                                    <h4 class="pm_subTitle">이메일</h4>
                                </td>
                                <td class="pm_email">
                                    <input type="text" name="m_email" id="pm_email" placeholder="example"> @
                                    <input type="text" name="m_email" id="pm_email" placeholder="example.com">
                                </td>
                            </tr>
                            <!-- ADDRESS -->

                            <tr>
                                <td class="pm_title">
                                    <h4 class="pm_subTitle">주소</h4>
                                </td>
                                <td>
                                    <input type="text" name="m_address" id="m_address1" size="40" maxlength="40">
                                </td>
                            </tr>
                            <tr>
                                <td class="pm_title">
                                    <h4 class="pm_subTitle">상세주소</h4>
                                </td>
                                <td>
                                    <input type="text" name="m_address" id="m_address2" size="40" maxlength="40">
                                </td>
                            </tr>
                        </table>
                    </div>



                    <!-- 선호 장르 선택 -->
                    <h4 class="pm_checkTitle">선호 장르</h4>
                    <table class="check_table">
                        <tr>
                            <td class="pm_checkArea"><input type="checkbox" class="check-box" id="check-box1"
                                    name="keyword_id" value="1"><label for="check-box1">연극</label></td>
                            <td class="pm_checkArea"><input type="checkbox" class="check-box" id="check-box2"
                                    name="keyword_id" value="2"><label for="check-box2">뮤지컬</label></td>
                            <td class="pm_checkArea"><input type="checkbox" class="check-box" id="check-box4"
                                    name="keyword_id" value="4"><label for="check-box4">무용</label></td>
                            <td class="pm_checkArea"><input type="checkbox" class="check-box" id="check-box3"
                                    name="keyword_id" value="3"><label for="check-box3">클래식/오페라</label></td>

                        </tr>
                        <tr>
                            <td class="pm_checkArea"><input type="checkbox" class="check-box" id="check-box5"
                                    name="keyword_id" value="5"><label for="check-box5">국악</label></td>
                            <td class="pm_checkArea"><input type="checkbox" class="check-box" id="check-box6"
                                    name="keyword_id" value="6"><label for="check-box6">아동</label></td>
                            <td class="pm_checkArea"><input type="checkbox" class="check-box" id="check-box7"
                                    name="keyword_id" value="7"><label for="check-box7">오픈런</label></td>
                            <td class="pm_checkArea"></td>
                        </tr>

                    </table>
            </div>

            <button class="pm_submitBtn" type="submit">회원가입</button>
            </form>

        </div>
    </div>
    
    
    <section>
        <!-- 회원 사진 -->
        <div class="profile">
            <div>
                <img class="Mypage_img" src="../resources/images/1Z7ZAQ1IWV_1.jpg" alt="펭수 프로필">
            </div>
            <div class="Mypage_content">
                <table class="Mypage_table">
                    <tr>
                        <td class="Mypage_head">회원정보</th>
                    </tr>
                    <tr>
                        <td class="Mypage_guide">이름</td>
                        <td>김오리</td>
                    </tr>
                    <tr>
                        <td class="Mypage_guide">전화번호</td>
                        <td>010-1234-1234</td>
                    </tr>
                    <tr>
                        <td class="Mypage_guide">생년월일</td>
                        <td>1995년 2월 19일</td>
                    </tr>
                    <tr>
                        <td class="Mypage_guide">주소</td>
                        <td>서울시 강남구</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <input class="Mypage_update_button" type="button" value="회원정보 수정">
                        </td>
                    </tr>
                </table>

            </div>
        </div>


        <hr class="Mypage_line">

        <div class="Mypage_icons">
            <table class="Mypage_icons_table">
                <tr>
                    <td><img class="Mypage_icon_img" src="../resources/images/mypage_review.png" alt="아이콘1"></td>
                    <td><img class="Mypage_icon_img" src="../resources/images/mypage_rewards.png" alt="아이콘2"></td>
                    <td><img class="Mypage_icon_img" src="../resources/images/mypage_rank.png" alt="아이콘3"></td>
                </tr>
                <tr>
                    <td>작성한 리뷰</td>
                    <td>내 리워드</td>
                    <td>PLAYDUCK</td>
                </tr>
                <tr>
                    <td style="color : #ff6801;">58개</td>
                    <td style="color : #ff6801;">160점</td>
                    <td style="color : #ff6801;">파트너 큐레이터</td>
                </tr>
            </table>
        </div>

        <hr class="Mypage_line1">
        <!--작성한 리뷰-->
        <article class="mypage_myReview">
            <div> <span class="main_fonto">김오리 님</span> <span class="main_fontw">이 작성한 리뷰</span></div>
            <div class="main_topwindow">
                <div class="button-container">
                    <button class="prev"><i class="arrow left"></i></button>
                </div>
                <ul class="main_topcontainer">
                    <li class="cell">
                        <img src="../resources/images/agatha.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell">
                        <img src="../resources/images/aida.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell"><img src="../resources/images/cats.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell"><img src="../resources/images/grease.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell"><img src="../resources/images/ludwig.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell"><img src="../resources/images/matilda.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell"><img src="../resources/images/midnight.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell"><img src="../resources/images/mozart.png">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell"><img src="../resources/images/phantom.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell"><img src="../resources/images/Rebecca.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="button-container">
                    <button class="next"><i class="arrow right"></i></button>
                </div>
            </div>
            <script>
                const container = document.querySelector(".main_topcontainer");
                const prevBtn = document.querySelector(".prev");
                const nextBtn = document.querySelector(".next");

                (function addEvent() {
                    prevBtn.addEventListener('click', translateContainer.bind(this, 1));
                    nextBtn.addEventListener('click', translateContainer.bind(this, -1));
                })();

                function translateContainer(direction) {
                    const selectedBtn = (direction === 1) ? 'prev' : 'next';
                    container.style.transitionDuration = '500ms';
                    container.style.transform = `translateX(${direction * ( 4.7 )}%)`;
                    container.ontransitionend = () => reorganizeEl(selectedBtn);
                }

                function reorganizeEl(selectedBtn) {
                    container.removeAttribute('style');
                    (selectedBtn === 'prev') ? container.insertBefore(container.lastElementChild, container
                            .firstElementChild):
                        container.appendChild(container.firstElementChild);
                }
                $(function () {
                    $(".main_topicon").click(function () {
                        $("#star").removeClass("far");
                        $("#star").addClass("fas");
                    })
                });
                $('.cell').on('mouseenter', function () {
                    $(this).children('.main_topinfo').show();
                }).on('mouseleave', function () {
                    $(this).children('.main_topinfo').hide();
                });
            </script>
        </article>
<br /><br /><br /><br /><br />

        <!-- 두번째 슬라이드 -->
        <article class="mypage_bookmark">
            <div><span class="main_fonto">찜한 </span> <span class="main_fontw">공연 목록</span></div>
            <div class="main_topwindow">
                <div class="button-container">
                    <button class="prev2"><i class="arrow left"></i></button>
                </div>
                <ul class="mypage_bookmarkContainer">
                    <li class="cell">
                        <img src="../resources/images/agatha.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell">
                        <img src="../resources/images/agatha.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell"><img src="../resources/images/mozart.png">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell"><img src="../resources/images/phantom.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell">
                        <img src="../resources/images/agatha.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell">
                        <img src="../resources/images/agatha.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell">
                        <img src="../resources/images/agatha.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell">
                        <img src="../resources/images/agatha.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell">
                        <img src="../resources/images/agatha.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell">
                        <img src="../resources/images/agatha.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="button-container">
                    <button class="next2"><i class="arrow right"></i></button>
                </div>
                </div>
                </article>
                <script>
                    const container2 = document.querySelector(".mypage_bookmarkContainer");
                    const prevBtn2 = document.querySelector(".prev2");
                    const nextBtn2 = document.querySelector(".next2");

                    (function addEvent() {
                        prevBtn2.addEventListener('click', translateContainer.bind(this, 1));
                        nextBtn2.addEventListener('click', translateContainer.bind(this, -1));
                    })();

                    function translateContainer(direction) {
                        const selectedBtn2 = (direction === 1) ? 'prev2' : 'next2';
                        container2.style.transitionDuration = '500ms';
                        container2.style.transform = `translateX(${direction * ( 4.7 )}%)`;
                        container2.ontransitionend = () => reorganizeEl2(selectedBtn2);
                    }

                    function reorganizeEl2(selectedBtn) {
                        container2.removeAttribute('style');
                        (selectedBtn === 'prev2') ? container2.insertBefore(container2.lastElementChild, container2
                                .firstElementChild):
                            container2.appendChild(container2.firstElementChild);
                    }
                    $(function () {
                        $(".main_topicon").click(function () {
                            $("#star").removeClass("far");
                            $("#star").addClass("fas");
                        })
                    });
                    $('.cell').on('mouseenter', function () {
                        $(this).children('.main_topinfo').show();
                    }).on('mouseleave', function () {
                        $(this).children('.main_topinfo').hide();
                    });
                </script>

<br /><br /><br /><br /><br />
                <!-- 세번째 슬라이드 -->
                <article class="mypage_bookmark2">
                    <div> <span class="main_fonto">찜한 </span> <span class="main_fontw">콘텐츠 목록</span></div>
                    <div class="main_topwindow">
                        <div class="button-container">
                            <button class="prev3"><i class="arrow left"></i></button>
                        </div>
                        <ul class="mypage_bookmarkContainer2">
                            <li class="cell">
                                <img src="../resources/images/agatha.jpg">
                                <div class="main_topinfo" style="display:none;">
                                    <button class="main_toprevieww"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                                    <hr>
                                    <button class="main_topreviewr"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                                </div>
                                <div class="main_topcontent">
                                    <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                                    <span class="main_toprate">95%</span>
                                    <div class="main_topicon">
                                        <i class="far fa-star" id="star" style="color: yellow;"></i>
                                    </div>
                                </div>
                            </li>
                            <li class="cell">
                                <img src="../resources/images/agatha.jpg">
                                <div class="main_topinfo" style="display:none;">
                                    <button class="main_toprevieww"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                                    <hr>
                                    <button class="main_topreviewr"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                                </div>
                                <div class="main_topcontent">
                                    <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                                    <span class="main_toprate">95%</span>
                                    <div class="main_topicon">
                                        <i class="far fa-star" id="star" style="color: yellow;"></i>
                                    </div>
                                </div>
                            </li>
                            <li class="cell"><img src="../resources/images/mozart.png">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                    <li class="cell"><img src="../resources/images/phantom.jpg">
                        <div class="main_topinfo" style="display:none;">
                            <button class="main_toprevieww"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                            <hr>
                            <button class="main_topreviewr"
                                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                        </div>
                        <div class="main_topcontent">
                            <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                            <span class="main_toprate">95%</span>
                            <div class="main_topicon">
                                <i class="far fa-star" id="star" style="color: yellow;"></i>
                            </div>
                        </div>
                    </li>
                            <li class="cell">
                                <img src="../resources/images/agatha.jpg">
                                <div class="main_topinfo" style="display:none;">
                                    <button class="main_toprevieww"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                                    <hr>
                                    <button class="main_topreviewr"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                                </div>
                                <div class="main_topcontent">
                                    <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                                    <span class="main_toprate">95%</span>
                                    <div class="main_topicon">
                                        <i class="far fa-star" id="star" style="color: yellow;"></i>
                                    </div>
                                </div>
                            </li>
                            <li class="cell">
                                <img src="../resources/images/agatha.jpg">
                                <div class="main_topinfo" style="display:none;">
                                    <button class="main_toprevieww"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                                    <hr>
                                    <button class="main_topreviewr"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                                </div>
                                <div class="main_topcontent">
                                    <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                                    <span class="main_toprate">95%</span>
                                    <div class="main_topicon">
                                        <i class="far fa-star" id="star" style="color: yellow;"></i>
                                    </div>
                                </div>
                            </li>
                            <li class="cell">
                                <img src="../resources/images/agatha.jpg">
                                <div class="main_topinfo" style="display:none;">
                                    <button class="main_toprevieww"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                                    <hr>
                                    <button class="main_topreviewr"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                                </div>
                                <div class="main_topcontent">
                                    <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                                    <span class="main_toprate">95%</span>
                                    <div class="main_topicon">
                                        <i class="far fa-star" id="star" style="color: yellow;"></i>
                                    </div>
                                </div>
                            </li>
                            <li class="cell">
                                <img src="../resources/images/agatha.jpg">
                                <div class="main_topinfo" style="display:none;">
                                    <button class="main_toprevieww"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                                    <hr>
                                    <button class="main_topreviewr"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                                </div>
                                <div class="main_topcontent">
                                    <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                                    <span class="main_toprate">95%</span>
                                    <div class="main_topicon">
                                        <i class="far fa-star" id="star" style="color: yellow;"></i>
                                    </div>
                                </div>
                            </li>
                            <li class="cell">
                                <img src="../resources/images/agatha.jpg">
                                <div class="main_topinfo" style="display:none;">
                                    <button class="main_toprevieww"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                                    <hr>
                                    <button class="main_topreviewr"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                                </div>
                                <div class="main_topcontent">
                                    <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                                    <span class="main_toprate">95%</span>
                                    <div class="main_topicon">
                                        <i class="far fa-star" id="star" style="color: yellow;"></i>
                                    </div>
                                </div>
                            </li>
                            <li class="cell">
                                <img src="../resources/images/agatha.jpg">
                                <div class="main_topinfo" style="display:none;">
                                    <button class="main_toprevieww"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
                                    <hr>
                                    <button class="main_topreviewr"
                                        style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
                                </div>
                                <div class="main_topcontent">
                                    <h3 class="main_contentTitle" style="color: #fff;">뮤지컬 제목</h3>
                                    <span class="main_toprate">95%</span>
                                    <div class="main_topicon">
                                        <i class="far fa-star" id="star" style="color: yellow;"></i>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <div class="button-container">
                            <button class="next3"><i class="arrow right"></i></button>
                        </div>
                        </div>
                        </article>
                        <script>
                            const container3 = document.querySelector(".mypage_bookmarkContainer2");
                            const prevBtn3 = document.querySelector(".prev3");
                            const nextBtn3 = document.querySelector(".next3");

                            (function addEvent() {
                                prevBtn3.addEventListener('click', translateContainer.bind(this, 1));
                                nextBtn3.addEventListener('click', translateContainer.bind(this, -1));
                            })();

                            function translateContainer(direction) {
                                const selectedBtn3 = (direction === 1) ? 'prev3' : 'next3';
                                container3.style.transitionDuration = '500ms';
                                container3.style.transform = `translateX(${direction * ( 4.7 )}%)`;
                                container3.ontransitionend = () => reorganizeEl3(selectedBtn3);
                            }

                            function reorganizeEl3(selectedBtn) {
                                container3.removeAttribute('style');
                                (selectedBtn === 'prev2') ? container3.insertBefore(container3.lastElementChild,
                                        container3.firstElementChild):
                                    container3.appendChild(container3.firstElementChild);
                            }
                            $(function () {
                                $(".main_topicon").click(function () {
                                    $("#star").removeClass("far");
                                    $("#star").addClass("fas");
                                })
                            });
                            $('.cell').on('mouseenter', function () {
                                $(this).children('.main_topinfo').show();
                            }).on('mouseleave', function () {
                                $(this).children('.main_topinfo').hide();
                            });
                        </script>

    </section>
    <br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />

		<br />
    	<%@ include file="common/footer.jsp"%>
</body>

</html>