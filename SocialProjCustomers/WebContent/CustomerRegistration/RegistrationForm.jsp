<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
     <%@ include file="RegistrationFormCss.css"%>
</style>

</head>
<body bgcolor = "#f4b642">
<p id = "problemShower">Everything is fine</p>
<div align="center">
<p id = "regText"> Registration </p>
<form name = "registerForm"> 
  <!-- action = "CustomerInfoGather.jsp" --> 
 <table>
  <tr> 
   <td> <input name = "username" id = "username" type = "text" onkeyup = "checkForProblems(); sendFormInfo()"  placeholder = "Username.."/>  </td>
  </tr>
  <tr> 
   <td> <input name = "email" id = "email" type = "text" onkeyup = "checkForProblems()" placeholder = "email.."/>  </td>
  </tr>
  <tr> 
   <td> <input type = "password" name = "password" id = "firstPass" onkeyup = "checkForProblems()" placeholder = "password.." />  </td>
  </tr>
  <tr> 
   <td> <input type = "password" name = "cnfpassword" id = "confPass" onkeyup = "checkForProblems()" placeholder = "confirm password.."/>  </td>
  </tr>
  <tr>
  <td>
   <input type = "button" onclick = "sendFormInfo()" name = "submitinfobtn" value = "Confirm">
   </td>
  </tr>
 </table>
</form>
</div>

<script>
 
var request;
var isProblem = false;

//Send Form information to get confirmation everything is valid.
function sendFormInfo(){
	var usernameInfo = document.getElementById("username").value;
	var emailInfo = document.getElementById("email").value;
	var passwordInfo = document.getElementById("firstPass").value;
	var url="CustomerInfoGather.jsp?username="+usernameInfo + "&email=" + emailInfo + "&password=" + passwordInfo;
	 
	if(window.XMLHttpRequest){  
		request=new XMLHttpRequest();  
	}  
    else if(window.ActiveXObject){  
		request=new ActiveXObject("Microsoft.XMLHTTP");  
	}  
	
	try{  
		request.onreadystatechange = getInfo;  
		request.open("GET",url,true);  
		request.send();  
		}catch(e){alert("Unable to connect to server");}  
}


//Recieve information from database.
function getInfo(){
	if(request.readyState == 4){
			document.getElementById("problemShower").innerHTML = request.responseText; 
	}  	
}



function checkForProblems(){
    
	if(!isProblem){
		if(document.getElementById("username").value.length < 5 && document.getElementById("username").value.length > 0){
			document.getElementById("problemShower").innerHTML = "Username is too short";
			return;
		}
		if(document.getElementById("username").value.length > 18){
			document.getElementById("problemShower").innerHTML = "Username is too long";
			return;
		}
		if(document.getElementById("firstPass").value.length < 5 && document.getElementById("firstPass").value.length > 0){
			document.getElementById("problemShower").innerHTML = "Password is too short";
			return;
		}
		if(document.getElementById("firstPass").value.length > 26){
			document.getElementById("problemShower").innerHTML = "Password is too long";
			return;
		}
		if(document.getElementById("confPass").value != document.getElementById("firstPass").value && document.getElementById("confPass").value.length > 0 && document.getElementById("firstPass").value.length > 0){
			document.getElementById("problemShower").innerHTML = "Passwords don't match";
			return;
		}
		    document.getElementById("problemShower").innerHTML = "Everything is fine";
	}
			
	   
			
	
	
	
	//PUT EMAIL VALIDATION BETWEEN USERNAME AND PASSWORD VALIDATION ^^
	
	
}

	
	

 
</script>


</body>
</html>