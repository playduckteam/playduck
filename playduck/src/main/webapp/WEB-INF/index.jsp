<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>메인 페이지</title>
  <script src="resources/js/jquery-3.6.0.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
    integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous">
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
    integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous">
  </script>
  <script src="https://kit.fontawesome.com/2004329f9f.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="resources/css/common.css">
  <link rel="stylesheet" href="resources/css/main.css">
  <link rel="stylesheet" href="resources/css/headerfooter.css">
<link rel="stylesheet" href="resources/css/join.css">
<link rel="stylesheet" href="resources/css/login.css">
<link rel="stylesheet" href="resources/css/findIdPw.css">
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script src="resources/js/modal.js"></script>
<script src="resources/js/topBtn.js"></script>

</head>

<body>
 	<%@ include file="/WEB-INF/views/common/header.jsp"%>
  <!--메인 슬라이드-->
  <article class="main_slide">
    <img class="main_ribbon" src="resources/images/top10_ribbon.png">
    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel"
      style="height:730px; width:1400px;">
      <div class="carousel-inner">

        <div class="carousel-item active">
          <img src="resources/images/slide01.jpg" class="d-block w-100" height="730px" width="1400px"
            id="main_slideimg">
        </div>
        <div class="carousel-item">
          <img src="resources/images/slide02.jpg" class="d-block w-100" height="730px" width="1400px"
            id="main_slideimg">
        </div>
        <div class="carousel-item">
          <img src="resources/images/slide03.jpg" class="d-block w-100" height="730px" width="1400px"
            id="main_slideimg">
        </div>
        <div class="carousel-item">
          <img src="resources/images/slide04.jpg" class="d-block w-100" height="730px" width="1400px"
            id="main_slideimg">
        </div>
        <div class="carousel-item">
          <img src="resources/images/slide05.jpg" class="d-block w-100" height="730px" width="1400px"
            id="main_slideimg">
        </div>
        <div class="carousel-item">
          <img src="resources/images/slide06.jpg" class="d-block w-100" height="730px" width="1400px"
            id="main_slideimg">
        </div>
        <div class="carousel-item">
          <img src="resources/images/slide07.jpg" class="d-block w-100" height="730px" width="1400px"
            id="main_slideimg">
        </div>
        <div class="carousel-item">
          <img src="resources/images/slide08.jpg" class="d-block w-100" height="730px" width="1400px"
            id="main_slideimg">
        </div>
        <div class="carousel-item">
          <img src="resources/images/slide09.jpg" class="d-block w-100" height="730px" width="1400px"
            id="main_slideimg">
        </div>
        <div class="carousel-item">
          <img src="resources/images/slide10.jpg" class="d-block w-100" height="730px" width="1400px"
            id="main_slideimg">
        </div>
      </div>
    </div>
  </article>
  <section>
    <!--탑10 슬라이드-->
    <article class="main_top10">
      <div> <span class="main_fontw">TOP 10</span> <span class="main_fonto">작품 리뷰</span></div>
      <div class="main_topwindow">
        <div class="button-container">
          <button class="prev"><i class="arrow left"></i></button>
        </div>
        <ul class="main_topcontainer">
          <li class="cell">
            <img src="resources/images/agatha.jpg">
            <div class="main_topinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_topcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_toprate">95%</span>
              <div class="main_topicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell">
            <img src="resources/images/aida.jpg">
            <div class="main_topinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_topcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_toprate">95%</span>
              <div class="main_topicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell"><img src="resources/images/cats.jpg">
            <div class="main_topinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_topcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_toprate">95%</span>
              <div class="main_topicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell"><img src="resources/images/grease.jpg">
            <div class="main_topinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_topcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_toprate">95%</span>
              <div class="main_topicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell"><img src="resources/images/ludwig.jpg">
            <div class="main_topinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_topcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_toprate">95%</span>
              <div class="main_topicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell"><img src="resources/images/matilda.jpg">
            <div class="main_topinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_topcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_toprate">95%</span>
              <div class="main_topicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell"><img src="resources/images/midnight.jpg">
            <div class="main_topinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_topcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_toprate">95%</span>
              <div class="main_topicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell"><img src="resources/images/mozart.png">
            <div class="main_topinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_topcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_toprate">95%</span>
              <div class="main_topicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell"><img src="resources/images/phantom.jpg">
            <div class="main_topinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_topcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_toprate">95%</span>
              <div class="main_topicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell"><img src="resources/images/Rebecca.jpg">
            <div class="main_topinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_topcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
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
          (selectedBtn === 'prev') ? container.insertBefore(container.lastElementChild, container.firstElementChild):
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

    <!--큐레이션 슬라이드-->
    <article class="main_curation">
      <div> <span class="main_fontw">큐레이션</span> <span class="main_fonto">for DUCKs</span></div>
      <div class="main_curwindow">
        <div class="button-container">
          <button class="prev2"><i class="arrow left2"></i></button>
        </div>
        <ul class="main_curcontainer">
          <li class="cell2">
            <img src="resources/images/agatha.jpg">
            <div class="main_curcontent">
             <h3 style="color: #fff;">뮤지컬 제목</h3>
              <div class="main_curicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell2"><img src="resources/images/aida.jpg">
            <div class="main_curcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <div class="main_curicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell2"><img src="resources/images/cats.jpg">
            <div class="main_curcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <div class="main_curicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell2"><img src="resources/images/grease.jpg">
            <div class="main_curcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <div class="main_curicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell2"><img src="resources/images/ludwig.jpg">
            <div class="main_curcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <div class="main_curicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell2"><img src="resources/images/matilda.jpg">
            <div class="main_curcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <div class="main_curicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell2"><img src="resources/images/midnight.jpg">
            <div class="main_curcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <div class="main_curicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell2"><img src="resources/images/mozart.png">
            <div class="main_curcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <div class="main_curicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell2"><img src="resources/images/phantom.jpg">
            <div class="main_curcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <div class="main_curicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell2"><img src="resources/images/Rebecca.jpg">
            <div class="main_curcontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <div class="main_curicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
        </ul>
        <div class="button-container">
          <button class="next2"><i class="arrow right2"></i></button>
        </div>
      </div>
      <script>
        const container2 = document.querySelector(".main_curcontainer");
        const prevBtn2 = document.querySelector(".prev2");
        const nextBtn2 = document.querySelector(".next2");

        (function addEvent() {
          prevBtn2.addEventListener('click', translateContainer2.bind(this, 1));
          nextBtn2.addEventListener('click', translateContainer2.bind(this, -1));
        })();

        function translateContainer2(direction) {
          const selectedBtn2 = (direction === 1) ? 'prev2' : 'next2';
          container2.style.transitionDuration = '500ms';
          container2.style.transform = `translateX(${direction * ( 20 )}%)`;
          container2.ontransitionend = () => reorganizeEl2(selectedBtn2);
        }

        function reorganizeEl2(selectedBtn2) {
          container2.removeAttribute('style');
          (selectedBtn2 === 'prev2') ? container2.insertBefore(container2.lastElementChild, container2
            .firstElementChild): container2.appendChild(container2.firstElementChild);
        }
        $(function () {
          $(".main_topicon").click(function () {
            $("#star").removeClass("far");
            $("#star").addClass("fas");
          })
        });
      </script>
    </article>
    <!--핫리뷰-->
    <article class="main_hotreview">
      <div> <span class="main_fonto">HOT</span> <span class="main_fontw">리뷰</span></div>

      <table class="main_hotreviewTable">
        <tr>
          <td class="main_hotreviewprofile"></td>
          <td class="main_hotreviewcontent">리뷰 글자수는 몇자를 노출되게 하는게 좋을까요
            아니면 제목만 노출되게 하는게 좋을까요</td>
          <td class="main_hotreviewimg"></td>
        </tr>
      </table>
      <table class="main_hotreviewTable">
        <tr>
          <td class="main_hotreviewprofile"></td>
          <td class="main_hotreviewcontent">리뷰 글자수는 몇자를 노출되게 하는게 좋을까요
            아니면 제목만 노출되게 하는게 좋을까요</td>
          <td class="main_hotreviewimg"></td>
        </tr>
      </table>
      <table class="main_hotreviewTable">
        <tr>
          <td class="main_hotreviewprofile"></td>
          <td class="main_hotreviewcontent">리뷰 글자수는 몇자를 노출되게 하는게 좋을까요
            아니면 제목만 노출되게 하는게 좋을까요</td>
          <td class="main_hotreviewimg"></td>
        </tr>
      </table>

    </article>
    <!--추천 슬라이드-->
    <article class="main_recommend">
      <div><span class="main_fontw">[김오리]님, 이 작품은 어떠세요?</span></div>
      <div class="main_recwindow">
        <div class="button-container">
          <button class="prev3"><i class="arrow left3"></i></button>
        </div>
        <ul class="main_reccontainer">
          <li class="cell3">
            <img src="resources/images/agatha.jpg">
            <div class="main_recinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_reccontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_recrate">95%</span>
              <div class="main_recicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell3"><img src="resources/images/aida.jpg">
            <div class="main_recinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_reccontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_recrate">95%</span>
              <div class="main_recicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell3"><img src="resources/images/cats.jpg">
            <div class="main_recinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_reccontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_recprate">95%</span>
              <div class="main_recicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell3"><img src="resources/images/grease.jpg">
            <div class="main_recinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_reccontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_recrate">95%</span>
              <div class="main_recicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell3"><img src="resources/images/ludwig.jpg">
            <div class="main_recinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_reccontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_recrate">95%</span>
              <div class="main_recicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell3"><img src="resources/images/matilda.jpg">
            <div class="main_recinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_reccontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_recrate">95%</span>
              <div class="main_recicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell3"><img src="resources/images/midnight.jpg">
            <div class="main_recinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_reccontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_recrate">95%</span>
              <div class="main_recicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell3"><img src="resources/images/mozart.png">
            <div class="main_recinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_reccontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_recrate">95%</span>
              <div class="main_recicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell3"><img src="resources/images/phantom.jpg">
            <div class="main_recinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_reccontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_recrate">95%</span>
              <div class="main_recicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
          <li class="cell3"><img src="resources/images/Rebecca.jpg">
            <div class="main_recinfo" style="display:none;">
              <button class="main_toprevieww"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰보기</button>
              <hr>
              <button class="main_topreviewr"
                style="border: none; background-color: var(--black-color);color: #fff;">리뷰작성</button>
            </div>
            <div class="main_reccontent">
              <h3 style="color: #fff;">뮤지컬 제목</h3>
              <span class="main_recrate">95%</span>
              <div class="main_recicon">
                <i class="far fa-star" id="star" style="color: yellow;"></i>
              </div>
            </div>
          </li>
        </ul>
        <div class="button-container">
          <button class="next3"><i class="arrow right3"></i></button>
        </div>
      </div>
      <script>
        const container3 = document.querySelector(".main_reccontainer");
        const prevBtn3 = document.querySelector(".prev3");
        const nextBtn3 = document.querySelector(".next3");

        (function addEvent() {
          prevBtn3.addEventListener('click', translateContainer3.bind(this, 1));
          nextBtn3.addEventListener('click', translateContainer3.bind(this, -1));
        })();

        function translateContainer3(direction) {
          const selectedBtn3 = (direction === 1) ? 'prev3' : 'next3';
          container3.style.transitionDuration = '500ms';
          container3.style.transform = `translateX(${direction * ( 4.7 )}%)`;
          container3.ontransitionend = () => reorganizeEl3(selectedBtn3);
        }

        function reorganizeEl3(selectedBtn3) {
          container3.removeAttribute('style');
          (selectedBtn3 === 'prev3') ? container3.insertBefore(container3.lastElementChild, container3
            .firstElementChild): container3.appendChild(container3.firstElementChild);
        }
        $(function () {
          $(".main_topicon").click(function () {
            $("#star").removeClass("far");
            $("#star").addClass("fas");
          })
        });
        $('.cell3').on('mouseenter', function () {
          $(this).children('.main_recinfo').show();
        }).on('mouseleave', function () {
          $(this).children('.main_recinfo').hide();
        });
      </script>

    </article>
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