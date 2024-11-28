<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %> 
   <%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core"prefix="c" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/sql"prefix="sql" %> --%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background-color:lightgrey;
}
.div{


  margin-left:400px;

}

button{
padding:15px 13px;
border:none;
border-radius:8%;
background-color:black;opacity:0.6;color:white;
margin-left:30px;
}

</style>
</head>
<body>
<button onclick="location.href='aftad.jsp'">Back</button><br>
 
<div class="div">
<h1>Vote list  of President</h1>
<%@page import="java.io.PrintWriter" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
try {
	Connection connection;
	String databasename = "login";
	String url = "jdbc:mysql://localhost:3306/" + databasename;
	String username = "root";
	String password = "19L239@kce";
	 
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection(url, username, password);
	Statement statement = connection.createStatement();
/* 	Statement statement1 = connection.createStatement();
 */	ResultSet resultset = statement.executeQuery("select  username,vote from preresult");
/* 	ResultSet resultset1 = statement.executeQuery("select  username,vote from viceresult");
 */	%>
	
	<table border="2" width="40%" >
	<tr>
	<th width="30%">username</th>
	<th width="30%">vote </th>
	</tr>
<%	
	while (resultset.next()){
		%>
		
	<table border="2" width="40%">
		 <tr>
		<td width="30%"><%=resultset.getString("username")%> </td>
		<td width="30%"><%=resultset.getString("vote")%> </td>

		</tr> 

		</table>

	
		<% 
				}
				}

				catch (Exception e) {
				e.printStackTrace();
				}
				%>

<br><br>
<h1>Vote list of Vice-President</h1> 

	<%
try {
	Connection connection;
	String databasename = "login";
	String url = "jdbc:mysql://localhost:3306/" + databasename;
	String username = "root";
	String password = "19L239@kce";
	Class.forName("com.mysql.cj.jdbc.Driver");
	connection = DriverManager.getConnection(url, username, password);
	Statement statement1 = connection.createStatement();
	
	ResultSet resultset1 = statement1.executeQuery("select  username,vote from viceresult");
	%>
	
	<table border="2" width="40%">
	<tr>
	<th width="20%">username</th>
	<th width="20%">vote </th>
	</tr>
<%	
	while (resultset1.next()){
		%>
		
	<table border="2" width="40%">
		 <tr>
		<td width="20%"><%=resultset1.getString("username")%> </td>
		<td width="20%"><%=resultset1.getString("vote")%> </td>

		</tr> 

		</table>

	
		<% 
				}
				}

				catch (Exception e) {
				e.printStackTrace();
				}
				%>

</div>
<%-- <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
url="jdbc:mysql://localhost:3306/login" 
user ="root" password="19L239@kce"/>

<sql:query dataSource="${db}" var="result">
select  username,vote from preresult;
</sql:query> --%>



<%-- <sql:query dataSource="${db}" var="result">
select  username,vote from result ;
</sql:query>


<table border="2" width="30%">
<tr>
<th>username</th>
<th>vote </th>
</tr>

<c:forEach var="row" items="${query2.row })">

 <tr>
<td><c:out value ="${row.username}"/> </td>
<td><c:out value ="${row.vote}"/> </td>
</tr> 

</c:forEach>

</table> --%>






</body>
</html>