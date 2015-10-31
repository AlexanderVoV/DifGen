<!DOCTYPE html>
<%@include file="taglib.jsp" %>
<html>
<head>
	<title>Log In</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet"/>
	<link href="/resources/css/styles.css" rel="stylesheet"/>
	<script type="text/javascript" src="/resources/jquery/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="/resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/resources/js/app.js"></script>

</head>
<body>
<div class="container">
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
		<div class="col-lg-7 col-lg-offset-5 col-md-11
	col-sm-12 col-sm-offset-4 col-xs-4 col-xs-offset-3">
			<form:form id="loginForm" method="post" action="${rootURL}login" modelAttribute="user"
			           class="form-horizontal" role="form">
				<h2 class="col-lg-offset-1 col-md-offset-1
			col-sm-offset-1 col-xs-offset-4">Sign In</h2>
				<div class="form-group">
					<div class="col-sm-4">
						<input type="text" id="username" name="username" class="form-control" placeholder="Username" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-4">
						<input type="password" id="password" name="password" class="form-control" placeholder="Password" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-4">
						<button type="submit" class="btn btn-primary">Sign In</button>
						<button class="btn btn-success col-md-offset-2" data-toggle="modal" data-target="#regModal">Sign Up</button>
					</div>
				</div>
				<div class="row"><h2>${message}</h2></div>
			</form:form>
			<div class="modal fade" id="regModal">
				<div class="modal-dialog">
					<div class="modal-content">
						<%--Modal Header--%>
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times</button>
							<h2 class="text-center">Sign Up</h2>
						</div>
						<%--Modal Body--%>
						<div class="modal-body">
							<form:form id="regForm" class="form col-md-12 center-block" modelAttribute="user"
							      role="form">
								<div class="form-group">
									<input id="rusername" type="text" class="form-control input-lg" placeholder="Username" required/>
								</div>
								<div class="form-group">
									<input id="rpassword" type="password" class="form-control input-lg" placeholder="Password" required/>
								</div>
								<div class="form-group">
									<button id="signUp" type="submit" class="btn btn-success" onclick="registration()">Sign Up</button>
									<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
								</div>
							</form:form>
						</div>
							<div class="modal-footer"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>