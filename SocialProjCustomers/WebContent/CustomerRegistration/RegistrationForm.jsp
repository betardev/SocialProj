<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor = "FFCC00">

<form name = "registerForm" action = "CustomerInfoGather.jsp">
 <table>
  <tr> 
   <td> Username :  </td>
   <td> <input name = "username"/>  </td>
  </tr>
  <tr> 
   <td> email :  </td>
   <td> <input name = "email"/>  </td>
  </tr>
  <tr> 
   <td> Password :  </td>
   <td> <input type = "password" name = "password"/>  </td>
  </tr>
  <tr> 
   <td> confirm password :  </td>
   <td> <input type = "password" name = "cnfpassword"/>  </td>
  </tr>
  <tr>
   <td/>
   <td>
   <input type = "submit" name = "submitinfobtn" value = "Confirm">
   </td>
  </tr>
 </table>
</form>

</body>
</html>