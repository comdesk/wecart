<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WeCart</title>

    <link rel="shortcut icon" href="../ico/favicon.ico" type="image/x-icon">
    <link rel="icon" href="../ico/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="../resources/css/priceCompare/cart.css">
    <link rel="stylesheet" href="../resources/css/priceCompare/cart_frame.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-migrate/3.4.1/jquery-migrate.min.js"></script>
    <script src="https://kit.fontawesome.com/3a5b85a601.js" crossorigin="anonymous"></script>
    <script src="../resources/js/priceCompare/cart.js" defer></script>
    <script src="../resources/js/priceCompare/cart.js" defer></script>
</head>
<body>
    <div id="wrap">

          <% Object auth = session.getAttribute("__AUTH__"); %>
      
	      <% if(auth != null) { %>
	         <jsp:include page="../header_footer/main_header.jsp" flush="true" />
	      <% } else { %>
	         <jsp:include page="../header_footer/home_header.jsp" flush="true" />
	      <% } %>

        <div class="widthfix search_fix">    
            <div id="search">
                <div id="category">
                    <div class="cate" style="height: 50px; align-items: center;">
                        <i class="fa-solid fa-bars fa-2x"></i>
                        <span>카테고리</span>    
                        <div class="cate_hover_div" style="display: none;">
                            <ul class="cate_hover_ul nonedeco_li">
                                <li class="cate_hover_li">
                                    <div class="cate_hover_li_text">
                                        곡물가공품
                                    </div>
                                </li>
                                <li class="cate_hover_li">
                                    <div class="cate_hover_li_text">
                                        정육·난류
                                    </div>                                
                                </li>
                                <li class="cate_hover_li">
                                    <div class="cate_hover_li_text">
                                        수산가공품
                                    </div>                                
                                </li>
                                <li class="cate_hover_li">
                                    <div class="cate_hover_li_text">
                                        낙농·축산가공품
                                    </div>                                 
                                </li>
                                <li class="cate_hover_li">
                                    <div class="cate_hover_li_text">
                                        조미료·장류·식용유
                                    </div>                                 
                                </li>
                                <li class="cate_hover_li">
                                    <div class="cate_hover_li_text">
                                        채소
                                    </div>                                 
                                </li>
                                <li class="cate_hover_li">
                                    <div class="cate_hover_li_text">
                                        과자·빙과류
                                    </div>                                 
                                </li>
                                <li class="cate_hover_li">
                                    <div class="cate_hover_li_text">
                                        차·음료·주류
                                    </div>                                 
                                </li>
                                <li class="cate_hover_li">
                                    <div class="cate_hover_li_text">
                                        이미용품
                                    </div>                                 
                                </li>
                                <li class="cate_hover_li">
                                    <div class="cate_hover_li_text">
                                        세탁·주방·가사용품
                                    </div>                                 
                                </li>
                                <li class="cate_hover_li">
                                    <div class="cate_hover_li_text">
                                        생선류
                                    </div>                                 
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="search_bar">
                    <form action="/priceCompare/search" method="get">
                        <div class="search_form">
                            <input type="text" name="keyword" placeholder="검색어를 입력해주세요" class="search_input">
                            <button type="submit"class="submit_bt"><i class="fa-solid fa-magnifying-glass fa-lg"></i></button>
                        </div>                    
                    </form>                          
                </div> 
                <div>
                    <button type="button" class="mypick_bt mypick_goods"><i class="fa-regular fa-heart fa-2x"></i></button>
                    <button type="button" class="mypick_bt mypick_cart"><i class="fa-solid fa-cart-shopping fa-2x"></i></button>
                </div>             
            </div>
        </div>

        <div class="widthfix">  
            <div id="container">
                <div id="section">
                    <div class="cate_nav">
                        <ul class="cate_ul">
                            <li class="cate_nav_item">
                                <input type="radio" id="component1" name="component" value="component1">
                                <div class="cate_title">
                                    <label for="component1">곡물가공품</label>
                                    <button type="button" class="cate_nav_bt"><i class="fa-solid fa-chevron-down"></i></button>
                                </div>
                                
                                <ul class="cate_nav_ul nonedeco_li">
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">견과류</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">국수</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">냉동만두</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">당면</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">두부</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">라면</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">밀가루</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">부침가루</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">빵</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">스프</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">식빵</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">시리얼</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">즉석국</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">즉석덮밥</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">즉석밥</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">즉석죽</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">컵라면</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">컵밥</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">탕</a></li>
                                </ul>
                            </li>
                            <li class="cate_nav_item">
                                <input type="radio" id="component2" name="component" value="component2">
                                <div class="cate_title">
                                    <label for="component2">정육·난류</label>
                                    <button type="button" class="cate_nav_bt"><i class="fa-solid fa-chevron-down"></i></button>
                                </div>

                                <ul class="cate_nav_ul nonedeco_li">
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">계란</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">닭고기</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">돼지고기</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">쇠고기</a></li>
                                </ul>
                            </li>
                            <li class="cate_nav_item">
                                <input type="radio" id="component3" name="component" value="component3">
                                <div class="cate_title">
                                    <label for="component3">수산가공품</label>
                                    <button type="button" class="cate_nav_bt"><i class="fa-solid fa-chevron-down"></i></button>
                                </div>

                                <ul class="cate_nav_ul nonedeco_li">
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">맛김</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">맛살</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">어묵</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">참치캔</a></li>
                                </ul>
                            </li>
                            <li class="cate_nav_item">
                                <input type="radio" id="component4" name="component" value="component4">
                                <div class="cate_title">
                                    <label for="component4">낙농·축산가공품</label>
                                    <button type="button" class="cate_nav_bt"><i class="fa-solid fa-chevron-down"></i></button>
                                </div>

                                <ul class="cate_nav_ul nonedeco_li">
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">마가린</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">발효유</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">분유</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">소시지</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">우유</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">치즈</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">햄</a></li>
                                </ul>
                            </li>
                            <li class="cate_nav_item">
                                <input type="radio" id="component5" name="component" value="component5">
                                <div class="cate_title">
                                    <label for="component5">조미류·장류·식용유</label>
                                    <button type="button" class="cate_nav_bt"><i class="fa-solid fa-chevron-down"></i></button>
                                </div>

                                <ul class="cate_nav_ul nonedeco_li">
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">간장</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">고추장</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">된장</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">잼</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">마요네즈</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">꿀</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">설탕</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">소금</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">식용유</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">식초</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">쌈장</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">참기름</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">카레</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">케첩</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">혼합조미료</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">드레싱</a></li>
                                </ul>
                            </li>
                            <li class="cate_nav_item">
                                <input type="radio" id="component6" name="component" value="component6">
                                <div class="cate_title">
                                    <label for="component6">채소</label>
                                    <button type="button" class="cate_nav_bt"><i class="fa-solid fa-chevron-down"></i></button>
                                </div>

                                <ul class="cate_nav_ul nonedeco_li">
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">감자</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">고구마</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">깻잎</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">단무지</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">당근</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">대파</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">마늘</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">무</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">배추</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">버섯</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">상추</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">시금치</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">양배추</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">양파</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">오이</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">쪽파</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">콩나물</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">포기김치</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">풋고추</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">호박</a></li>
                                </ul>
                            </li>
                            <li class="cate_nav_item">
                                <input type="radio" id="component7" name="component" value="component7">
                                <div class="cate_title">
                                    <label for="component7">과자·빙과류</label>
                                    <button type="button" class="cate_nav_bt"><i class="fa-solid fa-chevron-down"></i></button>
                                </div>

                                <ul class="cate_nav_ul nonedeco_li">
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">감자칩</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">껌</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">모나카류아이스크림</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">빙과류</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">새우깡</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">아이스크림</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">에너지바</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">초코바</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">초코파이</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">초콜릿</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">사탕</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">비스킷</a></li>
                                </ul>
                            </li>
                            <li class="cate_nav_item">
                                <input type="radio" id="component8" name="component" value="component8">
                                <div class="cate_title">
                                    <label for="component8">차·음료·주류</label>
                                    <button type="button" class="cate_nav_bt"><i class="fa-solid fa-chevron-down"></i></button>
                                </div>

                                <ul class="cate_nav_ul nonedeco_li">
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">주스</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">차</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">두유</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">막걸리</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">맥주</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">비타민음료</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">사이다</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">생수</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">소주</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">에너지음료</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">이온음료</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">캔커피</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">커피믹스</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">콜라</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">포도주</a></li>
                                </ul>
                            </li>
                            <li class="cate_nav_item">
                                <input type="radio" id="component9" name="component" value="component9">
                                <div class="cate_title">
                                    <label for="component9">이미용품</label>
                                    <button type="button" class="cate_nav_bt"><i class="fa-solid fa-chevron-down"></i></button>
                                </div>

                                <ul class="cate_nav_ul nonedeco_li">
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">화장지</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">바디워시</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">로션</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">생리대</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">비누</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">손세정제</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">염색약</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">면도날</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">샴푸</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">종이기저귀</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">치약</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">칫솔</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">구강청결제</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">마스크</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">코로나 자가검사 키트</a></li>
                                </ul>
                            </li>
                            <li class="cate_nav_item">
                                <input type="radio" id="component10" name="component" value="component10">
                                <div class="cate_title">
                                    <label for="component10">세탁·주방·가사용품</label>
                                    <button type="button" class="cate_nav_bt"><i class="fa-solid fa-chevron-down"></i></button>
                                </div>

                                <ul class="cate_nav_ul nonedeco_li">
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">고무장갑</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">랩</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">부탄가스</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">살균소독제</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">살충제</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">섬유유연제</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">섬유탈취제</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">세정제</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">세탁세제(가루형)</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">세탁세제(액체형)</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">습기제거제</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">위생백</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">주방세제</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">키친타월</a></li>
                                </ul>
                            </li>
                            <li class="cate_nav_item">
                                <input type="radio" id="component11" name="component" value="component11">
                                <div class="cate_title">
                                    <label for="component11">생선류</label>
                                    <button type="button" class="cate_nav_bt"><i class="fa-solid fa-chevron-down"></i></button>
                                </div>

                                <ul class="cate_nav_ul nonedeco_li">
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">갈치</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">고등어</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">오징어</a></li>
                                    <li class="details_cate" style="visibility: hidden;"><a href="#">조기</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    
                    <div class="article">
                        <div class="goods_sort">
                            <ul class="nav goods_sort_ul">
                                <li class="nav_item goods_sort_li">
                                    <c:choose>
                                        <c:when test="${not empty __GOODSPAGEMAKER__.cri.keyword}">
                                            <a href="${request.requestURI}?keyword=${__GOODSPAGEMAKER__.cri.keyword}&sort=popular" class="goods_sort_a">인기순</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="${request.requestURI}?sort=popular" class="goods_sort_a">인기순</a>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                                <li class="nav_item goods_sort_li">
                                    <c:choose>
                                        <c:when test="${not empty __GOODSPAGEMAKER__.cri.keyword}">
                                            <a href="${request.requestURI}?keyword=${__GOODSPAGEMAKER__.cri.keyword}&sort=low" class="goods_sort_a">낮은 가격순</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="${request.requestURI}?sort=low" class="goods_sort_a">낮은 가격순</a>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                                <li class="nav_item goods_sort_li">
                                    <c:choose>
                                        <c:when test="${not empty __GOODSPAGEMAKER__.cri.keyword}">
                                            <a href="${request.requestURI}?keyword=${__GOODSPAGEMAKER__.cri.keyword}&sort=high" class="goods_sort_a">높은 가격순</a>
                                        </c:when>
                                        <c:otherwise>
                                            <a href="${request.requestURI}?sort=high" class="goods_sort_a">높은 가격순</a>
                                        </c:otherwise>
                                    </c:choose>
                                </li>
                            </ul>
                        </div>
                                             
                        <div class="goods_img_tbl">
                            <c:forEach var="list" items="${__GOODSLIST__}">   
                                <a href="/priceCompare/showPrd/${list.goods_id}" class="goods_img_a">
                                    <div class="goods_img">
                                        <div class="goods_img_content">
                                            <img src="${list.goods_pic}" alt="${list.goods_name}">
                                        </div>
                                        
                                    </div>
                                    <div class="goods_img_title">
                                        <span class="goods_name">${list.goods_name}</span>
                                        
                                        <div class="goods_img_price">
                                            <span class="lowest_price">최저</span>
                                            <span class="price_won">
                                                <span class="goods_price won"><fmt:formatNumber value="${list.low_price}" pattern="#,##0" /></span>
                                                <span class="won">원</span>
                                            </span>
                                            
                                        </div>
                                    </div>
                                </a>   
                            </c:forEach>                   
                        </div>                        

                        <div class="page_index">
                            <c:set var="currPage" value="${not empty param.currPage ? param.currPage : 1}"/>
                            <!-- 1. first -->
                            <a  data-temp="${__GOODSPAGEMAKER__.cri.setCurrPage(1)}"
                                href="${request.requestURI}${__GOODSPAGEMAKER__.cri.pagingUri}" 
                                class="page_index_item"><i class="fa-solid fa-angles-left"></i></a>

                            <!-- 2. prev -->
                            <a  data-temp="${__GOODSPAGEMAKER__.cri.setCurrPage(currPage eq 1 ? 1 : currPage - 1)}"
                                href="${request.requestURI}${__GOODSPAGEMAKER__.cri.pagingUri}" class="page_index_item"><i class="fa-solid fa-angle-left"></i></a>

                            <!-- 3. 페이지번호 목록 -->
                            <c:forEach var="pageNum" begin="${__GOODSPAGEMAKER__.startPage}" end="${__GOODSPAGEMAKER__.endPage}">
                                <a data-temp="${__GOODSPAGEMAKER__.cri.setCurrPage(pageNum)}"
                                   href="${request.requestURI}${__GOODSPAGEMAKER__.cri.pagingUri}" 
                                   class="page_index_item ${currPage eq pageNum ? 'currPage' : ''}">
                                   ${pageNum}
                                </a>
                            </c:forEach>

                            <!-- 4. next -->
                            <a  data-temp="${__GOODSPAGEMAKER__.cri.setCurrPage(currPage eq __GOODSPAGEMAKER__.realEndPage ? __GOODSPAGEMAKER__.realEndPage : currPage + 1)}"
                                href="${request.requestURI}${__GOODSPAGEMAKER__.cri.pagingUri}" class="page_index_item"><i class="fa-solid fa-angle-right"></i></a>

                            <!-- 5. last  -->
                            <a  data-temp="${__GOODSPAGEMAKER__.cri.setCurrPage(__GOODSPAGEMAKER__.realEndPage)}"
                                href="${request.requestURI}${__GOODSPAGEMAKER__.cri.pagingUri}" 
                                class="page_index_item"><i class="fa-solid fa-angles-right"></i></a>    
                        </div>
                    </div>                   
                </div>
            </div>
        </div>
        <a href="#TOP" id="top_bt">
            <i class="fa-solid fa-arrow-up fa-lg"></i>
        </a>

        <jsp:include page="../header_footer/footer.jsp" flush="true" />
    </div>
</body>
</html>
