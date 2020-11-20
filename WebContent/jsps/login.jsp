<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

@import "https://use.fontawesome.com/releases/v5.5.0/css/all.css";
body{

  margin: 0;
  padding: 0;
  font-family:serif;
  background: url(bg.jpg) no-repeat;
  background-size: cover;
}
.login-box{
  width: 280px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  color: black;
}
.login-box h1{
  float: left;
  font-size: 40px;
  border-bottom: 6px solid #63caf7;
  margin-bottom: 50px;
  padding: 13px 0;
}
.textbox{
  width: 100%;
  overflow: hidden;
  font-size: 20px;
  padding: 8px 0;
  margin: 8px 0;
  border-bottom: 1px solid #8BC6EC;
}
.textbox i{
  width: 26px;
  float: left;
  text-align: center;
}
.textbox input{
  border: none;
  outline: none;
  background: none;
  color: black;
  font-size: 18px;
  width: 80%;
  float: left;
  margin: 0 10px;
}
.btn{
  width: 100%;
  background: none;
  border: 2px solid #8BC6EC;
  color: black;
  padding: 5px;
  font-size: 18px;
  cursor: pointer;
  margin:  0;
}
 p
    {
    font-family:serif;
     height:100%;  
    font-size:300%;
    text-align: center;  
    color: #800080;  
    padding: 20px;  
    }  

 html
    {
         background: linear-gradient(#85FFBD,#FFFB7D);
        
         padding-bottom: 45%;
        
    }
 
   
 
}

  
</style>

<meta charset="ISO-8859-1">
<title>User Login</title>
      <link rel="stylesheet" href="css/style.css">
<!--  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >-->
<!--integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">-->
</head>
<body>
<p>Welcome to Online Insurance Claim Registration</p>
<div class="login-box">
<form id="login" method="post" action="login.htm">
<h1>Login</h1>
<div class="textbox">
Login ID :<input type="text" name="username" maxlength="20"><br><br>
</div>
<div class="textbox">
Password:<input type="password" name="password" maxlength="12"><br><br>
</div>
<div class="textbox">
 <input type="submit" value="Login">
 </div>
</form>
</div>

</body>
</html>