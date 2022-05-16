<%@CodePage=65001%>
<!-- #include virtual="/include/gyu4_header.asp"-->
<script type="text/javascript">
	function ckLogin() {
		var frm = document.login_form;

		if(frm.userID.value == "")
		{
			alert('아이디를 입력해 주세요.');
			frm.userID.focus();
			return false;
		}

		if(frm.userPW.value == "")
		{
			alert('비밀번호를 입력해 주세요.');
			frm.userPW.focus();
			return false;
		}
		return true;
	}
</script>
<div id="sub_visual">
    <center>
        <div style="position:relative;z-index:0;width:1900px;margin:0 -460px"><img src="/design/page/topb.15955693931095.jpg" align="absmiddle" /></div>
    </center>
</div>
<!--sub_visual End -->
<div id="container_wrap">

    <div id="content_wrap">

        <div id="contents" class="content_full">


            <div id="con_top_box">
                <h3 class="h_title">
                    <div class="sub_h3 tcolor">로그인</div>
                </h3>
                <p class="con_navi"><img src="/design/skin/img/b_home.png" alt="홈" />home > 커뮤니티 > <span class="on_navi tcolor">로그인</span></p>
            </div><!-- con_top_box End -->

            <div id="p_content_box">


                <form id="login_form" name="login_form" action="/member/gyu4_login_s.asp" autocomplete="off" onSubmit="return ckLogin();" method="post">                    
                    <table width="100%" cellpadding="0" cellspacing="0" border="0" align="center">
                        <tr>
                            <td height="30"></td>
                        </tr>
                        <tr>
                            <td align="center"><img src="/rankup_module/rankup_member/img/join6.png" alt="로그인" /></td>
                        </tr>
                        <tr>
                            <td height="20" align="center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td>
                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <tr>
                                                    <td align="center" bgcolor="#ebebeb">
                                                        <table border="0" cellpadding="0" cellspacing="0" width="90%">
															<tr>
																<td height="50" align="center" colspan="5">
																	<input id="smode_member" name="userkind" type="radio" value="stud"  checked><label for="smode_member">학생</label>
																	<input id="smode_prof" name="userkind" type="radio" value="prof" style="margin-left: 10px;"><label for="smode_prof">교수</label>
																</td>
															</tr>
                                                            <tr>
                                                                <td width="115" height="25" align="left" valign="middle">
                                                                    <font color="#757575" style="font-size:11px;font-family:tahoma;letter-spacing:1px"><b>ID</b></font>
                                                                </td>
                                                                <td align="left" valign="middle"><input type="text" id="userid" name="userid" required hname="아이디" option="userid" style="width:300px;height:16px" value="" class="simpleform" tabindex="1"></td>
                                                                <td width="20" align="left" valign="middle"></td>
                                                                <td width="60" rowspan="2" align="left" valign="middle"><input type="image" src="/rankup_module/rankup_member/img/login_btn.gif" tabindex="3" type="image" alt="로그인"></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="25" align="left" valign="middle">
                                                                    <font color="#757575" style="font-size:11px;font-family:tahoma;letter-spacing:1px"><b>PASSWORD</b></font>
                                                                </td>
                                                                <td align="left" valign="middle"><input type="password" id="userpw" name="userpw" required hname="비밀번호" style="width:300px;height:16px" value="" class="simpleform" tabindex="2"></td>
                                                                <td width="20" align="left" valign="middle"></td>
                                                            </tr>
                                                            <tr>
                                                                <td height="30" colspan="5"></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="20"></td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#ebebeb">
											<table border="0" cellpadding="0" cellspacing="0" width="90%">
												<tr>
													<td height="80" style="padding-left:30px;">
														<font color="#000000" style="font-size:11px">
															<b>
															- 아이디 및 비밀번호는 영문 대소문자를 구별하오니 입력 시 주의하시기 바랍니다.<br />
															- 예) 학생 : 아이디 gyu4+학번, 초기비밀번호 0000<br />
															- 예) 교수 : 아이디 gyu4+교번, 초기비밀번호 0000
															</b>
														</font>
													</td>
												</tr>
											</table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="20"></td>
                                    </tr>
                                    <tr>
                                        <td><a href="/member/idpw.asp"><img src="/rankup_module/rankup_member/img/bt_find.png" alt="아이디,비밀번호찾기" border="0"></a> <!--<img src="/rankup_module/rankup_member/img/line.png" /> <a href="join_intro.html"><img src="/rankup_module/rankup_member/img/bt_join.png" alt="회원가입하기" border="0"></a>//--></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td height="30"></td>
                        </tr>
                    </table>
                </form>


                <script type="text/javascript">
                    //<![CDATA[
                    var $login = Object.clone($form);
                    $login.url = domain + 'mypage';
                    $login.hashes = {
                        mode: 'login'
                    }
                    $login.handler = function(trans) {
                        proc.response(trans)
                    };
                    //]]>
                </script>

            </div><!-- p_content_box End -->
        </div><!-- contents End -->
        <div class="clear"></div>
    </div><!-- content_wrap End -->

    <div id="quick_banner">
        <style>
            #quick {
                margin-top: 0px;
                margin-right: 0px;
                margin-bottom: 0px;
                margin-left: 0px;
            }

            #quick>div.banner-wrap {
                margin-top: 0px;
            }

            #quick>div.banner-wrap.first {
                margin-top: 0px;
            }
        </style>
        <div id="quick">
            <!-- 고정형 배너 템플릿 -->
            <style>
                #banner_7.banner-wrap {
                    overflow: hidden;
                    clear: both;
                }

                #banner_7.banner-wrap {
                    width: 80px;
                    height: 180px;
                    text-align: left;
                }

                #banner_7.banner-wrap div {
                    margin-top: px;
                }

                .banner_image_0 {
                    margin: 0px !important;
                }
            </style>
            <div id="banner_7" class="banner-wrap first" data-position="quick" data-type="fix">
                <div class="banner_image_0">
                    <p><span class="quick_tit bcolor_b">QUICK MENU</span></p>
                    <p><a href="/qna/write.asp"><img src="/wysiwyg/PEG/W_1595569569.jpg"></a></p>                   
                </div>
            </div>
        </div>       
    </div><!-- quick_banner -->
    <script type="text/javascript">
        quick_banner.initialize('content_wrap', 'quick_banner')
    </script>

</div><!-- container_wrap End -->

<!-- #include virtual="/include/footer.asp"-->
<!-- #include virtual="/include/footer.asp"-->