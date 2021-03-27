<!doctype html>
<html lang="en" class="h-100">
<head>
	<%@include file="includes/head-static.jsp"%>
</head>
<body class="d-flex flex-column h-100">
	<%@include file="includes/header.jsp"%>
	<div id="patientWrapper" class="container-fluid">
		<form>
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="inputEmail3">
				</div>
			</div>
			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="inputPassword3">
				</div>
			</div>
			<fieldset class="form-group row">
				<legend class="col-form-label col-sm-2 float-sm-left pt-0">Radios</legend>
				<div class="col-sm-10">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
						<label class="form-check-label" for="gridRadios1"> First radio </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
						<label class="form-check-label" for="gridRadios2"> Second radio </label>
					</div>
					<div class="form-check disabled">
						<input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" disabled>
						<label class="form-check-label" for="gridRadios3"> Third disabled radio </label>
					</div>
				</div>
			</fieldset>
			<div class="form-group row">
				<div class="col-sm-10 offset-sm-2">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="gridCheck1">
						<label class="form-check-label" for="gridCheck1"> Example checkbox </label>
					</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-10">
					<button type="submit" class="btn btn-primary">Sign in</button>
				</div>
			</div>
		</form>
	</div>
	<%@include file="includes/footer.jsp"%>
	<%@include file="includes/body-static.jsp"%>
</body>
</html>
