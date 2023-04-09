<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WeCart</title>

    <link rel="shortcut icon" href="ico/favicon.ico" type="image/x-icon">
    <link rel="icon" href="ico/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="/resources/css/mypageCart/list.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.1/jquery-migrate.min.js"></script>
    <script src="https://kit.fontawesome.com/3a5b85a601.js" crossorigin="anonymous"></script>

</head>

<body>
    <div id="wrap">
        <div class="widthfix header_color">
            <div id="header">
                <span>우리동네<br>장바구니</span>
                <div id="gnb">
                    <ul class="nav gnb">
                        <li class="nav_item gnb_li"><a href="#" class="nav_text">가격비교</a></li>
                        <li class="nav_item gnb_li"><a href="#" class="nav_text">커뮤니티</a> </li>
                        <li class="nav_item gnb_li"><a href="#" class="nav_text">QNA</a></li>
                    </ul>
                </div>

                <div id="info">
                    <ul class="nav">
                        <li class="nav_item"><span class="nav_text">개포동</span></li>
                        <li class="nav_item"><button onclick=window.location.href='#' id="login_bt">로그인</button></li>
                    </ul>
                </div>
            </div>
        </div>

        <article class="article">

            <div id="mypage_nav">
                <ul class="mypage_nav_ul">
                    <li class="mypage_nav_li"><a href="#" class="nav_text">마이페이지</a></li>
                    <li class="mypage_nav_li"><a href="#" class="nav_text">개인정보 수정</a></li>
                    <li class="mypage_nav_li"><a href="#" class="nav_text">장바구니 목록</a></li>
                    <li class="mypage_nav_li"><a href="#" class="nav_text">찜한 상품</a></li>
                    <li class="mypage_nav_li"><a href="#" class="nav_text">즐겨찾는 마트</a></li>
                    <li class="mypage_nav_li"><a href="#" class="nav_text">내 활동 내역</a></li>
                    <li class="mypage_nav_li"><a href="#" class="nav_text">키워드알림</a></li>
                    <li class="mypage_nav_li"><a href="#" class="nav_text">활동알림</a></li>
                    <li class="mypage_nav_li"><a href="#" class="nav_text">채팅 내역</a></li>
                    <li class="mypage_nav_li"><a href="#" class="nav_text">북마크 내역</a></li>
                </ul>
            </div>

            <div id="content">
                <div>
                    <p>
                        <select id="selectedPeriod">
                            <option value="1week">일주일</option>
                            <option value="1">1개월</option>
                            <option value="3">3개월</option>
                            <option value="6">6개월</option>
                        </select>
                    </p>

                    <table class="shoppingBasketList">
                        <tbody>
                            <tr>
                                <td><img src="/resources/imgs/mypageCart/waterMelon.PNG" alt="prdPicture"></td>

                                <td>
                                    <h3>장바구니 번호: 1 </h3><br>
                                    장바구니 등록일: 230326<br>
                                    상품명: 수박 외 5건 <br><br>

                                    <p><a href="/priceCompare/showPrd">상세보기 </a> </p>

                                </td>
                            </tr>

                            <tr>
                                <td><img src="/resources/imgs/mypageCart/waterMelon.PNG" alt="prdPicture"></td>

                                <td>
                                    <h3>장바구니 번호: 2 </h3><br>
                                    장바구니 등록일: 230326<br>
                                    상품명: 수박 외 5건 <br><br>

                                    <p><a href="/priceCompare/showPrd">상세보기 </a> </p>

                                </td>

                            <tr>
                                <td><img src="/resources/imgs/mypageCart/waterMelon.PNG" alt="prdPicture"></td>

                                <td>
                                    <h3>장바구니 번호: 3 </h3><br>
                                    장바구니 등록일: 230326<br>
                                    상품명: 수박 외 5건 <br><br>

                                    <p><a href="/priceCompare/showPrd">상세보기 </a> </p>

                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </article>



        <div class="widthfix">
            <div id="footer">

            </div>
        </div>
    </div>

    <script>

        var urlParams = new URLSearchParams(window.location.search);
        var selectedPeriod = document.getElementById("selectedPeriod");
        var id = urlParams.get("selectedPeriod");

        console.log(id);

        const selectedPeriod = document.getElementById("selectedPeriod");
        const shoppingBasketList = document.getElementById("shoppingBasketList");

        selectedPeriod.addEventListener("mousedown", function () {
            var xhr = new XMLHttpRequest();
            var url = "shoppingBasketList.html?selectedPeriod=" + selectedPeriod.value;

            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    dataTable.innerHTML = xhr.responseText;
                }
            }

            xhr.open("GET", url, true);
            xhr.send();

            // window.location.href = "shoppingBasketList.html?selectedPeriod=" + selectedPeriod.value;
        });



    </script>
</body>

</html>