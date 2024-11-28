<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>after login</title>
<style>
*{
padding:0;
margin:0;
box-size:border-box;
}

body{
 background-position: center;
 background-size: cover;
 background-repeat:no-repeat;
width:100%;height:100vh;
}

button{
color:white;
border:none;
margin-left:10px;
padding:5px;
background-color:black;
}
button:hover{
color:white;
background-color:lime;opacity:0.9;
}



p{
display:flex;
justify-content:center;
margin-top:15%;
}
</style>
</head>
<body background=vote-key.jpg>



<%

//String uuu=request.getParameter("username");
///out.println("- - - Hi    "+uuu);

String name=request.getParameter("username");
session.setAttribute("splname", name);
out.println("<h3 style='color:violet;font-size:25px;display:flex;'>Welcome  "+ name +" !!!!</h3>" );

%>

<p style="font-size:30px;color:yellow;"><b>Click- GoTo -for  Vote </b> : <button onclick="location.href='voteprejsp.jsp'"> GoTO</button></p>




</body>
</html>