<%--
  Created by IntelliJ IDEA.
  User: 82109
  Date: 2024-02-28
  Time: 오전 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/components/header.css">
    <link rel="stylesheet" href="/resources/css/category/category.css">
    <link rel="stylesheet" href="/resources/css/components/index.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>
<body>
<%--<jsp:include page="../common/header.jsp"></jsp:include>--%>
<div class="top-wrap">
    <%-- 헤더시작 --%>
    <header class="play-top" id = "play-top">
        <!-- 좌측 -->
        <div class="play-top-left">
            <a href="/" class="top-main-logo">
                <img src="/resources/img/components/로고1.png" alt class="fixed"/>
                <img src="/resources/img/components/로고2.png" alt class="trans"/>
            </a>
        </div>
        <!-- 가운데 -->
        <div class="play-top-center" style="left : 500px; transform: none;">
            <a href="/concert">콘서트
                <span class="concert-sp"></span>
            </a>
            <a href="/musical">뮤지컬
                <span class="musical-sp" style="width: 72px; left: 172px"></span>
            </a>
            <a href="/play">연극
                <span class="play-sp"></span>
            </a>
            <a href="/classic">클래식
                <span class="classic-sp"></span>
            </a>
        </div>
        <!-- 오른쪽 -->
        <div class="play-top-right">
            <a href="/mypageIndex" class="my-page">
                <img src="/resources/img/components/마이페이지_흑.png" class="mp_icon">
            </a>
            <a href="/notice/paging" class="notice">
                <img src="/resources/img/components/공지사항_흑.png" class="notice_icon">
            </a>
            <c:choose>
                <c:when test="${empty sessionScope.sessionId}">
                    <!-- 로그인 상태가 아니면(세션이 없으면) 로그인 링크를 보여줌 -->
                    <a href="/login" class="login">
                        <img src="/resources/img/components/로그인_흑.png" class="login_icon">
                    </a>
                </c:when>
                <c:otherwise>
                    <!-- 로그인 상태이면(세션이 있으면) 로그아웃 링크를 보여줌 -->
                    <a href="/logout" class="logout" style="width: 22px;">
                        <img src="/resources/img/components/로그아웃_흑.png" class="logout_icon">
                    </a>
                </c:otherwise>
            </c:choose>
        </div>
    </header>
</div>
<hr>
<div class="m2-kv-hidden">
    <div class="m2-kv-wrap">
        <div class="m2-kv">
            <div class="swiper-container m2-kvs">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="공연상세페이지" target="_self">
                            <img src="/resources/img/index/test1.png">
                            <div class="m2-kvs-txt">
                                <p class="m2-kvs-tit">공연명1</p>
                                <p class="m2-kvs-detail">공연시간</p>
                            </div>
                        </a>
                    </div>

                    <div class="swiper-slide">
                        <a href="공연상세페이지" target="_self">
                            <img src="/resources/img/index/test2.png">
                            <div class="m2-kvs-txt">
                                <p class="m2-kvs-tit">공연명2</p>
                                <p class="m2-kvs-detail">공연시간</p>
                            </div>
                        </a>
                    </div>

                    <div class="swiper-slide">
                        <a href="공연상세페이지" target="_self">
                            <img src="/resources/img/index/test1.png">
                            <div class="m2-kvs-txt">
                                <p class="m2-kvs-tit">공연명3</p>
                                <p class="m2-kvs-detail">공연시간</p>
                            </div>
                        </a>
                    </div>

                    <div class="swiper-slide">
                        <a href="공연상세페이지" target="_self">
                            <img src="/resources/img/index/test2.png">
                            <div class="m2-kvs-txt">
                                <p class="m2-kvs-tit">공연명4</p>
                                <p class="m2-kvs-detail">공연시간</p>
                            </div>
                        </a>
                    </div>

                    <div class="swiper-slide">
                        <a href="공연상세페이지" target="_self">
                            <img src="/resources/img/index/test1.png">
                            <div class="m2-kvs-txt">
                                <p class="m2-kvs-tit">공연명5</p>
                                <p class="m2-kvs-detail">공연시간</p>
                            </div>
                        </a>
                    </div>

                    <div class="swiper-slide">
                        <a href="공연상세페이지" target="_self">
                            <img src="/resources/img/index/test2.png">
                            <div class="m2-kvs-txt">
                                <p class="m2-kvs-tit">공연명6</p>
                                <p class="m2-kvs-detail">공연시간</p>
                            </div>
                        </a>
                    </div>
                </div>
                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
            </div>
        </div>
    </div>
    <div class="swiper-button-next m2-kvs" tabindex="0" role="button" aria-label="Next slide"></div>
    <div class="swiper-button-prev m2-kvs" tabindex="0" role="button" aria-label="Previous slide"></div>
    <div class="swiper-pagination"></div>
</div>

<section class="sec04">
    <p class="cont-tit num6l">
        <img src="/resources/img/category/뮤지컬.png" alt>
    </p>

    <div class="wing-wrap">
        <div class="wing-list" id="divGenre_N_A0-006-01">
            <a href="musical/play 항목 1">
                <div class="wing-box">
                    <img src="/resources/img/index/test1.png" alt class="lazyload">
                    <div class="wing-list-txt">
                        <p class="wlist-tit">공연명</p>
                    </div>
                </div>
            </a>

            <a href="musical/play 항목 2">
                <div class="wing-box">
                    <img src="/resources/img/index/test2.png" alt class="lazyload">
                    <div class="wing-list-txt">
                        <p class="wlist-tit">공연명</p>
                    </div>
                </div>
            </a>

            <a href="musical/play 항목 3">
                <div class="wing-box">
                    <img src="/resources/img/index/test1.png" alt class="lazyload">
                    <div class="wing-list-txt">
                        <p class="wlist-tit">공연명</p>
                    </div>
                </div>
            </a>

            <a href="musical/play 항목 4">
                <div class="wing-box">
                    <img src="/resources/img/index/test2.png" alt class="lazyload">
                    <div class="wing-list-txt">
                        <p class="wlist-tit">공연명</p>
                    </div>
                </div>
            </a>

            <a href="musical/play 항목 5">
                <div class="wing-box">
                    <img src="/resources/img/index/test1.png" alt class="lazyload">
                    <div class="wing-list-txt">
                        <p class="wlist-tit">공연명</p>
                    </div>
                </div>
            </a>

        </div>
    </div>
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/6.8.4/swiper-bundle.min.js"></script>
<script src="/resources/js/category/category.js"></script>

</html>