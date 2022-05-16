<%
option Explicit

Response.Cookies ("ezone").Domain = "ez-one.site"
Response.Cookies ("ezone")("User") = ""
Response.Cookies ("ezone")("UserKind") = ""
Response.Cookies ("ezone")("SchoolSeq") = ""
Response.Cookies ("ezone")("UserSN") = ""
Response.Cookies ("ezone")("UserID") = ""
Response.Cookies ("ezone")("UserName") = ""
Response.Cookies ("ezone")("UserType") = ""
Response.Cookies ("ezone")("GYU4") = ""

Response.write "<script>location.href='/gyu4/main.asp';</script>"
%>