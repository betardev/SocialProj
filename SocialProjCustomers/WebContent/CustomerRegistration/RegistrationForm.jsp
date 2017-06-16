<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
     <%@ include file = "Bootstrap/css/bootstrap.min.css" %>
     <%@ include file = "CustomDes.css" %>
     body { background: #E8E8E8 !important; }
</style>

</head>
<body bgcolor = "#E8E8E8">

<div class = "container-fluid">
  <div class = "row">
	<div class = "col-xs-12">
		<H1 class ="text-center well bold"> Registration </H1>
	</div>
	<div class = "col-xs-12">
		<p class ="text-center text-success" id = "problemShower"> Everything is fine </p>
	</div>
    <div class = "col-xs-3">
    </div>
    <div class = "col-xs-6">
  		<form>
 			<div class = "form-group">
 				<input name = "username" class = "form-control" id = "username" type = "text" onkeyup = "sendFormInfo()"  placeholder = "Username.."/>
  			</div>
  	    	<div class = "form-group">
 				<input name = "email" class = "form-control" id = "email" type = "text" onkeyup = "sendFormInfo()" placeholder = "email.."/>
        	</div>
        	<div class = "form-group">
 				<input type = "password" class = "form-control" name = "password" id = "firstPass" onkeyup = "sendFormInfo()" placeholder = "password.." />
 			</div>
			<div class = "form-group">
 				<input type = "password" class = "form-control" name = "cnfpassword" id = "confPass" onkeyup = "sendFormInfo()" placeholder = "confirm password.."/>
 			</div>
 			<div class = "form-group">
 				<button type = "button" class = "form-control btn btn-info " onclick = "sendFormInfo()"> Register </button>
 			</div>
  		</form>
  	</div>	
  	<div class = "col-xs-3">
  	</div>				
  </div>
</div>
<script>
 
var request;
var isProblem = false;

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
	//TODO: if response is Everything is fine, then checkForProblems, couldn't get response that I can check, it responds very long text, so can't be checked
	checkForProblems();
}



function checkForProblems(){
    
	if(!isProblem){
		if(document.getElementById("username").value.length < 5 && document.getElementById("username").value.length > 0){
			document.getElementById("problemShower").classList.remove("text-success");
			document.getElementById("problemShower").classList.add("text-danger");
			document.getElementById("problemShower").innerHTML = "Username is too short";
			return;
		}
		if(document.getElementById("username").value.length > 18){
			document.getElementById("problemShower").classList.remove("text-success");
			document.getElementById("problemShower").classList.add("text-danger");
			document.getElementById("problemShower").innerHTML = "Username is too long";
			return;
		}
		if(document.getElementById("firstPass").value.length < 5 && document.getElementById("firstPass").value.length > 0){
			document.getElementById("problemShower").innerHTML = "Password is too short";
			document.getElementById("problemShower").classList.remove("text-success");
			document.getElementById("problemShower").classList.add("text-danger");
			return;
		}
		if(document.getElementById("firstPass").value.length > 26){
			document.getElementById("problemShower").innerHTML = "Password is too long";
			document.getElementById("problemShower").classList.remove("text-success");
			document.getElementById("problemShower").classList.add("text-danger");
			return;
		}
		if(document.getElementById("confPass").value != document.getElementById("firstPass").value && document.getElementById("confPass").value.length > 0 && document.getElementById("firstPass").value.length > 0){
			document.getElementById("problemShower").innerHTML = "Passwords don't match";
			document.getElementById("problemShower").classList.remove("text-success");
			document.getElementById("problemShower").classList.add("text-danger");
			return;
		}
			document.getElementById("problemShower").classList.remove("text-danger");
			document.getElementById("problemShower").classList.add("text-success");
		    document.getElementById("problemShower").innerHTML = "Everything is fine";
	}
			
	   
			
	
	
	
	//PUT EMAIL VALIDATION BETWEEN USERNAME AND PASSWORD VALIDATION ^^
	
	
}

	
	

 
</script>


</body>
</html>