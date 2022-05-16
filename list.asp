<%@CodePage=65001%>
<!-- #include virtual="/include/header.asp"-->
<!-- #include virtual="/function/essence.asp"-->
<%
Dim Page
If Request.QueryString("page") = "" Then
	Page = "1"
Else
	Page = ParmCheck(Request.QueryString("page"))
End If

Dim PageName
PageName = "/notice/list.asp"

Dim SearchYN, SearchType, SearchWord
SearchYN = ParmCheck(Request("searchYN"))
SearchType = ParmCheck(Request("searchType"))
SearchWord = ParmCheck(Request("searchWord"))
%>
<script type="text/javascript">
	function changePage(gourl, gopage) {	
		document.location.href="" +gourl + "?page=" + gopage + "&searchYN=<%=SearchYN%>&searchType=<%=SearchType%>&searchWord=<%=SearchWord%>";
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
                    <div class="sub_h3 tcolor">공지사항</div>
                </h3>
                <p class="con_navi"><img src="/design/skin/img/b_home.png" alt="홈" />home > 커뮤니티 > <span class="on_navi tcolor">공지사항</span></p>
            </div><!-- con_top_box End -->

            <div id="p_content_box">


                <table width="100%" cellpadding="0" cellspacing="0" border="0" align="center">
                    <tr>
                        <td>

                            <link rel="stylesheet" type="text/css" href="/rankup_module/rankup_board/skin/board/color/basic/skin_style.css">
                            <table border="0" cellpadding="0" cellspacing="0" align="right" style="width:940px;overflow:hidden;">
                                <tr>
                                    <td>
                                        <!-- 리스트 -->
                                        <table border="0" cellpadding="0" cellspacing="0" width="100%">										
                                            <tr>
                                                <td>
                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        <thead id="div_article_column" align="center">
                                                            <tr align="center" height="30" class="t_bgcolor">                                                                
                                                                <th>제 목</th>
                                                                <th width="100">작성자</th>
                                                                <th width="100">조회수</th>
                                                                <th width="100">작성일</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="div_article_contents" class="table_bgcolor">
														<%
														DBcon.Open Application("DBInfo")
														Dim strSearch, strDateSearch
														
														If SearchYN = "Y" Then		
															If SearchType = "title" And SearchWord <> "" Then
																strSearch = " AND strTitle like '%"& SearchWord &"%'"
															End If								
														End If

														Dim strSQL
															strSQL = "SELECT intSeq, strTitle, dtRegDate, intHit, blnView FROM TB_NOTICE WITH(NOLOCK) WHERE blnView = 'True' AND "
															If Request.Cookies ("ezone")("MJ") = "Y" Then
															strSQL = strSQL & "intSchoolSeq = 4 "		
															ElseIf Request.Cookies ("ezone")("KNU") = "Y" Then
															strSQL = strSQL & "intSchoolSeq = 6 "	
															ElseIf Request.Cookies ("ezone")("GYU") = "Y" Then
															strSQL = strSQL & "intSchoolSeq = 11 "
                                                            ElseIf Request.Cookies ("ezone")("GYU4") = "Y" Then
															strSQL = strSQL & "intSchoolSeq = 22 "	
															ElseIf Request.Cookies ("ezone")("KEA") = "Y" Then
															strSQL = strSQL & "intSchoolSeq = 17 "	
															Else
															strSQL = strSQL & "intSchoolSeq = 99 "	
															End If
															strSQL = strSQL & strSearch
															strSQL = strSQL & "ORDER BY intSeq DESC"
															
															'response.write strSQL
															'response.end
															
															Rs.Open strSQL, dbCon, 3
															If Rs.Eof=False And Rs.Bof=False Then
																Dim Seq, Title, RegDate, Hit, ViewYN, ChkYN
																Dim RsCount, i
																Dim totalpage
																Dim pageSize : PageSize = 15
																Rs.PageSize = pageSize
																totalpage = Rs.PageCount
																Rs.AbsolutePage = Page
																RsCount = Rs.RecordCount

																i = 1
																Do While Not Rs.eof and i <= PageSize
																	Seq = Rs(0)
																	Title = Rs(1)										
																	RegDate = Rs(2)
																	Hit = Rs(3)
																	ViewYn = Rs(4)

																	ChkYN = ""
																	If ViewYn = True Then ChkYN = "checked" End If
																	
																	Response.Write "<tr height=""30"" align=""center""><td align=""left"" nowrap>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color=""#323232""><a href=""/notice/view.asp?seq="& Seq &"&page="& Page &""">"& Title &"</td>  <td>관리자</td><td>"& Hit &"</td><td>"& LEFT(RegDate,10) &"</td></tr><tr height=""1""><td bgcolor=""#ebebeb"" colspan=""10""></td></tr>"
															
																		i = i + 1
																		Rs.MoveNext
																		Loop

																	Else
																		Response.Write "<tr><td class='center' colspan='6'>등록된 게시물이 없습니다.</td></tr>"
																	End If

																	Rs.close
																DBcon.close
															%>                                                            
                                                        </tbody>
                                                    </table>
                                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                        <tr>
                                                            <td height="1" class="bcolor_b"></td>
                                                        </tr>
														<!--#Include Virtual = "/common/paging.asp" -->										
                                                    </table>
                                                </td>
                                            </tr>					
                                        </table>
                                    </td>
                                </tr>						
                            </table>
                        </td>
                    </tr>
                </table>
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
<OBJECT RUNAT="SERVER" PROGID="ADODB.Connection" ID="dbCon" VIEWASTEXT></OBJECT>
<OBJECT RUNAT="SERVER" PROGID="ADODB.RecordSet" ID="Rs" VIEWASTEXT></OBJECT>