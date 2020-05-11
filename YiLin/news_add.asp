<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>添加新闻</title>
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
<p align="center" style="font-size: 30px">添加新闻</pr>
	
<form name = "form" method="post" action="server_news_add_save.asp" >
  <table border="0" width="60%" height="50px" align="center" cellpadding="5" cellspacing="1" bgcolor="rgba(67,67,67,0.50)">
	<tr>
	<td width="120" bgcolor="#FDFAFA"><p>新闻标题：</p></td>	
	<td bgcolor="#FFFFFF"><input type="text" name="bt" id="bt"></td>
	</tr>
	<tr>
	<td width="120" bgcolor="#FDFAFA"><p>新闻内容：</p></td>	
	<td bgcolor="#FFFFFF"><textarea name="nr" cols="60" rows="8" id="nr"></textarea></td>
	</tr>
	<tr>
	<td width="120" bgcolor="#FDFAFA"><p>新闻作者：</p></td>	
	<td bgcolor="#FFFFFF" id="zz"><input type="text" name="zz" id="zz"></td>
	</tr>
  </table>
	<p>
	  <input type="submit" name="submit" id="submit" value="提交" style="margin-left:46%" onClick="return check()">
	        <input type="reset" name="reset" id="reset" value="重置" style="margin-left:10px">
	</p>
	
  </form>
</body>
</html>
