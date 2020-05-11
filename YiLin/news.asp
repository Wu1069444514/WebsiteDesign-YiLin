<%Session.CodePage=65001%>
<%
Response.Charset="utf-8"
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>看世界</title>
<link href="style/YiLin-新闻.css" rel="stylesheet" type="text/css">
	
<script>
	
var i=1;
var show=0;

	function introduce_gh()
	{
		
		if(show == 0){
		document.getElementById("mk_1").style.opacity = "0.4";
		document.getElementById("mk_2").style.opacity = "0.4";
		document.getElementById("footer").style.opacity = "0.4";
		document.getElementById("gh").style.display = "block";
		show = 1;
		}
		else{
		document.getElementById("mk_1").style.opacity = "1";
		document.getElementById("mk_2").style.opacity = "1";
		document.getElementById("footer").style.opacity = "1";
		document.getElementById("gh").style.display = "none";
			show = 0;
		}
	}
	
		function introduce_yh()
	{
		
		if(show == 0){
		document.getElementById("mk_1").style.opacity = "0.4";
		document.getElementById("mk_2").style.opacity = "0.4";
		document.getElementById("footer").style.opacity = "0.4";
		document.getElementById("yh").style.display = "block";
		show = 1;
		}
		else{
		document.getElementById("mk_1").style.opacity = "1";
		document.getElementById("mk_2").style.opacity = "1";
		document.getElementById("footer").style.opacity = "1";
		document.getElementById("yh").style.display = "none";
			show = 0;
		}
	}
	
	
		function introduce_sch()
	{
		
		if(show == 0){
		document.getElementById("mk_1").style.opacity = "0.4";
		document.getElementById("mk_2").style.opacity = "0.4";
		document.getElementById("footer").style.opacity = "0.4";
		document.getElementById("sch").style.display = "block";
		show = 1;
		}
		else{
		document.getElementById("mk_1").style.opacity = "1";
		document.getElementById("mk_2").style.opacity = "1";
		document.getElementById("footer").style.opacity = "1";
		document.getElementById("sch").style.display = "none";
			show = 0;
		}
	}
	
	
	
	
  window.onscroll=function getScrollTop()
{
 var stroll;
 var ysp = 0;
 stroll = document.documentElement.scrollTop||document.body.scrollTop;
 if(stroll >= 740)
	 {
		 document.getElementById("header").style.backgroundColor="rgba(0,0,0,0.6)";
		 document.getElementById("register").style.color="rgba(40,40,40,1.00)";
		 document.getElementById("header").style.opacity="1";
		 document.getElementById("header").style.borderBottomStyle="ridge";
		 document.getElementById("header").style.borderBottomColor="rgba(239,234,234,1.00)";
	 }

 else if(stroll < 740&& stroll > 0)
	 {
	    document.getElementById("register").style.color="rgba(243,232,232,1.00)";
		document.getElementById("header").style.opacity="0";	

	 }
	  
 else if(stroll == 0)
     {
	    document.getElementById("register").style.color="rgba(243,232,232,1.00)";
		document.getElementById("header").style.opacity="1";
		document.getElementById("header").style.backgroundColor="rgba(0,0,0,0.6)";
		document.getElementById("header").style.borderBottomStyle="none";
	 }
  }
</script>
	
	
<style type="text/css">
<!--
.footer a:link {
	text-decoration: none;
	color:rgba(106,106,106,0.80);
}
.footer a:visited {
	text-decoration: none;
	color:rgba(106,106,106,0.80);
}
.footer a:hover {
	text-decoration: none;
	color:rgba(80,80,80,0.80);
}
.footer a:active {
	text-decoration: none;
	color: rgba(80,80,80,0.80);
	
}
	
.header a:link {
	text-decoration: none;
	color: rgba(253,247,247,1.00);
}
.header a:visited {
	text-decoration: none;
	color: rgba(253,247,247,1.00);
}
.header a:hover {
	text-decoration: none;
	color:rgba(173,169,169,0.50);
}
.header a:active {
 	text-decoration: none;
	color:rgba(173,169,169,0.50);
}
#mk_2 p {
}
	
	
-->
</style>
		
</head>


<body >

 <header id="header" class="header" style="	background-color: rgba(0,0,0,0.6);opacity: 1" >
		<div class="header_logo1"><img src="image/logo.png" width="50" height="50" alt=""/></div>
		<div class="header_logo2"><img src="image/yilin.png" alt="" height="50"/></div>
	 
	    <div class="header_bt1"><a href="http://192.168.17.1/org.html" target="new">首页</a></div>
		<div class="header_bt2"><a href="http://192.168.17.1/art.html" target="new">艺术</a></div>
		<!--<div class="header_bt3">艺术家</div>-->
		<div class="header_bt4"><a href="http://192.168.17.1/news.asp" target="new">世界</a></div>
		<div class="header_register" id="denglu"><img src="image/登录.png" width="20" height="20" alt=""/></div>
		<div class="header_tag1"><img src="image/箭头.png" width="10" height="20" alt=""/></div>
		<div class="header_line1"><img src="image/分割线.png"  height="20" alt=""/></div>
		<div class="header_share"><img src="image/分享.png" width="20" height="20" alt=""/></div>
		<div class="header_tag2"><img src="image/箭头.png" width="10" height="20" alt=""/></div>
		<div class="header_line2"><img src="image/分割线.png"  height="20" alt=""/></div>
		<div class="header_register_boder_out">
		<div class="header_register_boder" id="register" style=" color:rgba(243,232,232,1.00);">
			<a href="http://192.168.17.1/login.asp" target="new">登录</a>
			<a href="http://192.168.17.1/register.asp" target="new">注册</a>
		</div>
		</div>
	</header>
	
	
 <div id ="mk_1" class="image">
   <ul class="image1" style="list-style-type: none">
			<li style=""><img src="image/小王子.png" width="100%" height="745" alt=""/></li>
   </ul>
 </div>
		

	
<div id = "mk_2" class="mk_2">
	 
<%
db="data/data.mdb"
Set conn = Server.CreateObject("ADODB.Connection")
connstr="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath(""&db&"")
conn.Open connstr
%>
	 

  <div style="position: absolute;left: 40%"><img src="image/新闻标题.png" width="300" height="139" alt=""/></div>
	
	<div style="position: absolute; top: 180px; left: 21%; width: 871px;">
   <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor=rgba(255,255,255,1.00)>
      <tbody>
		  
		  
<%set rs=server.CreateObject("adodb.recordset")
rs.open"select * from news order by news_addtime desc",conn,1,1
if rs.eof and rs.bof then
dim i
i = 0%>
	<tr>
     <td colspan="3" bgcolor=#FFFFFF align="center" >没有发布任何新闻，请先发布</td>
	</tr>

	
<%else
do while not rs.eof and i <4
i = i+1%>
	     <tr>
          <td colspan="3" bgcolor=#FFFFFF  >&nbsp;</td>
        </tr>
        <tr>
          <td colspan="3" bgcolor=#FFFFFF align="center" style="font-size: 25px;" ><%=rs("news_title")%></td>
        </tr>
		<tr>
          <td colspan="3" bgcolor=#FFFFFF  >&nbsp;</td>
        </tr>
	    <tr>
          <td width="70%" align="center" bgcolor=#FFFFFF>&nbsp;</td>
          <td width="10%" align="left" bgcolor=#FFFFFF><%=rs("news_writer")%></td>
          <td width="20%" align="right" bgcolor=#FFFFFF><%=rs("news_addtime")%></td>
        </tr>
		<tr>
          <td colspan="3" height = "400px" align="justify" bgcolor=#FFFFFF style="border-bottom: 1px solid rgba(0,0,0,1.00);"><%=rs("news_content")%></td>
        </tr>
	
	
<%rs.movenext 
loop
end if
rs.close
set rs=nothing%>

     </tbody>
    </table>
<p align="center" style="font-size: 30px">    
</div>




	
	
	
 <footer id = "footer" class="footer">
	<div class="footer_author">
		<p style="color: rgba(85,85,85,1.00); font-weight: 550;">@2018 艺林</p>
		<br>
		<p style="color: rgba(106,106,106,0.80);">By Wuxuhui</p>
		<p style="color: rgba(106,106,106,0.80);">Wuhan University</p>
		<p style="color: rgba(106,106,106,0.80);">Computer School</p>
		<p style="color: rgba(106,106,106,0.80);"><a href="http://192.168.17.1/news_control.asp" target="new">Manage</a></p>
    </div>
	<div class="footer_web" >
		<p style="color: rgba(85,85,85,1.00); font-weight: 550;">博物馆</p>
		<br>
		<p style="color: rgba(106,106,106,0.80);"><a href="http://www.dpm.org.cn/Home.html" target="new">故宫博物馆</a></p>
		<p style="color: rgba(106,106,106,0.80);"><a href="https://www.louvre.fr/zh" target="new">卢浮宫博物馆</a></p>
		<p style="color: rgba(106,106,106,0.80);"><a href="http://www.britishmuseum.org/" target="new">大英博物馆</a></p>

	</div>
		<div class="footer_focus" >
		<p style="color: rgba(85,85,85,1.00); font-weight: 550;">关注</p>
		<br>
		<p style="color: rgba(106,106,106,0.80);"><a href="https://mobile.twitter.com/" target="new">推特</a></p>
		<p style="color: rgba(106,106,106,0.80);"><a href="https://zh-cn.facebook.com/" target="new">脸谱</a></p>
		<p style="color: rgba(106,106,106,0.80);"><a href="https://weibo.com/" target="new">微博</a></p>
	</div>
	
	
	</footer>
	
	
</div>
	 

</body>
</html>
