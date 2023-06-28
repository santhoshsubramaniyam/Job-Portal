<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html class="wide" lang="en">
  <head>
    <title>Candidate login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width height=device-height initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <script src="/cdn-cgi/apps/head/3ts2ksMwXvKRuG480KNifJ2_JNM.js"></script><link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:400%7CUbuntu:300,400,500,600,700">
    <link rel="stylesheet" href="css/index.css">
    
    <link href="https://emicrotasks.com/assets/global/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://emicrotasks.com/assets/global/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/global/css/line-awesome.min.css">

  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/animate.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/slick.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/odometer.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/nice-select.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/main.css">
  <link rel="stylesheet" href="https://emicrotasks.com/assets/templates/basic/css/custom.css">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     </head>
     <style>
 *,
*::before,
*::after {
  box-sizing: border-box;
}

html {
  font-size: 62.5%;
}

body {
  font-size: 1.6rem;
  font-weight: 200;
  font-family: "Montserrat", sans-serif;
  min-height: 100vh;
}

.main-page {
  display: flex;
  flex: 1;
  align-items: stretch;
  justify-content: space-between;
  height: 100vh;
  overflow: hidden;
}

.form {
  padding: 4rem 0;
  border-style: solid;
  border-left: 0;
  border-right: 0;
  border-bottom: 0;
  width: 45rem;
}
.form__legend {
  text-align: center;
  padding: 0 0.5rem;
}
.form__body {
  display: flex;
  flex-direction: column;
  align-items: center;
}
.form__group {
  display: flex;
  flex: 1;
  justify-content: space-between;
  align-items: center;
}
.form__input {
  display: block;
  width: 100%;
  max-width: 45rem;
  background-color: #EEF5F3;
  border: none;
  outline: none;
  height: 5rem;
  border-radius: 2rem;
  padding: 12px 1.5rem;
  transition: background 0.3s;
  color: #88908E;
  font-size: 1.8rem;
  margin-bottom: 2rem;
}
.form__input-half {
  display: inline-block;
  width: 48.5%;
}
.form__input-checkbox:checked {
  filter: invert(100%) hue-rotate(118deg) brightness(1.2);
}
.form__input::placeholder {
  font-size: 1.6rem;
  font-weight: 400;
  font-family: inherit;
  opacity: 0.75;
}
.form__input:focus, .form__inputactive {
  background: #FFFFFF;
  border: 1px solid #E1EAE7;
}

.switch {
  z-index: 100;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background-color: var(--primary_lite);
  padding: 0 2rem;
  color: #FFFFFF;
}
.switch__header {
  margin-bottom: 4rem;
}
.switch__text-container {
  text-align: center;
}

.login, .signup {
  display: flex;
  opacity: 1;
  flex-basis: 0;
  flex-shrink: 1;
  flex-grow: 1;
  padding: 2rem 4rem;
  flex-direction: column;
  align-items: center;
  overflow-Y: auto;
}
.login__header {
  margin-bottom: 0px;
}

.signup__header {
  margin-bottom: -87px;
}
.login__byline, .signup__byline {
  margin-bottom: 4rem;
}

.social-media__container {
  display: flex;
  flex-direction: row;
  flex: 1;
  align-items: center;
  justify-content: center;
  margin-bottom: 4rem;
}
.social-media__icon:not(:last-child) {
  margin-right: 1rem;
}

.header {
  text-align: center;
  font-weight: 200;
}

.icon {
  cursor: pointer;
}

.btn {
  width: 23.5rem;
  min-height: 5.5rem;
  background-color: var(--primary_lite);
  border-radius: 3rem;
  outline: 0;
  border: none;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #FFFFFF;
  font-family: "Raleway", sans-serif;
  font-size: 1.8rem;
  line-height: 2rem;
  text-align: center;
  margin: 3.2rem 0;
  transition: 0.3s;
}
.btn:hover, .btn:active {
  background-color: #0d6efd;
}
.btn-white {
  background-color: #FFFFFF;
  color: var(--primary_lite);
  box-shadow: 0 12px 24px rgba(34, 51, 49, 0.13);
}
.btn-white:hover, .btn-white:active {
  background-color: #FFFFFF;
  color: #0d6efd;
  box-shadow: none;
}

.hide-view {
  opacity: 0;
  flex-basis: 0;
  flex-shrink: 1;
  flex-grow: 0.000001;
  overflow: hidden;
  padding: 0;
  margin: 0;
}

.signup.hide-view {
  transform: translateX(-50vw);
}

.login.hide-view {
  transform: translateX(50vw);
}

.smooth {
  transition: transform 0.3s linear, opacity 0.3s ease-in-out, flex-grow 0.9s cubic-bezier(0.19, 1, 0.22, 1);
  padding-top: 15rem;
}
     </style>
     <body>

        
<div class="main-page">

    <div class="smooth login" id="login">
    <h3 class="login__header header">Welcome JobSeeker</h3>
    <p class="login__byline">It's good to see you again</p>
    
    
    <div class="sel" style="display: flex;">
    <a href="employerSignup.jsp">Employer</a>&nbsp;/&nbsp;<a href="javascript:void(0)">Candidate</a>
    </div>
    <fieldset class="form">
    
      <!-- <legend class="form__legend">OR</legend> -->
    <form action="candidateLogin" class="form__body form-login" method="post">  
      <input type="email" required="required" class="form__input" id="exampleInputEmail1" aria-describedby="emailHelp" name="candidateEmail" placeholder="email">
      <input type="password" required="required"class="form__input" id="exampleInputPassword1"  name="candidatePassword" placeholder="Password">  
       <button class="btn" type="submit">Sign in</button> 
    </form>  
      </fieldset>
  </div>
  
    <div class="switch">
    <div class="switch__text-container"  id="switch-text">
      <h3 class="switch__header header">Not yet registered?</h3>
      <p>Sign up and discover what we can do for you</p>
    </div>
     <button class="btn-white btn" id="switch-button">Sign up</button>
     <button class="btn-white btn" ><a href="index.jsp">Back to home</a></button>
  </div>
    
      <div class="smooth signup hide-view" id="signup">
    <h3 class="signup__header header">Create a new account</h3>
    <p class="signup__byline">Find your future</p>
    
    
    <fieldset class="form">
      <!-- <legend class="form__legend">OR</legend> -->
    <form action="addCandidate"  method="post" enctype="multipart/form-data">
      <div class="input__group">
          <input class="form__input form__input-half" type="text" name="candidateFName" placeholder="First Name">
          <input class="form__input form__input-half" type="text" name="candidateLName" placeholder="Last Name">
      </div>
      <div class="input__group">
         <input class="form__input form__input-half" type="email" name="candidateEmail" placeholder="Email">
         <input class="form__input form__input-half" type="password" name="candidatePassword" placeholder="Password">      
      </div>
      
      <div class="input__group">
      
      <input type="file" class="form__input form__input-half"  name="candidateProfile">
      <input class="form__input form__input-half" type="number" name="candidatePhone" placeholder="Phone">
      </div>
      
      
      <div class="input__group">
      </div>
       <button class="btn" style="margin-left: 110px;" type="submit">Sign up</button> 
    </form>  
      </fieldset>
  </div>
    
  </div>
  <script>
    const login = document.getElementById('login');
const signup = document.getElementById('signup');

const showText = {
  login : {
    header : 'Not yet a member?',
    byline : 'Sign up and discover what we can do for you',
    buttonText: 'Sign up'
  },
  
  signup : {
    header : 'Already a member?',
    byline : 'Sign in and see what\'s new since your last visit',
    buttonText: 'Sign in'    
  }
}
const switchButton = document.getElementById('switch-button');
const switchText =  document.getElementById('switch-text');

switchButton.addEventListener('click', () => {
  login.classList.toggle('hide-view');
  signup.classList.toggle('hide-view');
  login.classList.contains('hide-view') ? changeSwitchText('signup') : changeSwitchText('login')
})

function changeSwitchText(el){
  switchText.children[0].innerText = showText[el].header;
  switchText.children[1].innerText = showText[el].byline;
  switchButton.innerText = showText[el].buttonText;
}
  </script>
     </html>