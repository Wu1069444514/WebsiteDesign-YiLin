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

conn.execute "delete from news  where news_id="&request("id")&" "

  

response.Redirect("http://192.168.17.1/news_list.asp")
%>