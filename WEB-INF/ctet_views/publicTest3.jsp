<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.ctet.data.*, java.text.*, java.util.*"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login V9</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<spring:url value="/resources/assets/student/images/icons/favicon.ico" var="c1" />

<link href="${c1}" rel="icon" type="image/png" />

<spring:url value="/resources/assets/student/vendor/bootstrap/css/bootstrap.min.css" var="c2" />

<link href="${c2}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/student/fonts/font-awesome-4.7.0/css/font-awesome.min.css" var="c3" />

<spring:url value="/resources/assets/student/images/icons/favicon.ico" var="c01" />

<link href="${c01}" rel="icon" type="image/png" />

<link href="${c3}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/student/vendor/animate/animate.css" var="c5" />

<link href="${c5}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/student/vendor/css-hamburgers/hamburgers.min.css" var="c6" />

<link href="${c6}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/student/vendor/animsition/css/animsition.min.css" var="c7" />

<link href="${c7}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/student/vendor/select2/select2.min.css" var="c8" />

<link href="${c8}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/student/vendor/daterangepicker/daterangepicker.css" var="c9" />

<link href="${c9}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/student/css/util.css" var="c10" />

<link href="${c10}" rel="stylesheet" type="text/css" />
<spring:url value="/resources/assets/student/css/main.css" var="c11" />

<link href="${c11}" rel="stylesheet" type="text/css" />

 
</head>
<body>
	<!--header start-->

	<!--header end-->

	<div class="container-login100" style="background-image: url('<%=request.getContextPath()%>/resources/assets/student/images/Al.jpg');">
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
			<form name="testloginform" class="userform" method="post" modelAttribute="testUserData" action="publicTestAuthenticate">
				<span class="login100-form-title p-b-37"> Sign In </span>
				<form:hidden path="testUserData.testId" />
				<form:hidden path="testUserData.user.companyName" />
				<form:hidden path="testUserData.user.companyId" />
<%-- 				<form:hidden path="testUserData.startTime" value="${startTime}" /> --%>
<%-- 				<form:hidden path="testUserData.endTime" value="${endTime}" /> --%>
				<div class="wrap-input100 validate-input m-b-20">
					<form:input type="email" path="testUserData.user.email" name="email" id="username" placeholder="Email" required="true" class="input100" />
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20">
					<form:input path="testUserData.user.firstName" name="firstName" id="firstName" placeholder="First Name" required="true" class="input100" />
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input m-b-20">
					<form:input path="testUserData.user.lastName" name="lastName" id="lastName" placeholder="Last Name" required="true" class="input100" />
					<span class="focus-input100"></span>
				</div>


				<div class="wrap-input100 validate-input m-b-20">
					<form:input path="testUserData.testName" name="testName" id="testName" required="true" disabled="true" class="input100" />
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-20">
					<form:input path="testUserData.user.companyName" name="companyName" id="companyName" disabled="true" class="input100" />
					<span class="focus-input100"></span>
				</div>

				<div class="container-login100-form-btn">
					<button class="login100-form-btn">Sign In</button>
				</div>


			</form>


		</div>
	</div>



	<div id="dropDownSelect1"></div>

</body>
</html>