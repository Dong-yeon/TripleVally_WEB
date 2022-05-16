<%
Option Explicit

session.CodePage = "65001"
Response.CharSet = "utf-8"
Response.buffer = true
Response.Expires = 0

Response.Cookies ("ezone").Domain = "ez-one.site"
Response.Cookies ("ezone")("GYU4") = "Y"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <title>(주)이지-원(EZ-One)</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Script-Type" content="text/javascript" />
    <meta http-equiv="Content-Style-Type" content="text/css" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta http-equiv="keywords" content="웹프로모션,웹프로모션,웹,프로모션,검색엔진등록,검색엔진등록대행,검색엔진,홈페이지,등록,홍보,등록대행,판매,도메인,소스,과외중개사이트,링크포탈사이트,미니쇼핑몰,구인구직,전자지불무료연동,바탕화면 바로가기,솔루션,로그분석,신용카드 결제,쇼핑몰프로그램, 무료쇼핑몰, 게시판,지식판매,지식거래,컨텐츠거래,컨텐츠판매,컨텐트거래,컨텐트판매,프로그램소스, 웹프로그램, 설문조사, 그룹웨어,학원중개,학원강사, 회원관리,실명확인서비스,홈페이지제작나라,홈페이지제작게시판,홈페이지제작회사,홈페이지제작사이트,홈페이지제작정보,홈페이지제작방법,홈페이지제작업체,홈페이지제작문의,홈페이지제작닷컴,홈페이지제작하기,쇼핑몰제작, 쇼핑몰구축, 쇼핑몰솔루션, 인터넷 쇼핑몰제작 구축,홈페이지 빌더,프랜차이즈,아이디어,창업상담,신규창업,창업,부업,프랜차이즈,창업정보,신규창업,체인점,소자본창업,무점포창업,창업컨설팅,창업자료,창업서적,창업자금,창업속보" />
    <link rel="stylesheet" type="text/css" href="/Libs/_style/rankup_style.css" />
    <link rel="stylesheet" type="text/css" href="/design/skin/skin.css" />
    <link rel="stylesheet" type="text/css" href="/Libs/_style/rankup_shop.css" />
    <link rel="stylesheet" type="text/css" href="/design/site/site.css" />
    <script type="text/javascript">
        window.top.document.title = document.title
    </script>
    <script type='text/javascript'>
        var domain = "http://" + document.domain + "/"
    </script>
    <script type='text/javascript' src='/Libs/_js/require.js'></script>
    <script type='text/javascript' src='/Libs/_js/prototype.js'></script>
    <script type='text/javascript' src='/Libs/_js/jquery.min.js'></script>
    <script type="text/javascript">
        var $J = $j = jQuery.noConflict();
    </script>
    <script type='text/javascript' src='/Libs/_js/form.js'></script>
    <script type='text/javascript' src='/Libs/_js/common.js'></script>
</head>

<body>

    <div id="body_wrap">
        <div id="header" class="">
            <div id="top_frame" style="width:1100px;margin:0 auto">
                <div class="right_box">
                    <ul class="right">
                        <li class="first"><a href="/rankup_module/rankup_member/login.html">로그인</a></li>
                        <li><a href="/rankup_module/rankup_member/join_intro.html">회원가입</a></li>
                        <li><a href="/rankup_module/rankup_member/find_login_info.html">ID/PW찾기</a></li>
                        <li><a href="/etc/sitemap.html">사이트맵</a></li>
                        <li class="end"><a href="javascript:void(0)" onclick="rankup_favorite('http://ez-one.site/', '(주)이지-원(EZ-One)', this)">즐겨찾기추가</a></li>
                    </ul>
                </div><!-- right_box End -->
                <div class="clear"></div>
            </div><!-- top_frame End -->

            <div id="gnb_frame">

                <div id="gnb_box" style="width:1100px;margin:0 auto">

                    <div class="logo">
                        <table cellspacing='0' cellpadding='0' border='0'>
                            <tr>
                                <td><a href='/gyu4/main.asp' target='_self'><img src='/RAD/PEG/gyu_logo.png' width='300px' height='50px' border='0'></a></td>
                            </tr>
                        </table>
                    </div><!-- logo End -->
                    <div class="gnb_wrap" style="left: 348px;">
                        <script type="text/javascript" src="/design/skin/css_menu.js"></script>
                        <style type="text/css">
                            @import url('/design/skin/css_menu.css');
                            @import url('/design/top/gnb.css');
                        </style>
                        <div id="css_gnb_frame">
                            <div class="mm_wrap">
                                <ul class="mm">
                                    <!--<li pid="1" off="회사소개" on="회사소개" class="first " hover="" onMouseOver="css_menu.over(this)" onClick="location.href='/company/greeting.asp';">회사소개</li>//-->
									<li pid="1" off="공지사항" on="공지사항" class="first " hover="" onClick="location.href='/notice/list.asp';">공지사항</li>
                                    <li pid="81" off="창업역량강화캠프" on="창업역량강화캠프" class="" hover="" onClick="location.href='/lecture/default.asp?usertype=univ';">취업역량강화캠프</li>                                    
                                    <li pid="5" off="커뮤니티" on="커뮤니티" class="" hover="" onMouseOver="css_menu.over(this)" onClick="location.href='/notice/list.asp';">커뮤니티</li>
									<li pid="6" off="로그아웃" on="로그아웃" class="" hover="" onClick="location.href='/member/gyu4_logout.asp';">로그아웃</li>
                                </ul>
                            </div>
                            <div class="sm_box">
                                <ul class="sm s1" style="display:none">
                                    <li class="first " hover="" onClick="location.href='/company/greeting.asp';">인사말</li>
                                    <li class="" hover="" onClick="location.href='/company/history.asp';">회사연혁</li>
                                    <li class="" hover="" onClick="location.href='/company/organization.asp';">조직도</li>
                                    <li class="" hover="" onClick="location.href='/company/found.asp';">찾아오시는길</li>
                                </ul>
                            </div>
                            <div class="sm_box">
                                <ul class="sm s81" style="display:none">
                                    <li class="first " hover="" onClick="location.href='/service/high.asp';">고등학교 프로그램</li>
                                    <li class="" hover="" onClick="location.href='/service/univ.asp';">대학교 프로그램</li>
                                    <li class="" hover="" onClick="location.href='/service/company.asp';">기업체 프로그램</li>
                                </ul>
                            </div>
                            <div class="sm_box">
                                <ul class="sm s5" style="display:none">
                                    <li class="first " hover="" onClick="location.href='/notice/list.asp';">공지사항</li>
                                    <li class="" hover="" onClick="location.href='/qna/write.asp';">온라인문의</li>
									<%If Request.cookies("ezone")("User") <> "User" Or Request.cookies("ezone")("UserSN") = "" Or Request.cookies("ezone")("SchoolSeq") = "" Then%>
                                    <li class="" hover="" onClick="location.href='/member/gyu4_login.asp';">로그인</li>
									<%ElseIf Request.cookies("ezone")("GYU4") = "Y" Then%>
									<li class="" hover="" onClick="location.href='/member/gyu4_logout.asp';">로그아웃</li>
									<li class="" hover="" onClick="location.href='/member/modify.asp';">비밀번호 변경</li>
									<%Else%>
									<li class="" hover="" onClick="location.href='/member/logout.asp';">로그아웃</li>
									<li class="" hover="" onClick="location.href='/member/modify.asp';">비밀번호 변경</li>
									<%End If%>                                    
                                </ul>
								 <div class="sm_box">
                                <ul class="sm s6" style="display:none">
                                    <li class="first " hover="" onClick="location.href='/contents/online.asp';">온라인 콘텐츠제작</li>
                                    <li class="" hover="" onClick="location.href='/contents/offline.asp';">비대면 콘텐츠서비스</li>
                                </ul>
                            </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            css_menu.initialize('css_gnb_frame')
                        </script>
                    </div><!-- gnb_wrap End -->
                    <div class="clear"></div>

                </div><!-- gnb_box End -->
            </div><!-- gnb_frame End -->
        </div><!-- header End -->