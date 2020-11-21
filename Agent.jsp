<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
       <style type="text/css">
             *{
                padding: 0;
                margin: 0;
                text-decoration: none;
                list-style: none;
                box-sizing: border-box;
              }
              body
              {
                font-family: montserrat;
               }
             nav
             {
                background: #0082e6;
                height: 80px;
                width: 100%;
             }
             label.Welcome
             {
               color: white;
               font-size: 35px;
               line-height: 80px;
               padding: 0 100px;
               font-weight: bold;
             }
             nav ul
             {
               float: right;
               margin-right: 20px;
             }
             nav ul li
             {
               display: inline-block;
               line-height: 80px;
               margin: 0 5px;
             }
             nav ul li a
             {
                color: white;
                font-size: 17px;
                padding: 7px 13px;
                border-radius: 3px;
                text-transform: uppercase;
             }
             a.active,a:hover
             {
                background: #1b9bff;
                transition: .5s;
             }
             .checkbtn
             {
                font-size: 30px;
                color: white;
                float: right;
                line-height: 80px;
                margin-right: 40px;
                cursor: pointer;
                display: none;
              }
              #check
              {
                 display: none;
              }
              @media (max-width: 952px)
              {
                  label.Welcome
                  {
                    font-size: 30px;
                    padding-left: 50px;
                  }
                  nav ul li a
                  {
                    font-size: 16px;
                  }
              }
             @media (max-width: 858px)
             {
               .checkbtn
               {
                   display: block;
               }
               ul
               {
                   position: fixed;
                   width: 100%;
                   height: 100vh;
                   background: #2c3e50;
                   top: 80px;
                   left: -100%;
                   text-align: center;
                   transition: all .5s;
               }
               nav ul li
               {
                   display: block;
                   margin: 50px 0;
                   line-height: 30px;
               }
               nav ul li a
               {
                  font-size: 20px;
               }
               a:hover
               {
                  background: none;
                  color: #0082e6;
               }
               #check:checked ~ ul
               {
                 left: 0;
               }
             }
             section
             {
                background: url(bg1.jpg) no-repeat;
                background-size: cover;
                height: calc(100vh - 80px);
              }

       </style>

 
       <meta charset="ISO-8859-1">
       <title>Agent Page</title>
       <link rel="stylesheet" href="style.css">
      <script src="https://kit.fontawesome.com/a076d05399.js"></script>    
  </head>
  <body>

   <nav>
      <input type="checkbox" id="check">
      <label for="check" class="checkbtn">
        <i class="fas fa-bars"></i>
      </label>
      <label class="Welcome">Welcome Agent</label>
      <ul>
        <li><a href="#">Claim Creation</a></li>
        <li><a href="#">View Claim</a></li>
        
      </ul>
    </nav>
    <section></section>
    
    

<!-- Welcome Agent...


<a class="btn btn-primary" href="#" role="button">Claim Creation</a>

<a class="btn btn-primary" href="#" role="button">View Claim</a>
<br> -->

    <form  method ="post" action="viewpolicy.htm"><input type="submit"  value="View Policy"></form>


  </body>
</html>