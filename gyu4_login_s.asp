<%@ codepage="65001" language="vbscript"%>
<%
option Explicit
Session.CodePage="65001"
Response.CharSet="utf-8"
%>
<!--#Include Virtual = "/function/essence.asp" -->
<!--#Include Virtual = "/function/aesLibrary.asp"-->
<%
Const EncryptKey = "1q2w3e4r"

Dim UserKind, UserID, UserPW, encryptUserPW, SchoolSeq, UserSN, UserName, Grade, UserType, strUserKind, strSQLUserKind

UserKind = ParmCheck(Request.form("userkind"))
UserID = ParmCheck(Request.form("userid"))
UserPW = ParmCheck(Request.form("userpw"))
encryptUserPW = AESEncrypt(EncryptKey, UserPW)

If UserKind = "" Or UserID = "" Or UserPW = "" Then
	Response.write "<script>alert('정상적인 접근이 아닙니다.');history.back();</script>"
End If 

If UserKind = "prof" Then
	strUserKind = "Prof"
	strSQLUserKind = "TB_PROF"
Else
	strUserKind = "Stud"
	strSQLUserKind = "TB_MEMBER"
End If

	DBcon.Open Application("DBInfo")

	Dim strSQL		
		strSQL = "SELECT intSeq, intSchoolSeq, intUserSN, intMatchingSN, strUserID, strUserName, intGrade, strDepart, blnSeminarType, strSeminarName, strUserType FROM "& strSQLUserKind &" WITH(NOLOCK) "
		strSQL = strSQL & "WHERE strUserID = '"& UserID &"' AND strUserPW = '"& UserPW &"' AND intSchoolSeq = 22"
		'response.write strSQL
		'response.end
		Rs.Open strSql, dbCon
		
		If Rs.Eof=False And Rs.Bof=False Then	
			Response.Cookies ("ezone").Domain = "ez-one.site"
			Response.Cookies ("ezone")("User") = "User"
			Response.Cookies ("ezone")("UserKind") = strUserKind			
			Response.Cookies ("ezone")("SchoolSeq") = Rs(1)
			Response.Cookies ("ezone")("UserSN") = Rs(2)
			Response.Cookies ("ezone")("MatchingSN") = Rs(3)
			Response.Cookies ("ezone")("UserID") = Rs(4)
			Response.Cookies ("ezone")("UserName") = Rs(5)
			Response.Cookies ("ezone")("Grade") = Rs(6)	
			Response.Cookies ("ezone")("Depart") = Rs(7)	
			Response.Cookies ("ezone")("blnSeminarType") = Rs(8)	
			If Rs(9) <> "" Then
			Response.Cookies ("ezone")("SeminarName") = Rs(9)
			Else
			Response.Cookies ("ezone")("SeminarName") = ""
			End If
			Response.Cookies ("ezone")("UserType") = Rs(10)				
			Response.Cookies ("ezone")("GYU4") = "Y"

			
			SchoolSeq = Request.Cookies ("ezone")("SchoolSeq")
			UserSN = Request.Cookies ("ezone")("UserSN")
			UserID = Request.Cookies ("ezone")("UserID")
			UserName = Request.Cookies ("ezone")("UserName")
			Grade = Request.Cookies ("ezone")("Grade")
			UserType = Request.Cookies ("ezone")("UserType")
	
			DBcon.execute ("UPDATE "& strSQLUserKind &" SET dtLastLogin = GETDATE() WHERE intSeq = "&Rs(0)&"")
			Response.write "<script>location.href='/gyu3/main.asp';</script>"
		Else
			Response.write "<script>alert('아이디나 비밀번호를 확인하세요.');history.back();</script>"
		End If
		Rs.Close
	DBcon.close
%>		

<OBJECT RUNAT="SERVER" PROGID="ADODB.Connection" ID="dbCon" VIEWASTEXT></OBJECT>
<OBJECT RUNAT="SERVER" PROGID="ADODB.RecordSet" ID="Rs" VIEWASTEXT></OBJECT>
