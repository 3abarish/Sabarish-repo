<!-- /*
 	
Title 				: Online Voting System 
Author 				: Sabarish G
Created on 		 	: 04.10.2022
Last Modified Date	: 28.10.2022
Reviewed By 		: Anushya Narayanan
Reviewed on 		: 02.11.2022 
 
 */ -->



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap" rel="stylesheet">
<title>Home page</title>
<style>
* {box-sizing: border-box;}

body {
  margin: 0; 
  font-family: font-family: 'Montserrat', sans-serif;
  font-size: 1.5rem;
  background-color: black;
  color: #fff;
}

/*====== typography ======*/

h1 {
   font-weight: 700;
   color: #fff;
   font-size: 1.75rem;
}

h2 {
   font-weight: 700;
   color: #000;
   font-size: 1.75rem;
}

.intro {
  font-size: 1.15rem;
  margin-bottom: 2.5em;
}

span {
   color: #fda039;
}

.black {
  font-weight: 700;
  color: #000;
}

/*==== main-grid Layout ====*/

.main-grid {
    display: grid;
    grid-template-columns: minmax(1em, 1fr) minmax(0px, 500px) minmax(1em, 1fr);
    grid-column-gap: 2em;
}

/* ==== Layout ====*/

.header {
  background: #000;
}

.header-content{
  display: flex;
  flex-direction: row;
  grid-column: 2 / -2;
}

.logo {
  background: #fda039;
  color: #000;
  font-weight: 700;
  padding: 1em .5em;
  margin-top: 0;
  margin-bottom: 0;
  font-size: 1.25rem;
}

.navigation {
  position: fixed;
  background: #000;
  width: 100%;
  top: 0;
  right: 0;
  bottom: 0;
  left: 100%;
  transform: translateX(0);
  transition: transform 250ms;
}

.nav-list {
  display: flex;
  justify-content: space-around;
  align-items: center;
  flex-direction: column;
  list-style: none;
  margin: 0;
  padding: 0;
  height: 100%;
  font-size: 3rem;
}

.nav-link {
  text-decoration: none;
  color: #fda039;
}

.nav-link:hover,
.nav-link:focus,
.close-nav:hover,
.close-nav:focus,
.open-nav:hover,
.open-nav:focus {
  color: #fff;
  cursor: pointer;
}

.open-nav {
  border: 0;
  background: 0;
  color: #fff;
  padding: .5em;
  margin-left: auto;
  font-size: 1em;
}

.navigation-open {
  transform: translateX(-100%);
}

.close-nav {
    border: 0;
    background: 0;
    color: #fda039;
    font-weight: 700;
    font-size: 3rem;
    padding: .5em;
    position: absolute;
}

.current {
  border-bottom: 1px solid #fda039;
}

main {
  background-color: #fff;
  color: #000;
  grid-column: 2 /-2;
}

  .head {
  grid-column: 2 / -2;
  text-align: center;
  margin-top: 3em;
  margin-bottom: 3em;
}

.page-title {
  color: #000;
  font-size: 2.5rem;
  justify-self: center;
}

.main-image {
  grid-column: 2 / -2;
  object-fit: cover;
  max-width: 100%;
  display: block;
  box-shadow: 10px 10px 250px #000;
}

.main-text {
  grid-column: 2 / -2;
  margin-top: 3em;
  margin-bottom: 3em;
}

.section-title::after {
  content: "";
  display: block;
  width: 100px;
  height: 3px;
  margin-top: 1em;
  background: #fda039;
  margin-left: auto;
  margin-right: auto;
}

.sub {
  margin-top: 3em;
}


.footer > * {
    grid-column: 2 / -2;
}

.footer {
   background: #ebebeb;  
   color: #000;
}

.social {
  order: -1;
  font-size: 1.75rem;
  padding-top: 3em;
  padding-bottom: 2em;
  display: flex;
  flex-direction: row;
  justify-content: space-around;
}

.icon {
  color: #000;
}
.icon:hover,
.icon:focus {
  cursor: mouse;
  color: #fda039;
}

.footer-text {
  display: flex;
  flex-direction: column;
}

.end {
  text-align: center;
  margin-bottom: 0;
}
.copyright {
  font-size: 1.1rem;
  padding-top: 1em;
  text-align: center;
  font-weight: 700;
}

.footer-text,
.copyright {
  opacity: .4;
  }
 

  @media (min-width: 600px) {
      .main-grid {
        grid-template-columns: minmax(1em, 1fr) repeat(3, minmax(20px, 320px)) minmax(1em, 1fr);
    }
    
    .open-nav,
    .close-nav {
      display: none;
    }
    
    .navigation {
      position: initial;
    }
    
    .nav-list {
      flex-direction: row;
      justify-content: flex-start;
    }
    
    .nav-link {
      margin-left: 3em;
      font-size: 1.7rem;
    }
    
    .logo {
      padding: .5em 1em;
      text-align: center;
    }
    
   
    
.page-title::after {
    content: '';
    display: block;
    width: 100%;
    height: 5px;
    background: #fda039;
    margin-right: auto;
    margin-left: auto;
    margin-top: 10px;
}
    
    .main-image {
      grid-column: 2;
      margin-top: 1.3em;
  
    }
    
    .main-text {
      grid-column: 3 / span 2;
      margin-top: 0;
    }
    
    .section-title::after {
  margin-left: 0;
}
    
    
    
    .footer {
      padding-top: 2em;
      padding-bottom: 2em;
    }
    
    .footer-text {
      grid-column: 2 / span 2;
    }
    
    .social {
      grid-column: span1;
    }
    
    .icon {
      margin: .5em;
    }
    
    .footer-text {
      width: 50vw;
      margin-left: 0;
      order: -1;
    }
    
    .end,
    .copyright {
      text-align: start;
    }
  }

@media(min-width: 700px) {
  .page-title::after {
    content: '';
    display: block;
    width: 160px;
    height: 5px;
    background: #fda039;
    margin-right: auto;
    margin-left: auto;
    margin-top: 10px;
}
}
</style>

</head>
<body >




    
   
  
    <header class="header main-grid">
      <div class="header-content">
        <p class="logo">Home</p>
        <button aria-label="Open navigation" class="open-nav">&#9776;</button>
        <nav class="navigation">
          <button aria-label="Close navigation" class="close-nav">&times;</button>
          <ul class="nav-list">
                        <li class="nav-item"><a href="Adminlogin.jsp" class="nav-link">Admin</a></li>
            
                        <li class="nav-item"><a href="loginpage.jsp" class="nav-link">User</a></li>
                        
                        <li class="nav-item"><a href="contact.jsp" class="nav-link">Contact us</a></li>
            
          </ul>
        </nav>
      </div>
      
    </header>
    <main class="main-grid">
            <div class="head">
            <h1 class="page-title">Online Voting System</h1>
            <p class="subtitle">Right to Vote is an eVoting platform which enables you to create and manage elections.A comprehensive guide to buying and using online tools for improved leadership,greater security and more .</p>
            </div>
            <img class="main-image" src="home.jpeg" alt="two men in a coworking space">
            
            <div class="main-text">
                <h2 class="section-title">Easy to use</h2>
                <p>Right2Vote's mobile election system is very user friendly and voting can be done anytime and from anywhere within seconds. Voting can be done via mobile browser, website, android app or iOS app. Check the demo video here.</p>
              
              
              
                <h2 class="section-title sub">Purpose of an online voting system?</h2>
                <p>Online voting tools and online election voting systems help you make important decisions by gathering the input of your group in a way that’s systematic and verifiable.</p>
                <p>Oftentimes, these decisions are made on a yearly basis - during an event (e.g. your organization’s AGM) or at a particular time of the year. Or you might run ongoing polls amongst your group (e.g. anonymous employee feedback surveys).</p>
            </div>
            
            
      
    </main>
    
    <footer class="footer main-grid">
      <div class="footer-text">
        <p class="end">Awesome, you studied our page. Please follow us on our social media accounts. They are linked on the right site. You can`t miss the icons. If you liked our projects we would be more than happy to work for you.</p>
        <p class="copyright">© ovsadmin</p>
      </div>
      <div class="social">
        <a href="#" class="facebook icon"><i class="fab fa-facebook-f"></i></a>
        <a href="#" class="twitter icon"><i class="fab fa-twitter"></i></a>
        <a href="#" class="instagram icon"><i class="fab fa-instagram"></i></a>
      </div>
    </footer>
</body>
</html>