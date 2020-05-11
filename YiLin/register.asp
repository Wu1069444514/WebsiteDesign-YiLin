<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>注册界面</title>
<link href="style/YiLin-注册界面.css" rel="stylesheet" type="text/css">
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

<script>/*检查用户名不得以数字开头*/
function CheckUsername(){
var strEmail = document.getElementById("usename").value;
var myReg = /^[0-9]+/; 
 if (myReg.test(strEmail))
{ 
alert("用户名不得以数字开头！"); 
}
return true;
}
</script>

<script>/*检查密码位数不少于6位*/
function CheckPassword(){
var strpass = document.getElementById("password").value;
/*var mypass = /^[a-zA-Z]\w{5,17}$/  /[a-zA-Z0-9_]+/; 
var mypass2 = /w{5,17}$ /;
 if (mypass.test(strpass))
{ 
alert("密码只能由“数字”，“字母”，“-”，“_” 组成！); 
}；
return true;*/
	
 if(strpass <=100000 )  
{  
  alert("密码长度不少于6位"); 

}  
  return ture; 
}
</script>


<script>/*检查两次密码是否一致*/
function CheckRepassword(){
var pass = document.getElementById("password").value;
var repass = document.getElementById("repassword").value; 
 if (pass == repass)
{ 
 return true;
}

 alert("两次输入的密码不一致！");
}
</script>


<script>/*检查电话是否为纯数字*/
function CheckPhone(){
var strPhone = document.getElementById("phone").value;
var myReg2 = /[0-9]+/; 
 if (myReg2.test(strPhone))
{ 
return ture; 
}
alert("请输入正确的电话号码");
}
</script>

</head>

<body>

<form method="post" action = "server_register.asp" id = "form1" name="form1" class="form" style="input,button,select,textarea{ outline:none;}">
  <p class="title">欢迎注册艺术之林</p>
  <p class="title_2">外师造化，中得心源。</p>
 
  <div class="form_next" >
    <label for="usename"></label>
    <input name="usename" type="text" required class="border_input_first" id="usename" placeholder="昵称" onChange="CheckUsername();">
  </div>
  
  <div class="form_next">
    <label for="password"></label>
    <input name="password" type="password" required class="border_input_first" id="password" placeholder="密码" onChange="CheckPassword();" >
  </div>
  
  <div class="form_next">
    <label for="repassword"></label>
    <input name="repassword" type="password" required class="border_input_first" id="repassword" placeholder="再次输入密码" onChange="CheckRepassword();">
  </div>
  
  <div class="form_next">
    <label for="phone"></label>
    <input name="phone" type="text" required class="border_input_first" id="phone" placeholder="电话" onChange="CheckPhone();">
  </div>
  
    
  <input name="submit" type="submit" class="submit2" id="submit2" value="注册">
 

</form>


<div class="img_left" ><img src="image/梵高1.jpg" alt="" width="400" height="806" id="tp"/></div>

<div class="backg"><img src="image/水彩背景.png" width="600" height="600" alt=""/></div>

</body>
</html>
