<!doctype html>

<%Session.CodePage=65001%>
<%
Response.Charset="utf-8"
%>
<meta http-equiv ="content_type"content ="text/html; charset=utf8"> 
<%
db="data/data.mdb"
Set conn = Server.CreateObject("ADODB.Connection")
connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&db&"")
conn.Open connstr


dim yhm,mm,dh
yhm=request.form("usename")
mm=request.form("password")
dh=request.form("phone")

set rs=server.CreateObject("adodb.recordset")
rs.open"select * from users where user_name='"&yhm&"'",conn,1,3
  
if rs.eof and rs.bof then
rs.addnew
rs("user_name")=yhm
rs("user_password")=mm
rs("user_tel")=dh
rs.update
response.Redirect("http://192.168.17.1/login.asp")
else
response.Write"<script language=javascript>alert('您输入的账号已被注册，请更换账号重新注册!');history.go(-1);</script>"
end if
rs.close
set rs=nothing
%>