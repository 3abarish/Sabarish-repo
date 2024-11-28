<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
background-position: cover;
 background-size: 100% 100vh;
 background-repeat: no-repeat;


margin:auto;
width:100%;
font-family:'Avenir',sans-serif;


}
h1{
display:flex;justify-content:center;
}
.firstHalf {
    width: 75%;
    display: flex;
    flex-direction: column;
    justify-content: center;
}
footer{

position:fixed;
left:0;bottom:0;
width:100%;
background-color:lightgrey;
color:Black;
text-align:center;
}

.box-main {

 background:white;
 opacity:0.8;
 
    display: flex;
    justify-content: center;
    align-items: center;
    color: black;
    max-width: 50%;
    margin: auto;
    height: 80%;
   
}
.text-small {
    font-family: "Sansita Swashed", cursive;
    font-size: 18px;
    font-weight: bold;
    text-align: center;
     color: black;
    }
    .center {
    text-align: center;
    font-weight: bold;
}

.text-big {
    font-family: "Piazzolla", serif;
    font-weight: bold;
    font-size: 41px;
    text-align: center;
     color: black;
}

fieldset {
  border: 1px solid #ccc;
  margin: 20px 0;
  padding: 20px;
}
legend {
  font-weight: bold;
  margin-bottom: 10px;
  
    margin-left: 540px;
  transform:scale(2);
  color:white;
  font-family: "Sansita Swashed", cursive;
}

button{
margin:10px;
padding:10px;
}

</style>
</head>
<body background="contact.jpg">
<button onclick="location.href='Home.jsp'")> H O M E </button>

 <fieldset>
<legend>Online Voting System</legend>
 </fieldset>
<div class="box-main">
            <div class="firstHalf">       
                <p class="text-big">Contact Us</p>
 
                <p class="text-small">
                    You can Contact Us if you face any problem
                </p>
 
                <br>
                <p class="center"
                   style="text-decoration:none;
                          color:black;">
                    Click on the below options to Contact us
                </p>
 
            </div>
        </div>




</body>
<footer>
<p>contact & help :
<a href="mailto:ovsadmincontact79@gmail.com">ovsadmincontact79@gmail.com
</a>
</p>
</footer>

</html>