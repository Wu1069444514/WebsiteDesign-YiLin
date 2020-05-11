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


dim yhm,mm
yhm=request.form("usename2")
mm=request.form("password2")
   
set rs=server.CreateObject("adodb.recordset")
rs.open"select * from users where user_name='"&yhm&"' and user_password='"&mm&"'",conn,1,3
  
if rs.eof and rs.bof then
response.Write"<script language=javascript>alert('用户名或密码错误，请重新输入!');history.go(-1);</script>"
else
response.Redirect("http://192.168.17.1/org.html")
end if
rs.close
set rs=nothing
%>