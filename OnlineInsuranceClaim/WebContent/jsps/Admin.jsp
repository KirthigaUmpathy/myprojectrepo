<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="com.cg.model.*"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
html
    {
     
        
         padding-bottom: 45%;
        
    }

@import "https://use.fontawesome.com/releases/v5.5.0/css/all.css";
body{

  margin: 0;
  padding: 0;
  font-family:serif;
  background: linear-gradient(#85FFBD,#FFFB7D);
  background-size: cover;
}

.textbox{
text-align: center;
text-shadow:black;
font-size:medium;
font-family:cursive;
font-weight:1000%;
 
  
}


.btn{
  width:50%;
 
  cursor: pointer;
  margin:1%;
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

 
 
   
 
}

  
</style>
<meta charset="ISO-8859-1">
<title>Admin Page</title>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
<!-- integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">  -->
<!--  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">-->
</head>
<body>

<p class="text-center">${user.roleCode} Login Successful</p>

<br>
<div class="Admin-box">
<form method="post" action="#"></form>
<br>

<div class="textbox">
<a class="btn btn-primary" href="#" role="button">New Profile Creation</a>
</div>

<div class="textbox">

<a class="btn btn-primary" href="#" role="button" >Claim Creation</a>
</div>

<div class="textbox">

<a class="btn btn-primary" href="#" role="button">View Claim</a>
</div>

<div class="textbox">
<a class="btn btn-primary" href="#" role="button">Report Generation</a>
</div>

<br>
<div class="textbox">
<form  method ="post" action="viewpolicy.htm"><input type="submit" value="View Policy"></form>
</div>
</div>


</body>
</html> 