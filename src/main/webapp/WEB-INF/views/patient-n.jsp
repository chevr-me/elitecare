<!doctype html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
	<link href="/static/elitecare/css/elitecare.css" rel="stylesheet">
</head>
<body>
	<div id="container" class="bg-grey">
		<form:form method="post" action="/patient/create" modelAttribute="patient">
			<table>
				<tr>
					<td>Name</td>
					<td><form:input path="name" id="name"/></td>
				</tr>
				<tr>
					<td>Phone</td>
					<td><form:input path="phone" /></td>
				</tr>
				<tr>
					<td>DOB</td>
					<td><form:input path="dob" /></td>
				</tr>
				<tr>
					<td>Gender</td>
					<td><form:select path="gender">
							<form:option value=""></form:option>
							<form:option value="M">Male</form:option>
							<form:option value="F" label="Female" />
						</form:select></td>
				</tr>
				<tr>
					<td><input type="submit" value="Save" id="submitBtn"/></td>
				</tr>
			</table>
		</form:form>
	</div>
	<script src="/static/jquery/js/jquery.js"></script>
	<script type="text/javascript">
		/* var submitBtn = document.getElementById("submitBtn");
		submitBtn.addEventListener("click", function(e){
			var name = document.getElementById("name");
			if (name.value === "") {
				e.preventDefault();
				e.stopPropagation();
				alert("Name is required");
			}
		}); */
		
		(function(){
			$("#submitBtn").click(function(e){
				if ($("#name").val()==="" || $("#phone").val()==="" || $("#dob").val()==="" || $("#gender").val()==="") {
					alert("Please enter required fields.")
					return false;
				}
			});
		})();
	</script>
</body>
</html>