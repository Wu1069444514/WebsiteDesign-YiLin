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
<title>修改</title>
	<script>
	function check(){
		if(document.form.bt.value=="")
			{
			alert("新闻标题不能为空！");
			return false;
			}
	}
	
		
	</script>
	
</head>

<body>
	
<%set rs=server.CreateObject("adodb.recordset")
rs.open"select * from news where news_id="&request("id")&" ",conn,1,1%>
<p align="center" style="font-size: 30px">修改新闻</pr>
	
<form name = "form" method="post" action="server_news_edit_save.asp?id=<%=rs("news_id")%>" >
  <table border="0" width="60%" height="50px" align="center" cellpadding="5" cellspacing="1" bgcolor="rgba(67,67,67,0.50)">
	<tr>
	<td width="120" bgcolor="#FDFAFA"><p>新闻标题：</p></td>	
	<td bgcolor="#FFFFFF"><input name="bt" type="text" id="bt" value="<%=rs("news_title")%>"></td>
	</tr>
	<tr>
	<td width="120" bgcolor="#FDFAFA"><p>新闻内容：</p></td>	
	<td bgcolor="#FFFFFF"><textarea name="nr" cols="60" rows="8" id="nr"><%=rs("news_content")%></textarea></td>
	</tr>
	<tr>
	<td width="120" bgcolor="#FDFAFA"><p>新闻作者：</p></td>	
	<td bgcolor="#FFFFFF" id="zz"><input name="zz" type="text" id="zz" value="<%=rs("news_writer")%>"></td>
	</tr>
  </table>
	<p>
	  <input type="submit" name="submit" id="submit" value="提交" style="margin-left:46%" onClick="return check()">
	        <input type="reset" name="reset" id="reset" value="重置" style="margin-left:10px">
	</p>
  </form>
<%rs.close
set rs=nothing%>
</body>
</html>
