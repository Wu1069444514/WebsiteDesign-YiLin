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

select case request("action")
   
   
case "add"
   
dim xwbt,xwnr,xwzz
xwbt=request.form("bt")
xwnr=request.form("nr")
xwzz=request.form("zz")

set rs=server.CreateObject("adodb.recordset")
rs.open"select * from news ",conn,1,3
  
rs.addnew
rs("news_title")=xwbt
rs("news_content")=xwnr
rs("news_writer")=xwzz
rs("news_addtime")=now()
rs("news_hits")=0
rs.update
response.Redirect("http://192.168.17.1/news_add.asp")
 
rs.close
set rs=nothing
   
case "edit"
   
dim xwbt,xwnr,xwzz
xwbt=request.form("bt")
xwnr=request.form("nr")
xwzz=request.form("zz")

set rs=server.CreateObject("adodb.recordset")
rs.open"select * from news where news_id="&request("id")&" ",conn,1,3
  

rs("news_title")=xwbt
rs("news_content")=xwnr
rs("news_writer")=xwzz
rs("news_addtime")=now()
rs.update
response.Redirect("http://192.168.17.1/news_list.asp")
rs.close
set rs=nothing
   
case "delete"
   
conn.execute "delete from news  where news_id="&request("id")&" "

response.Redirect("http://192.168.17.1/news_list.asp")
   
rs.close
set rs=nothing
   
case else
   
response.Write"<script language=javascript>alart!("错误的参数传递！");windows.location.href='http://192.168.17.1/news_main.asp';</script>"
   
end select

rs.close
set rs=nothing
%>