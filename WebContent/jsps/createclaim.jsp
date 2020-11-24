<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">
      *{
  margin:0;
  padding:0;
  }
 body{
       
    background-image: url(img/11.png);
    margin-top:40px;
    background-position:center;
   background-size:cover;
   font-family:sans-serif;
    }

   .claimcreateform{
          width:800px;
    background-color:rgb(0,0,0,0.6);
    margin:auto;
    color:#FFFFFF;
    padding:10px 0px 10px 0px;
    text-align:center;
    border-radius:15px 15px 0px 0px ;
    }  
  .main{
      background-color:rgb(0,0,0,0.5);
   width:800px;
   margin:auto;}
  
  form{
      padding:10px;
   
  } 
  
  #name{
       width:100%;
    height:100px;
    
    }  
  .name{
            margin-left:25px;
   margin-top:30px;
   width: 125px;
            color: white;
            font-size: 18px;
            font-weight: 700;}

.common{
           position:relative;
     left:200px;
     top:-37px;
     line-height: 40px;
     width:480px;
        border-radius: 6px;
     padding: 0 22px;
     font-size: 16px;
     color: #555;  }

 
   .city{
         position:relative;
  left:200px;
     top:-37px;
     line-height: 40px;
     width:95px;
        border-radius: 6px;
     padding: 0 22px;
     font-size: 16px;
     color: #555;  
  }
 .Zip{
         position:relative;
  left:200px;
     top:-37px;
     line-height: 40px;
     width:255px;
        border-radius: 6px;
     padding: 0 22px;
     font-size: 16px;
     color: #555; 
     }
 .accidentState{
            position:relative;
      color:#E5E5E5;
      text-transform:capitalize;
      font-size:16px;
      left:54px;
      top:-4px;
     }
 .accidentZip{
              position:relative;
      color:#E5E5E5;
      text-transform:capitalize;
      font-size:16px;
      left:-100px;
      top:-2px;
     }
 .option{
         position:relative;
  left:200px;
     top:-37px;
     line-height: 40px;
     width:532px;
     height:40px;
        border-radius: 6px;
     padding: 0 22px;
     font-size: 16px;
     color: #555; 
     outline:none;
     overflow:hidden;
  }    
     .option option{
                 font-size:20px;
       }
  
    
    button{
        background-color:#3BAF9F;
     display:block;
     margin:20px 0px 0px 20px;
     text-align:center;
     border-radius:12px;
     border:2px solid #366473;
     padding:14px 110px;
     outline:none;
     color:white;
     cursor:pointer;
     transition:0.25px;
    } 
   button:hover{
                background-color:#5390F5;
      }  

</style>





<meta charset="ISO-8859-1">
<title>Claim Creation</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body  style="text-align: center;">
<!--<form method="post" action ="create.htm" > -->
<!--${policyNumber } 
${userName }-->

    <div class="claimcreateform">
        <h1> Claim Creation</h1>
    </div>
    <div class="main">
        <form  method="POST" action ="nextcreate.htm" >
      
           <h2 class="name">Policy Number:</h2>
           <input class="common" type="number" name="policyNumber" value="${policyNumber }">
          
           <h2 class="name">Claim Reason:</h2>
           <input class="common" type="text" name="claimReason">
           
           <h2 class="name"> Accident Location:</h2>
           <input class="common" type="text" name="accidentLocation">
           
           <h2 class="name"> Accident City:</h2>
           <input class="common" type="text" name="accidentCity">
           
           <h2 class="name"> Accident State:</h2>
           <input class="city" type="text" name="accidentState">
           <label class="accident-state">state</label>
           <input class="zip" type="text" name="accidentZip" pattern="^[1-9]\d{5}$">>
           <label class="accident-zip">Zip</label>
           
            <h2 class="name">  Claim Type:</h2>
           <select name="claimType">
	 
	         <option  value="Vehicle">Vehicle</option>
	         <option value="Apartment">Apartment</option>
	         <option value="Business">Business</option>
	         <option value="Disability">Disability</option>
	      </select>
	      
	       <input style="float:left; margin-left:75%;" role ="button" class="btn btn-secondary" type="submit" value="Next"> 
           <button  style="margin-right:70%;position:absolute;top:422px;right:100px;" class="btn btn-secondary" onclick="window.history.back();">Back</button>
        
           </form>
    </div>
   
    

    <!--  Policy Number: <input type="number" name="policyNumber" value="${policyNumber }"  readonly="readonly"><br><br>
     
     Claim Reason: <input type="text" name="claimReason"><br><br>
 
     Accident Location:<input type="text" name="accidentLocation"><br><br>

	 Accident City:<input type="text" name="accidentCity"><br><br>
	 
	 Accident State:<input type="text" name="accidentState"><br><br>
	 
	 Accident Zip:<input type="number" name="accidentZip" pattern="^[1-9]\d{5}$"><br><br>
	 
	 Claim Type:<select name="claimType">
	 
	 <option  value="Vehicle">Vehicle</option>
	 <option value="Apartment">Apartment</option>
	 <option value="Business">Business</option>
	 <option value="Disability">Disability</option></select><br><br>
	 <br>
	 <br>
	 <!--   <a class="btn btn-secondary" role="button" href="nextcreate.htm">Next</a> -->
	 
	   <!-- <input style="float:left; margin-left:75%;" role ="button" class="btn btn-secondary" type="submit" value="Next"> 
	 
</form>
   <!--  <a role ="button" href="viewpolicy.htm?username=${userName }"> Back</a> -->
  <!--  <button  style="margin-right:70%;position:absolute;top:422px;right:100px;" class="btn btn-secondary" onclick="window.history.back();">Back</button> -->
</body>
</html>