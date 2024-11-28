<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vote for president</title>

<script>
function funpre(){
var a=	document.getElementById('id1');
}


</script>
<style>
body {
  font-family: Arial, sans-serif;
  text-align: center;
}
form {
  margin: 0 auto;
  width: 50%;
}
fieldset {
  border: 1px solid #ccc;
  margin: 20px 0;
  padding: 20px;
}
legend {
  font-weight: bold;
  margin-bottom: 10px;
}
input[type="radio"] {
  margin-right: 10px;
  transform:scale(2);
  
}
input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
}


</style>

</head>
<body>



<h1>Vote for President </h1>
<form action="countpre" method ="post">
  <%-- <% 
String username=(String)session.getAttribute("splname");

%> --%>
     <fieldset>
      <legend>Candidate 1</legend>
     			 <input type="radio" name="vote"  value="candidate1">
    </fieldset>
    <fieldset>
      <legend>Candidate 2</legend> 
    			  <input type="radio" name="vote"  value="candidate2">
    </fieldset>
    <fieldset>
      <legend>Candidate 3</legend>
     			 <input type="radio" name="vote" value="candidate2">
    </fieldset>
    
  <!-- 
    <select name="vote">
     <option  value="none" id="none"> Select </option>
    <option  value="candidate1" id="candidate1"> Candidate 1</option>
     <option value="candidate2" id="candidate2"> Candidate 2</option>
      <option value="candidate3" id="candidate3"> Candidate 3</option>
      </select>
    -->
    <input type="submit" value="Vote">
  </form>
</body>
</html>