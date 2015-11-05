<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@include file="taglib.jsp" %>
<%@page import="com.springapp.web.controllers.UserController"%>

<!DOCTYPE html>
<html>
<head>
	<title>DifferencesGenerator</title>

	<link href="/resources/bootstrap/css/bootstrap.css" media="screen" rel="stylesheet" type="text/css" />
	<link href="/resources/css/styles.css" rel="stylesheet">
	<script type="text/javascript" src="/resources/jquery/jquery-1.10.2.js"></script>
	<script type="text/javascript" src="/resources/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="/resources/js/app.js"></script>

</head>
<body>
<div class="container">
	<div class="header-panel">
		<div class="row text-center"><h1>Differences Generator</h1></div>
		<div class="row col-xs-8 ">
			<div class="col-md-10">
				<h3>Name: <sec:authentication property="name"/></h3>
			</div>
			<div class="col-lg-1 col-lg-offset-1 col-md-1 col-md-offset-1">
				<a id="logout" class="btn btn-info" href="${rootUrl}logout">Logout</a>
			</div>
		</div>
	</div>
	<div class="row">
		<form method="post" enctype="multipart/form-data">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-4 col-xs-8 col-xs-offset-1">
					First file: <input type="file" class="file" name="file1">
					<h4>${file1Message}</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-4 col-xs-8 col-xs-offset-1">
					Second file: <input type="file" name="file2">
					<h4>${file2Message}</h4>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2 col-md-offset-5 col-sm-2 col-sm-offset-5 col-xs-10 col-xs-offset-1">
					<button id="btnUpload" type="submit" formaction="/upload" class="btn btn-danger btn-lg">Upload</button>
					<c:if test="${condition == true}">
						<a id="btnSave" formmethod="get" href="/download" class="btn btn-warning btn-lg">Save</a>
					</c:if>
				</div>

			</div>
		</form>

	</div>
	<div class="row">
		<div class="col-lg-6 col-md-6">${file}</div>
	</div>
</div>
</body>
</html>