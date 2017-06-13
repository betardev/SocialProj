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
   <td> <input name = "username" id = "username" type = "text" onkeyup = "sendFormInfo(); checkUsername(); checkPassword()"  placeholder = "Username.."/>  </td>
  </tr>
  <tr> 
   <td> <input name = "email" id = "email" type = "text" placeholder = "email.."/>  </td>
  </tr>
  <tr> 
   <td> <input type = "password" name = "password" id = "firstPass" onkeyup = "checkPassword()" placeholder = "password.." />  </td>
  </tr>
  <tr> 
   <td> <input type = "password" name = "cnfpassword" id = "confPass" placeholder = "confirm password.."/>  </td>
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

//Send Form information to get confirmation everything is valid.
function sendFormInfo(){
	//document.getElementById("problemShower").innerHTML = "Clicked";
	var usernameInfo = document.getElementById("username").value;
	var emailInfo = document.getElementById("email").value;
	var passwordInfo = document.getElementById("firstPass").value;
	var url="CustomerInfoGather.jsp?username="+usernameInfo + "&email=" + emailInfo + "&password=" + passwordInfo;
	//document.getElementById("problemShower").innerHTML = usernameInfo + "  " + emailInfo + "  " + passwordInfo;
	 
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
		if(request.responseText.length == 323){
			document.getElementById("problemShower").innerHTML = request.responseText; 
		}
		else{
			document.getElementById("problemShower").innerHTML = "Everything is fine";
		}
			
	}  	
}

/*
function checkUsername(){
    	if(document.getElementById("username").value.length < 5 && document.getElementById("username").value.length > 0){
     		document.getElementById("problemShower").innerHTML = "Username is too short";
    	}
    	else if(document.getElementById("username").value.length > 18){
    		document.getElementById("problemShower").innerHTML = "Username is too long";
    	}
    	else{
    		document.getElementById("problemShower").innerHTML = "Everything is fine";
    	}
	
}
*/
/*
function checkPassword(){
		if(document.getElementById("firstPass").value.length < 5 && document.getElementById("firstPass").value.length > 0){
			document.getElementById("firstPass").innerHTML = "Password is too short";
		}
		else if(document.getElementById("firstPass").value.length > 26){
			document.getElementById("firstPass").innerHTML = "Password is too long";
		}
		else{
			document.getElementById("firstPass").innerHTML = "Everything is fine";
		}
}
*/
/*function checkConfPassword(){
	 	if(document.getElementById("firstPass").value == document.getElementById("confPass").value)
	 		document.getElementById("problemShower") = "Everything is fine";
	 	else document.getElementById("problemShower") = "Passwords don't match";
	
}*/



	
	

 
</script>


</body>
</html>