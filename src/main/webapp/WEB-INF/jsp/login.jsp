<!DOCTYPE html>
<%@include file="taglib.jsp" %>
<html>
<head>
	<title>Login</title>
	<link href="${rootURL}resources/bootstrap/css/bootstrap.css" media="screen" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${rootURL}resources/js/app.js"></script>

</head>
<body>
<div class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-8 col-xs-offset-2">
	<c:if test="${param.error != null}">
		<div class="alert alert-danger">
			Invalid Username and Password.
		</div>
	</c:if>
	<c:if test="${param.logout != null}">
		<div class="alert alert-success">
			You have been logged out.
		</div>
	</c:if>
</div>

<div class="row">
	<div class="col-lg-7 col-lg-offset-5 col-md-10
	col-sm-12 col-sm-offset-4 col-xs-6 col-xs-offset-3">
		<form:form id="loginForm" method="post" action="${rootURL}login" modelAttribute="user"
		           class="form-horizontal" role="form">
			<h2 class="col-lg-offset-1 col-md-offset-1
			col-sm-offset-1 col-xs-offset-4">Sign In</h2>
			<div class="form-group">
				<div class="col-sm-4">
					<input type="text" id="username" name="username" class="form-control" placeholder="User name" />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-4">
					<input type="password" id="password" name="password" class="form-control" placeholder="Password" />
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-4">
					<button type="submit" class="btn btn-primary col-lg-6 col-lg-offset-3
                     col-md-8 col-md-offset-2 col-sm-6 col-sm-offset-3 col-sm-6 col-sm-offset-3">Sign In</button>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-4">
					<a class="col-lg-5 col-lg-offset-4
					col-md-6 col-md-offset-4 col-sm-6
					col-sm-offset-4" href="/registration" style="color: rgb(77, 173, 74);">Sign Up</a>
				</div>
			</div>


		</form:form>
	</div>
</div>
</body>
</html>