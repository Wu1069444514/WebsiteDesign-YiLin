<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>登录界面</title>
<link href="style/YiLin-登录界面.css" rel="stylesheet" type="text/css">
<style type="text/css">
body 
</style>
<script>
  function isHidden(oDiv){
    var vDiv = document.getElementById(oDiv);
    vDiv.style.display = (vDiv.style.display == 'none')?'block':'none';
  }
</script>

<script>
var imglist=new Array(3)//图片个数
	 imglist[0]="image/梵高1.jpg";  //第一个图片的地址
	 imglist[1]="image/梵高2.jpg";
	 imglist[2]="image/梵高3.jpg";
var i=0;
function changeimg()
{
 if(i==imglist.length)
 {
  i=0;
 }
 document.getElementById("tp").src=imglist[i];
 ++i;
}
window.setInterval("changeimg()",5000)//1000等于1秒

</script>



</head>

<body>

<form method="post" action = "server_login.asp" name="form2" id = "form2" class="form" style="input,button,select,textarea{ outline:none;}">
  <p class="title">欢迎回到艺术之林</p>
  <p class="title_2">寻门而入，破门而出。</p>
 
  <div class="form_next" >
    <label for="usename2"></label>
    <input name="usename2" type="text" required class="border_input_first" id="usename2" placeholder="昵称" onChange="CheckUsername();">
  </div>
  
  <div class="form_next">
    <label for="password2"></label>
    <input name="password2" type="password" required class="border_input_first" id="password2" placeholder="密码" onChange="CheckPassword();" >
  </div>
  
  <input name="submit" type="submit" class="submit2" id="submit2_2" value="登录">
 
</form>
	



<div class="img_left" ><img src="image/梵高1.jpg" alt="" width="400" height="806" id="tp"/></div>

<div class="backg"><img src="image/水彩背景.png" width="600" height="600" alt=""/></div>

</body>
</html>
