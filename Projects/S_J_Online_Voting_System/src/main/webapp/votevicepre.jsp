<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vote for vice-president</title>
<style>
body {
  font-family: Arial, sans-serif;
 
}
form {
 text-align: center;
  margin: 0 auto;
  width: 50%;
}
h1{
text-align: center;}
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
button{
background-color:#4CAF50;
 color: white;
 padding: 12px 20px;
margin-left:40px;
margin-top:20px;
 border:none;
}

</style>
</head>
<body>
<h1>Vote for Vice-President </h1>
<form action="countvice" method ="post" >
    <fieldset>
      <legend>Candidate 1</legend>
      <input type="radio" name="vote" value="candidate1">
    </fieldset>
    <fieldset>
      <legend>Candidate 2</legend>
      <input type="radio" name="vote" value="candidate2">
    </fieldset>
    <fieldset>
      <legend>Candidate 3</legend>
      <input type="radio" name="vote" value="candidate2">
    </fieldset>
    <input type="submit" value="Vote">
  </form>
</body>
</html>