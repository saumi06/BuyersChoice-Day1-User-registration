<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Buyers Choice</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />
</head>
<style>
   footer {
      background-color: lightgrey;
      color: black;
      padding:25px;
    }
  </style>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Buyers Choice</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.jsp">Home</a></li>
      <li><a href="#">Clothing</a></li>
      <li><a href="#">Books</a></li> 
      <li><a href="#">Computer Appliances</a></li> 
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="signup.html">Sign Up</a></li>
      <li><a href="#">Login</a></li>
    </ul>
  </div>
</nav>
<h3>Hello, Guest<br><small>Please fill up the following fields:</small></h3>
<br>

<sf:form action="InsertUser" method="post" commandName="user" class="form-horizontal">
<!FIRST NAME>
<div>
	<div class="form-group">
	<label class=" control-label col-sm-2" for="fname">First Name:</label>
		<div class="col-sm-10">
			<sf:input  path="fsname" type="text" class="form-control" id="fname" placeholder="Enter First Name"/>
		</div>
	</div>
<!LAST NAME>
	<div class="form-group">
	<label class=" control-label col-sm-2" for="lname">Last Name:</label>
		<div class="col-sm-10">
			<sf:input type="text" path="lsname" class="form-control" id="lname" placeholder="Enter Last Name"/>
		</div>
	</div>
<!SEX>
	<div class="form-group form-inline">
	<label class="control-label col-sm-2" for="gender">Sex:</label>
		<div class="col-sm-10">
		<label class="radio-inline col-sm-2"><input type="radio" path="sex" name="gender" >Male</label>
		<label class="radio-inline col-sm-2"><input type="radio" path="sex" name="gender" >Female</label>
		<sf:errors path="sex" cssClass="error" />
		<label class="control-label col-sm-2" for="age">Age:</label> 
		<sf:input type="text" path="age" class="form-control col-sm-10" id="age" placeholder="Enter age"/>
		</div>
	</div>
<!ADDRESS>
	<div class="form-group">
	<label class="control-label col-sm-2" for="addr">Address:</label>
		<div class="col-sm-10">
		<sf:textarea class="form-control" path="address" rows="3" id="addr" placeholder="Enter Residential Address"/>
		</div>
	</div>

	<div class="form-group form-inline">
	<label class="control-label col-sm-2" for="phno">Phone no.:</label>
		<div class="col-sm-10">
		<sf:input type="number" path="mobile" class="form-control col-sm-4" id="phno" placeholder="Enter 10 digit phone no" 
		pattern="^[789]\d{9}$" required="true"/>
		<label class="control-label col-sm-4" for="emailid">Email:</label>
		<sf:input type="email" path="emailid" class="form-control col-sm-8" id="emailid" placeholder="Enter email address"/>
		</div>
	</div>

 <!USERNAME AND PASSWORD>
 <div class="well">
 	<div class=" form-group">
	<label class=" control-label col-sm-2" for="username">UserName:</label>
		<div class="col-sm-10">
			<sf:input  path="username" type="text" class="form-control col-sm-10" id="username" 
			placeholder="Enter desired username(min length: 3)" pattern=".{3,15}" required="true"  /> 
		</div>
	</div>
	<div class="form-group">
	<label class=" control-label col-sm-2" for="pswrd">Password:</label>
		<div class="col-sm-10">
			<sf:input type="password" path="password" class="form-control" id="pswrd" placeholder="Enter desired password"/>
		</div>
	</div>
	</div>
	<input class="col-sm-2"type="submit" value="Submit" />
</div>
</sf:form>
<footer>
<div class="pull-right">
          <ul class="list-inline">
              <li>BUYER'S CHOICE</li>
             <li><a href="#">About us</a></li>
             <li><a href="#">Contact</a></li>
             <li><a href="#">Terms</a></li>
          </ul>
      </div>
</footer>
</body>
</html>
