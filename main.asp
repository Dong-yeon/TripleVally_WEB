<%@CodePage=65001%>
<!-- #include virtual="/include/gyu4_header.asp"-->
<!-- #include virtual="/function/essence.asp"-->
<%
Response.Cookies ("ezone").Domain = "ez-one.site"
Response.Cookies ("ezone")("MJ") = ""
Response.Cookies ("ezone")("KNU") = ""
Response.Cookies ("ezone")("CBNU") = ""
Response.Cookies ("ezone")("KIU") = ""
Response.Cookies ("ezone")("GYU") = ""
Response.Cookies ("ezone")("GYU4") = ""
Response.Cookies ("ezone")("YTB") = ""
Response.Cookies ("ezone")("KEA") = ""
Response.Cookies ("ezone")("SAMPLE") = ""
Response.Cookies ("ezone")("2021gg") = ""

DBcon.Open Application("DBInfo")
Dim strSQL, strNotice
	strSQL = "SELECT TOP 3 intSeq, strTitle FROM TB_NOTICE WITH(NOLOCK) WHERE intSchoolSeq = 13 AND blnView = 'True' ORDER BY intSeq DESC"
	'response.write strSQL
	'response.end
	Rs.Open strSQL, dbCon, 3
	If Rs.Eof=False And Rs.Bof=False Then
		Dim NoticeSeq, Title
		
		Do While Not Rs.eof
			NoticeSeq = Rs(0)
			Title = Rs(1)			
			
			strNotice = strNotice & "<li style=""height:30px;line-height:30px""><a href=""/notice/view.asp?seq="& NoticeSeq &""" style=""color:#ffffff;font-size:14px;"">"& Title &"</a></li>"
		Rs.MoveNext
		Loop
	Else
		strNotice = ""			
	End If

	Rs.close
DBcon.close
%>
<script type="text/javascript">
	function ckLogin() {
		var frm = document.login_form;

		if(frm.userid.value == "")
		{
			alert('아이디를 입력해 주세요.');
			frm.userid.focus();
			return false;
		}

		if(frm.userpw.value == "")
		{
			alert('비밀번호를 입력해 주세요.');
			frm.userpw.focus();
			return false;
		}
		return true;
	}
</script>
<div id="sub_visual">

	<!-- RANKUP_POPUP TEMPLATE_V2 -->
	<script type="text/javascript" src="../Libs/_js/rankup_popup.js"></script>
	<div id="popupTemplate" style="display:none;font-size:12px;">
		<iframe src="about:blank" style="position:absolute;width:1px;height:1px" frameborder="0"></iframe>
		<table onmousedown="rankup_popup.div_move_check(1, event, '{:popup_id:}')" style="cursor:move;visibility:hidden;position:absolute" border="0" cellpadding="1" cellspacing="1" bgcolor="#cacaca" align="center">
			<tr>
				<td bgcolor="#ffffff">
					<table width="100%" border="0" cellpadding="3" cellspacing="0" bgcolor="#f1f1f1">
						<tr>
							<td style="font-weight:bolder;color:black;padding:5px 2px 0 4px">{:popup_title:}</b></td>
						</tr>
						<tr valign="top">
							<td id="popup_content{:no:}" style="cursor:default"></td>
						</tr>
						<tr>
							<td align="right" background="../rankup_module/rankup_popup/img/dp_background.gif">
								<table border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td nowrap><input type="checkbox" name="chkbox{:no:}" id="chkbox_id{:no:}" onFocus="this.blur()" style="cursor:pointer;"></td>
										<td nowrap><label for="chkbox_id{:no:}" style="padding:2px 8px 0 0;height:14px;font-size:12px;cursor:pointer" onFocus="this.blur()">오늘하루 그만보기</label></td>
										<td nowrap><a href="javascript:rankup_popup.closeWin({:no:})"><img src="../rankup_module/rankup_popup/img/dp_bclose.gif" border="0"></a></td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>        
	
	<%If Request.cookies("ezone")("User") <> "User" Or Request.cookies("ezone")("UserSN") = "" Or Request.cookies("ezone")("SchoolSeq") = "" Then%>
	<style type="text/css">
	@import url('../design/main/tab.css');
	@import url('../design/main/visual.css');
	</style>
	
	<style type="text/css">
	#login_frame {margin-left:00px;margin-top:00px}
	</style>

	<div id="login_wrap">
		<div id="login_frame">
			<div class="login_bg">
				<form id="login_form" name="login_form" action="/member/gyu4_login_s.asp" autocomplete="off" onSubmit="return ckLogin();" method="post"> 					
					<fieldset>
						<legend>통합로그인 및 회원구분</legend>
						<h2 class="h_tit tit_bullet"><img src="../design/skin/img/common/login_tit1.png" alt="회원로그인" /></h2>
						<dl class="login_box">
							<dd class="id_input"><input type="text" id="login_id" name="userid" value="" class="input_text" tabindex="1" /></dd>
							<dd class="pw_input"><input type="password" id="login_pw" name="userpw" value="" class="input_text" tabindex="2" /></dd>
							<dd class="b_login"><input type="image" id="keyword_txt" class="submit" tabindex="3" /></dd>
							<dd class="g_find">										
								<label style="margin-right: 0px;"><input type="radio" name="userkind" value="stud" checked><font size="3">학생</font></label>
								<label><input type="radio" name="userkind" value="prof"><font size="3">취창업센터</font></label>
							</dd>
						</dl>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<!-- login_wrap End -->
	<%Else%>
	<style type="text/css">
	@import url('../design/main/tab.css');
	@import url('../design/main/visual.css');
	</style>
	
	<style type="text/css">
	#login_frame {margin-left:00px;margin-top:00px}
	</style>

	<div id="login_wrap">
		<div id="login_frame">
			<div class="login_bg">					
				<fieldset>
					<legend>로그아웃</legend>												
						<dd align="center"><a href="/member/gyu4_logout.asp"><img src="/design/skin/img/common/btn_main_logout.png" tabindex="1" /></a></dd>							
				</fieldset>				
			</div>
		</div>
	</div>
	<!-- logout_wrap End -->	
	<%End If%>
	
	<div id="visual_frame">
		<div style="<!-- background:#1a99d5; -->width:286px;padding:0px 30px 25px;text-align:left;position: absolute;top:133px;left: 50%;margin-left: -143px;">
			<ul id="tab1_frame">
				<%=strNotice%>				
			</ul>
			<div class="clear"></div>							
		</div>
		<center style="padding-bottom:20px;">
			<div id="visual_f" name="visual_f" class="visual_f" style="width:1px;height:1px;">
				<!-- 오퍼시티 형식 일때 [추가] 랭크업 류혜미 2013.03.22 -->
				<ul id="link_tab">
				</ul>

				<div id="link_wrap">
					<ul>
						<li rank="1" id="li_img_0"><a href="rankup.co.kr"><img src="/design/main/imglk.15991095246825.jpg" align="absmiddle" /></a></li>
					</ul>
				</div>                        
			</div>

			<style type="text/css">
				#main1 {
					margin: 0 -470px !important
				}
			</style>
			<style>
				#main1 {
					margin-top: 0px;
					margin-right: 0px;
					margin-bottom: 0px;
					margin-left: 0px;
				}

				#main1 {
					margin-top:0px;
					margin-right:0px;
					margin-bottom:0px;
					margin-left:0px;
				}

				#main1 > div.banner-wrap{
					margin-top:0px;
				}

				#main1 > div.banner-wrap.first{
					margin-top:0px;
				}
			</style>
			<div id="main1">
				<!-- 고정형 배너 템플릿 -->
				<style>
					#banner_22.banner-wrap {
						overflow: hidden;
						clear: both;
					}

					#banner_22.banner-wrap {
						width: 1920px;
						height: 650px;
						text-align: center;
					}

					#banner_22.banner-wrap div {
						margin-top: px;
					}

					.banner_image_0 {
						margin: 0px !important;
					}
				</style>
				<div id="banner_22" class="banner-wrap first" data-position="main1" data-type="fix">
					<div class="banner_image_0"><img src="/PEG/banner/22/7ba08c3b64ea27cdfca116e04a52e5f00446022b1621237472.png" style="width:1920px;height:650px" alt="banner" /></div>
				</div><!-- 고정형 배너 템플릿 -->
				<style>
				#banner_30.banner-wrap {
					overflow:hidden;
					clear:both;
				}

				#banner_30.banner-wrap {
					width:100%;
					height:130px;
					text-align:center;
				}

				#banner_30.banner-wrap div {
					display: inline-block;
					zoom:1;
					*display:inline;/*IE7 HACK*/
					_display:inline;/*IE6 HACK*/
					margin-left:px;
				}

				.banner_image_0 {
					margin:0px !important;
				}
				</style>
				<div id="banner_30" class="banner-wrap " data-position="main1" data-type="fix">
					<div class="banner_image_0">
						<%If Request.Cookies ("ezone")("UserKind") = "Stud" Then%>
						<a href="/lecture/default.asp?usertype=univ">
						<%Else%>
						<a href="/plecture/default.asp">
						<%End If%>
						<img src="/PEG/banner/30/7ba08c3b64ea27cdfca116e04a52e5f00446022b1621237472.png" style="width:366px;height:130px" alt="banner" /></a>
					</div>					
					<div class="banner_image_2">
						<%If Request.Cookies ("ezone")("UserKind") = "Prof" Then%>
						<a href="/professor/lecture/"><img src="/PEG/banner/30/1c6d078041684a2cd2301b48540e030bc7959ee91619673210.png" style="width:366px;height:130px" alt="banner" /></a></div>
						<%Else%>
						<img src="/PEG/banner/30/1c6d078041684a2cd2301b48540e030bc7959ee91619673210.png" style="width:366px;height:130px" alt="banner" />
						<%End If%>                            
				</div>
			</div>
		</center>
	</div><!-- visual_frame End -->      
<!-- #include virtual="/include/footer.asp"-->
<OBJECT RUNAT="SERVER" PROGID="ADODB.Connection" ID="dbCon" VIEWASTEXT></OBJECT>
<OBJECT RUNAT="SERVER" PROGID="ADODB.RecordSet" ID="Rs" VIEWASTEXT></OBJECT>
            