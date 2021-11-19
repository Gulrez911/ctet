<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="theme-color" content="#0f9d58" />
<link rel="shortcut icon" href="https://www.geeksforgeeks.org/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" async></script>
<link rel="stylesheet" href="https://authcdn.geeksforgeeks.org/css/bootstrap-social.css">
<script src='https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit' async defer></script>
<script src="https://apis.google.com/js/platform.js"></script>
<title>Login GeeksforGeeks</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://authcdn.geeksforgeeks.org/css/auth.min.css?ver=0.8">
<!--  -->
<link href="./resources/css/home.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div class="spinner-loading-overlay"></div>
	<div class="login-modal-div">
		<div class="modal-content">
			<!-- <div class="close-div"><span class="close">&times;</span></div> -->
			<div class="center">
				<a href="https://www.geeksforgeeks.org"> <img width="250px" src="https://media.geeksforgeeks.org/wp-content/cdn-uploads/login_modal_new_logo.png">
				</a>
			</div>
			<div class="white-bg center modal-header">
				<div class="login-register-div">
					<input id="tab1" type="radio" name="tabs" checked> <label class="tab-label" for="tab1">Sign In</label> <input id="tab2" type="radio" name="tabs"> <label class="tab-label"
						for="tab2">Sign Up</label>

					<section id="content1">
						<form method="POST" class="login-form" id="Login">
							<input type="hidden" name="reqType" value="Login">
							<div class="modal-form-group">
								<div class="extra"></div>
							</div>
							<div class="modal-form-group">
								<i class="input-icon material-icons">account_circle</i> <input name="user" id="luser" required="required" type="text" class="modal-form-input" placeholder="Username or email">
							</div>
							<div class="modal-form-group">
								<i class="input-icon material-icons">lock</i> <input name="pass" id="password" type="password" required="required" class="modal-form-input" placeholder="Password">
							</div>
							<div class="modal-form-group left">
								<input name="rem" type="hidden" value="false"> <input name="to" type="hidden" value="https://www.geeksforgeeks.org/"> <input name="rem" type="checkbox" checked> <label
									class="modal-form-label" for="remember">Remember me</label> <a class="pull-right forgot-link">Forgot Password</a>
							</div>
							<div class="modal-form-group left">
								<center>
									<div id="loginCaptcha"></div>
								</center>
							</div>
							<button class="btn btn-green signin-button" type="submit">Sign In</button>
						</form>
					</section>
					<section id="content2">
						<form method="POST" class="login-form" id="Register">
							<input type="hidden" name="reqType" value="Register">
							<div class="modal-form-group">
								<div class="extra"></div>
							</div>
							<div class="modal-form-group">
								<i class="input-icon material-icons">email</i> <input name="email" id="email" type="email" value="" required="required" class="modal-form-input" placeholder="E-mail">
							</div>
							<div class="modal-form-group">
								<i class="input-icon material-icons">lock</i> <input name="pass" id="reg-password" type="password" required="required" class="modal-form-input" placeholder="Password">
							</div>
							<div class="modal-form-group">
								<i class="input-icon material-icons">business</i> <input name="institute" id="organization" autocomplete="off" required="required" type="text" class="modal-form-input typeahead"
									placeholder="Institution/Organization">
							</div>
							<div class="modal-form-group">
								<center>
									<div id="registerCaptcha"></div>
								</center>
							</div>
							<input name="to" type="hidden" value="https://www.geeksforgeeks.org/">
							<button class="btn btn-green signup-button" type="submit">Sign Up</button>
						</form>
					</section>
					<div class="social-signin-div">
						<div class="social-divider">
							<span>or</span>
						</div>
						<div class="google-div social-div pull-left">
							<a id="glogin" href="javascript:void(0)" class="btn btn-social btn-google"> <span class="fa fa-google"></span>Google
							</a>
						</div>
						<div class="facebook-div social-div">
							<a id="fblogin" class="btn btn-social btn-facebook"> <span class="fa fa-facebook"></span>Facebook
							</a>
						</div>
						<p></p>
						<div class="linkedin-div social-div pull-left">
							<a id="inlogin" class="btn btn-social btn-linkedin"> <span class="fa fa-linkedin"></span>LinkedIn
							</a>
						</div>
						<div class="github-div social-div pull-left">
							<a id="gitlogin" class="btn btn-social btn-github"> <span class="fa fa-github"></span>GitHub
							</a>
						</div>
						<div style="padding: 10px 0px; font-size: 14px; font-weight: 500; padding-top: 50px;">
							<a href="https://www.geeksforgeeks.org/why-create-an-account-on-geeksforgeeks/" style="color: #0f9d58;" target="_blank">Why Create an Account?</a>
						</div>
						<div class="tnc-div">
							By creating this account, you agree to our <a href="https://www.geeksforgeeks.org/privacy-policy/" target="_blank">Privacy Policy</a> & <a href="https://www.geeksforgeeks.org/cookie-policy/"
								target="_blank">Cookie Policy</a>.
						</div>
					</div>
				</div>
				<div class="forgot-div">
					<form class="login-form" id="Forgot">
						<input type="hidden" name="reqType" value="Forgot">
						<div class="modal-form-group">
							<div class="extra"></div>
						</div>
						<div class="modal-form-group">
							<p class="left">Please enter your email address or userHandle.</p>
						</div>
						<div class="modal-form-group">
							<i class="input-icon material-icons">account_circle</i> <input name="user" id="fuser" type="text" class="modal-form-input" placeholder="Username/Email">
						</div>
						<div class="modal-form-group">
							<center>
								<div id="forgotCaptcha"></div>
							</center>
						</div>
						<div class="modal-form-group left">
							<a class="login-link">Back to Login</a>
						</div>
						<button class="btn btn-green center reset-button" type="submit">Reset Password</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
