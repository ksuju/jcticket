<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 82109
  Date: 2024-02-01
  Time: 오전 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/login/login.css">
</head>
<body>
<div class="loginpage">
    <!-- 헤더 시작 -->
    <div class="login-header">
        <div class="login-headerArea">
            <h1>
                <a href="/" class="login-top-left" >
                    <img src="/resources/img/components/로고1.png" alt="JC TICKET" >
                </a>
                <span class="login-top-center">로그인</span>
            </h1>
            <div class="login-top-right">
                <a href="/signup" class="signup-logo">
                    <span class="signup-wrap"> 회원가입</span>
                </a>
            </div>
        </div>
    </div>
    <!-- 헤더 끝 -->

    <!-- 콘텐트영역 시작 -->
    <div class="login-content">
        <div class="login-form-wrap">
            <!-- 로그인 유저/기획사 선택 탭 시작 -->
            <div id="userAgency_Tab">
                <ul id="ulTab">
                    <li id="userTab">
                        <a id="userTabA" href="javascipt:void(0)">
                            <span class="tabTxt">회원 로그인</span>
                        </a>
                    </li>
                    <li id="agencyTab">
                        <a id="agencyTabA" href="javascipt:void(0)">
                            <span class="tabTxt">기획사 로그인</span>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- 로그인 유저/기획사 선택 탭 끝 -->
            <div class="loginForm">
                <!-- 회원 로그인 영역 시작 -->
                <div class="memLoginForm">
                    <form action="<c:url value="/login"/>" method="POST" name="LoginSub" autocomplete="off"/>
                        <fieldset class="formFieldSet">
                                <span id = spanMemID>
                                    <label for="SMemID">아이디</label>
                                    <input id="SMemID" name="user_id" type="text" value="${cookie.user_id.value}" autocomplete="off" placeholder="아이디">
                                </span>
                                <c:if test = "${param.user_id==''}">
                                    <div class="idEmpty">아이디를 입력해주세요</div>
                                </c:if>


                                <span id = spanMemPWD>
                                        <label for="SMemPWD">패스워드</label>
                                        <input id="SMemPWD" name="user_pwd" type="password" autocomplete="off" placeholder="비밀번호">
                                </span>

                                <c:if test = "${param.user_pwd==''}">
                                    <div class="pwdEmpty">비밀번호를 입력해주세요</div>
                                </c:if>
                            <div class="loginForm-chk">
                                    <span class="loginKeep">
                                        <label for="chkAutoLogin">
                                            로그인 상태 유지
                                        </label>
                                        <input id="chkAutoLogin" name="AutoLogin" type="checkbox" autocapitalize="off" class="iptChk" style="zoom: 1.5;">
                                    </span>
                                <span class="loginKeep">
                                        <label for="chkrememberID">
                                            아이디 저장
                                        </label>
                                        <input id="chkrememberID" name="rememberId" type="checkbox" autocapitalize="off" class="iptChk" style="zoom: 1.5;"
                                         value="on" ${empty cookie.user_id.value ? "":"checked"}>
                                    </span>
                            </div>
                            <button id="loginBtn" title="로그인">
                                    <span class="btnWrap">
                                        <em class="txt">로그인</em>
                                    </span>
                            </button>
                        </fieldset>
                    </form>

                    <!-- 아이디 비번 찾기영역 시작-->
                    <div class="loginEtc">
                        <a href="아이디 찾기페이지" class="lnk_etc">아이디 찾기</a>
                        <a href="비밀번호 찾기페이지" class="lnk_etc">비밀번호 찾기</a>
                    </div>
                    <!-- 아이디 비번 찾기영역 끝 -->

                    <!-- 소셜 로그인 영역 시작  -->
                    <ul class="loginSocial">
                        <li class="loginNaver">
                            <a href="네이버로그인페이지" class="btn_social">
                                    <span class="socialWrap">
                                        <em class="social_icon_naver">
                                            <img src="/resources/img/login/네이버.png" class="naver_icon">
                                        </em>
                                        <em class="txt">네이버 아이디로 로그인</em>
                                    </span>
                            </a>
                        </li>
                        <li class="loginKakao">
                            <a href="카카오로그인페이지" class="btn_social">
                                    <span class="socialWrap">
                                        <em class="social_icon_kakao">
                                            <img src="/resources/img/login/카카오.png" class="kakao_icon" style="width: 22px; height: 21px;">
                                        </em>
                                        <em class="txt">카카오 아이디로 로그인</em>
                                    </span>
                            </a>
                        </li>
                        <li class="loginGoogle">
                            <a href="구글로그인페이지" class="btn_social">
                                    <span class="socialWrap">
                                        <em class="social_icon_google">
                                            <img src="/resources/img/login/구글.png" class="google_icon" style="width: 22px; height: 21px;">
                                        </em>
                                        <em class="txt">구글 아이디로 로그인</em>
                                    </span>
                            </a>
                        </li>
                    </ul>
                    <!-- 소셜 로그인 영역 끝 -->

                    <%--로그인 실패 팝업창 시작--%>
                    <c:if test="${param.user_id!='' and param.user_pwd!='' and param.user_pwd!=param.boardDtoPWD}">
                        <div class="maskUI">
                        <div id="loginFailPop" >
                        <div class="jcPopUp">
                            <div class="popUpArea">
                                <div class="popUpAreaTitle">
                                    <h1>로그인 실패</h1>
                                </div>
                                <div class="popUpAreaContent">
                                    <p class="contentP">
                                        등록되지 않은 아이디이거나 또는 비밀번호를 잘못 입력하셨습니다.
                                        <br>
                                        <br>
                                        로그인을 여러번 실패하시면 고객님의 정보 보호를 위해 서비스 이용이 차단될 수 있습니다.
                                    </p>
                                    <div class="popUp_btn">
                                        <a href="javascipt:void(0)" class="popUpClose">
                                            <span class="closeButtonWrap">
                                                확인
                                            </span>
                                        </a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                        </div>
                    </c:if>

                </div>
                <%--회원 로그인 영역 끝--%>

                <%--기획사 로그인 시작--%>
                <div class="agencyLoginForm" style="display: none">
                    <form action="/agencyLogin" method="POST" name="loginAgency" autocomplete="off">
                        <fieldset class="formFieldSet">
                            <span id="spanAgencyID">
                                <label for="SAgencyID">아이디</label>
                                <input id="SAgencyID" name="agency_id" type="text" value autocomplete="off" placeholder="기획사 아이디">
                            </span>
                            <span id="spanAgencyPWD">
                                <label for="SAgencyPWD">비밀번호</label>
                                <input id="SAgencyPWD" name="agency_pwd" type="password" autocomplete="off" placeholder="기획사 비밀번호">
                            </span>
                            <div class="agencyChk" style="display: block;">
                                <span class="aLoginKeep">
                                    <label for="aChkAutoLogin">로그인 상태 유지</label>
                                    <input id="aChkAutoLogin" name="aAutoLogin" type="checkbox" autocapitalize="off" class="aIptChk" style="zoom:1.5;">
                                </span>
                                <span class="aLoginKeep">
                                    <label for="aChkRememberID">아이디 저장</label>
                                    <input id="aChkRememberID" name="aRememberId" type="checkbox" autocapitalize="off" class="aIptChk" style="zoom: 1.5;">
                                </span>
                            </div>
                            <button id="aLoginBtn" title="기획사 로그인">
                                <span class="aBtnWrap">
                                    <em class="txt">로그인</em>
                                </span>
                            </button>
                        </fieldset>
                    </form>
                </div>

            </div>

            <!-- 로그인화면 포스터 시작 -->
            <div class="adArea">
                <div class="ad">
                    <img src="/resources/img/login/로그인화면_포스터.png" class="ad_img">
                </div>
            </div>
        </div>
    </div>
    <!-- 로그인 화면 하단배너 시작 -->
    <div id = loginBotBn>
        <img src="/resources/img/login/로그인_하단배너.gif">
    </div>
    <!-- 로그인 화면 하단배너 끝 -->

    <!-- 로그인 화면 Footer 시작 -->
    <div class="login-footer">
        <div class="login-bottom-copyright">
            <address>
                Copyright ©
                <strong>JC TICKET Corp.</strong>
                All Rights Reserved.
            </address>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>

<script>
    let user_id = "${param.user_id}";
    let user_pwd = "${param.user_pwd}";
    let boardDtoPWD = "${param.boardDtoPWD}"
        // $('#loginBtn').on('click', formCheck)
        //
        // function formCheck(){
        //
        //     if (user_id == "") {
        //         $('#spanMemID').css("border-color", "red")
        //     }
        //
        //     if (user_pwd == "") {
        //         $('#spanMemPWD').css("border-color", "red")
        //     }
        // }

    // $('#loginBtn').on('click', formCheck)
    //
    // function formCheck(){
    //
    //     if (user_id == "") {
    //         alert("아이디를 입력해주세요")
    //     }
    //
    //     if (user_pwd == "") {
    //         alert("비밀번호를 입력해주세요")
    //     }
    // }
    
    $('.closeButtonWrap').click(function (){
        $('.maskUI').toggle();
    })

    $('#userTab').click(function (){
        $('.memLoginForm').css('display','block')
        $('.agencyLoginForm').css('display','none')
        $('#userTabA').css('border','solid 1.5px black')
        $('#agencyTabA').css('border','solid 1.0px black')
    })

    $('#agencyTab').click(function (){
        $('.agencyLoginForm').css('display','block')
        $('.memLoginForm').css('display','none')
        $('#agencyTabA').css('border','solid 1.5px black')
        $('#userTabA').css('border','solid 1.0px black')
    })
</script>
</body>
</html>