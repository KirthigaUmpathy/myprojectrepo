<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="style.css">
 <script src="https://kit.fontawesome.com/a076d05399.js"></script>
 
 <style type="text/css">
  
  .bg-img
  {
     background:url('https://png.pngtree.com/thumb_back/fw800/back_our/20190628/ourmid/pngtree-hd-cool-background-illustration-image_264321.jpg');
     height:100vh;
     background-size: cover;
     
  }
 
.content{
  position: absolute;
  top: 50%;
  left: 50%;
  z-index: 999;
  text-align: center;
  padding: 60px 32px;
  width: 370px;
  transform: translate(-50%,-50%);
  background: rgba(255,255,255,0.04);
  box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
}
.content header{
  color: white;
  font-size: 33px;
  font-weight: 600;
  margin: 0 0 35px 0;
  font-family: 'Montserrat',sans-serif;
}
.field{
  position: relative;
  height: 45px;
  width: 100%;
  display: flex;
  background: rgba(255,255,255,0.94);
  
}
.field span{
  color: #222;
  width: 40px;
  line-height: 45px;
}
.welcome
{
text-align:center;
   color:white;
  font-size: 33px;
  font-weight: 600;
  margin: 0 0 35px 0;
  font-family: 'Montserrat',sans-serif;
 

}
.field input{
  height: 100%;
  width: 100%;
  background: transparent;
  border: none;
  outline: none;
  color: #222;
  font-size: 16px;
  font-family: 'Poppins',sans-serif;
}
.space{
  margin-top: 16px;
}
.field input[type="submit"]{
  background: #3498db;
  border: 1px solid #2691d9;
  color: white;
  font-size: 18px;
  letter-spacing: 1px;
  font-weight: 600;
  cursor: pointer;
  font-family: 'Montserrat',sans-serif;
}
.field input[type="submit"]:hover{
  background: #2691d9;
}
 
 </style>
<title>User Login</title>
<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" > -->
<!--integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">-->
</head>
<body  >

<div class="bg-img">
     <div class="welcome">
          <p class="h2 text-center" >Welcome to Online Insurance Claim Registration
</p>
     </div>
      <div class="content">
        <header>Login Form</header>
        <form method="post" action="login.htm">
          <div class="field space">
            <span class="fa fa-user"></span>
            <input type="text" name="username" maxlength="20" required placeholder="UserName">
          </div>
          
           <div class="field space">
            <span class="fa fa-lock"></span>
            <input type="text" name="password" maxlength="12" required placeholder="Password">
          </div>
          
          <div class="field space">
            
            <input type="submit" value="Login">
          </div>
         </form>
        </div>
</div> 



</div>-->
</body>
</html>