<%
db="data/data.mdb"
Set conn = Server.CreateObject("ADODB.Connection")
connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&db&"")
conn.Open connstr
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>新闻列表</title>
</head>

<body>
	<p align="center" style="font-size: 30px">全部新闻</pr>
    <table width="80%" border="0" align="center" cellpadding="5" cellspacing="1" bgcolor=rgba(89,89,89,1.00)>
      <tbody>
        <tr>
          <td bgcolor="#FEF9F9" align="center">序号</td>
          <td bgcolor="#FEF9F9" align="center">新闻标题</td>
          <td bgcolor="#FEF9F9" align="center">新闻作者</td>
          <td bgcolor="#FEF9F9" align="center">添加时间</td>
          <td bgcolor="#FEF9F9" align="center">点击次数</td>
          <td bgcolor="#FEF9F9" align="center">操作</td>
        </tr>
		  
<%set rs=server.CreateObject("adodb.recordset")
rs.open"select * from news order by news_addtime desc",conn,1,1
if rs.eof and rs.bof then%>
	<tr>
     <td colspan="6" bgcolor="#FEF9F9" align="center" >没有发布任何新闻，请先发布</td>
	</tr>
	
<%else
dim i
i = 1
do while not rs.eof%>
        <tr>
          <td bgcolor="#FEF9F9" align="center"><%=i%></td>
          <td bgcolor="#FEF9F9" align="center"><%=rs("news_title")%></td>
          <td bgcolor="#FEF9F9" align="center"><%=rs("news_writer")%></td>
          <td bgcolor="#FEF9F9" align="center"><%=rs("news_addtime")%></td>
          <td bgcolor="#FEF9F9" align="center"><%=rs("news_hits")%></td>
          <td bgcolor="#FEF9F9" align="center"><a href="http://192.168.17.1/news_edit.asp?id=<%=rs("news_id")%>">修改</a>
			&nbsp;|&nbsp;
		  <a href="http://192.168.17.1/server_news_delete.asp?id=<%=rs("news_id")%>">删除</a>
			</td>
        </tr>
<%i = i +1
rs.movenext 
loop
end if
rs.close
set rs=nothing%>

      </tbody>
    </table>
<p align="center" style="font-size: 30px">    
</body>
</html>
