<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
*{
padding:0;marigin:0;
}
body{
 background-repeat: no-repeat;
background-position: fill;
 background-size: 100% 100vh;
 
justify-content:center;
font-size:20px;
box-sizing:border-box;
}
.aft{
display:flex;
justify-content:center;
align-item:center;
margin-top:10%;
background-color:pink;opacity:0.7;
width:40%;
border:none;
box-shadow:0 0 20px 0 black;border-radius:10px;
margin-left:400px;

}
button{
padding:15px 10px;
border:none;
border-radius:8%;
background-color:black;opacity:0.6;color:white;
margin-left:30px;
}
button:hover{
background-color:black;
color:white;
}
</style>
</head>
<body background="pho.jpg">


<div class="aft">
<pre>
 <u><h1>Results  !</h1></u>
<%
String url="jdbc:mysql://localhost:3306/login";
String query1="select  vote from preresult  group by vote order by count(*) desc limit 1;";
String query2="select  vote from viceresult  group by vote order by count(*) desc limit 1;";


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection(url,"root","19L239@kce");
Statement st1=con.createStatement();
Statement st2=con.createStatement();

ResultSet rs1=st1.executeQuery(query1);
ResultSet rs2=st2.executeQuery(query2);

rs1.next();
rs2.next();
%>
 For President :<%= rs1.getString(1) %><br>
 
For Vice-President :<%= rs2.getString(1) %><br> 

 <table>
<tr>
<th><button onclick="location.href='Details.jsp'">View Details</button><br></th>
<th><button onclick="location.href='Home.jsp'">Return Home</button></th>
<tr>
</table> 


</pre>
</div>
</body>
</html>