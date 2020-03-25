<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">
<title>SaleStat - Signup</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<link href="css/font-awesome.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<style>
.color-red {
	color: #F00
}

.login-form {
	max-width: 500px;
	margin-top: 138px;
}
</style>
</head>

<body class="login-img3-body">

	<div class="container">

		<form class="login-form" onsubmit='return false' action="/Car/Edit/17"
			id="myForm" method="post" name="myForm">
			<div class="login-wrap">
				<p class="login-img">
					<i class="icon_lock_alt"></i>
				</p>
				<p id="credentials">SignUp</p>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<select id="role" name="role" class="form-control" autofocus>
						<c:forEach items="${roleList}" var="role">
							<option value="${role.role_id}"><c:out
									value="${role.role_abbr}" /></option>
						</c:forEach>
					</select>
				</div>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<select id="division" name="division" class="form-control"
						autofocus>
						<c:forEach items="${divisionList}" var="division">
								<option value="${division.division_id}"><c:out
										value="${division.division_name}" /></option>
							</c:forEach>
					</select>
				</div>

				<div class="row">
					<div class="col-md-6 input-group">
						<span class="input-group-addon"><i class="icon_profile"></i></span>
						<select onChange="stateChanged()" id="state" name="state"
							class="form-control" autofocus>
							<c:forEach items="${stateList}" var="state">
								<option value="${state.state_id}"><c:out
										value="${state.state_name}" /></option>
							</c:forEach>
							<option value="9999"><c:out
										value="ALL INDIA" /></option>
						</select>
					</div>


					<div class=" col-md-6 input-group">
						<span class="input-group-addon"><i class="icon_profile"></i></span>
						<select id="headquarter" name="reportingto"
							class="form-control" autofocus>
							<option value="${state.state_id}">Choose a number</option>
						</select>
					</div>
				</div>

				<div class="row">
					<div class="col-md-6 input-group">
						<span class="input-group-addon"><i class="icon_profile"></i></span>
						<select id="doctor" name="doctor" class="form-control" autofocus>
							<option value="volvo">Visiting Doctor</option>
							<option value="1">PAATNAIK</option>
							<option value="2">DURGESHWAR</option>
							<option value="3">MANDODARAI</option>
						</select>
					</div>
					<div class="col-md-6 input-group">
						<span class="input-group-addon"><i class="icon_profile"></i></span>
						<select id="reportingto" name="reportingto" class="form-control"
							autofocus>
							<option value="volvo">Reporting To</option>
							<option value="1">PAATNAIK</option>
							<option value="2">DURGESHWAR</option>
							<option value="3">MANDODARAI</option>
						</select>
					</div>
				</div>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_profile"></i></span>
					<input type="text" id="username" class="form-control"
						placeholder="Username" autofocus>
				</div>
				<div class="input-group">
					<span class="input-group-addon"><i class="icon_key_alt"></i></span>
					<input type="password" id="password" class="form-control"
						placeholder="Password">
				</div>
				<button onclick="signup()" class="btn btn-info btn-lg btn-block"
					type="submit">Signup</button>
			</div>
		</form>
		<div class="text-right">
			<div class="credits">
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="js/scripts.js"></script>

	<script>
		function signup() {

			var role = document.getElementById("role").value;
			var division = document.getElementById("division").value;
			var state = document.getElementById("state").value;
			var headquarter = document.getElementById("headquarter").value;
			var doctor = document.getElementById("doctor").value;
			var reportingto = document.getElementById("reportingto").value;
			var username = document.getElementById("username").value;
			var password = document.getElementById("password").value;

			var signup = {

				role_id : role,
				username : username,
				password : password,
				division_id : division,
				state_id : state,
				headquarter_id : headquarter,
				doctor_id : doctor,
				reporting_to : reportingto

			}
			console.log(signup); //remove all console.log once the whole module is deployed and ready for UAT.

			$
					.ajax({
						url : '/signup_data',
						type : 'post',
						dataType : 'text',
						contentType : 'application/json',
						success : function(data) {
							if (data == "success") {
								window.location.href = "login";
							} else {
								document.getElementById("credentials").innerHTML = "<span style='color: red;'> Username / password incorrect </span>";
							}
							console.log("SIGNUP : ", data);
						},
						data : JSON.stringify(signup)
					});
		}
	</script>


	<script>
		function stateChanged() {
			var state_id = document.getElementById("state").value;
			var select = document.getElementById("headquarter");

			var headquarterdropdownjson = {
				state_id : state_id
			}
			console.log(headquarterdropdownjson);
			$.ajax({
				url : '/dynamic_headquarter_dropdown',
				type : 'post',
				dataType : 'text',
				contentType : 'application/json',
				success : function(data) {
					if (data == "success") {
					}

					while (select.hasChildNodes()) {
						select.removeChild(select.firstChild);
					}
					var options = JSON.parse(data);
					
					for (var i = 0; i < options.length; i++) {

						var opt = options[i];
						var el = document.createElement("option");
						var str = opt.toString();
						var val = str.split(",");
						el.textContent = val[1];
						el.value = val[0];
						console.log("options : "+val[0]+" - " +el.value);
						select.appendChild(el);
					}

					console.log("dynamic_headquarter_dropdown : ", JSON
							.parse(data));

				},
				data : JSON.stringify(headquarterdropdownjson)

			});
		}
	</script>
</body>
</html>
