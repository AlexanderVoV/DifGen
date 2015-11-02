<!DOCTYPE html>
<%@page import="com.springapp.web.controllers.UserController"%>
<%@include file="taglib.jsp"%>
<html>
<head>
<title>DifferencesGenerator</title>

<link href="/resources/bootstrap/css/bootstrap.css" media="screen" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/resources/jquery/jquery-1.10.2.js"></script>
<script type="text/javascript" src="/resources/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="/resources/js/app.js"></script>

</head>
<body>
	<div class="container">
		<div class="header-panel text-center"><h1>DifferencesGenerator</h1></div>
		<div class="row">
			<form method="post" enctype="multipart/form-data">
				<div class="col-md-6 col-sm-6">
					File to upload: <input type="file" name="file1"><br />
					<h3>${file1Message}</h3>
				</div>
				<div class="col-md-6 col-sm-6">
					File to upload: <input type="file" name="file2"><br />
					<h3>${file2Message}</h3>
				</div>
				<div class="row">
					<div class="col-md-12 center-block">
						<input type="submit" formaction="/upload" value="Upload">
					</div>
				</div>
			</form>
		</div>
		<div class="row"></div>
	</div>
</body>
</html>