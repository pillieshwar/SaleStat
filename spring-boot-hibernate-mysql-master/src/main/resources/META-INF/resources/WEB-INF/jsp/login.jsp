<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">
<title>SaleStat - Login</title>

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
.color-red{
color: #F00
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
				<p id="credentials">Enter your credentials</p>
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
				<!-- <label class="checkbox"> <input type="checkbox" //forgot password feature future scope
					value="remember-me"> Remember me <span class="pull-right">
						<a href="#"> Forgot Password?</a>
				</span>
				</label> -->
				<button class="btn btn-primary btn-lg btn-block"
					onclick="loginFunction()" type="submit">Login</button>
				<button onclick="signup()" class="btn btn-info btn-lg btn-block" type="submit">Signup</button>
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
	
	function signup(){
		window.location.href = "signup";
	}
	
	
		function loginFunction() {
			var username = document.getElementById("username").value;
			var password = document.getElementById("password").value;

			var login = {
				username : username,
				password : password
			}
			
			/* localStorage.setItem('saleStatData', JSON.stringify({
				username: document.getElementById('username').value,
				password: document.getElementById('password').value 
		  })); */
			
			console.log(login); //remove all console.log once the whole module is deployed and ready for UAT.

			$.ajax({
				url : '/login_data',
				type : 'post',
				dataType : 'text',
				contentType : 'application/json',
				success : function(data) {
					console.log("LOGIN : ", data);

					var nullcheck = JSON.parse(data);
					
					if (nullcheck!='') {
						
						var options = JSON.parse(data);
						
						for (var i = 0; i < options.length; i++) {

							var opt = options[i];
							var str = opt.toString();
							var val = str.split(",");
						}
						console.log(val);

						localStorage.setItem('saleStatData', JSON.stringify({
							username: val[0],
							division_id: val[1],
							state_id: val[2],
							headquarter_id: val[3],
							role_id: val[4],
							role_abbr: val[5] 
					  }));
						window.location.href = "dashboard";
					}
					else{
						document.getElementById("credentials").innerHTML = "<span style='color: red;'> Username / password incorrect </span>";
					}
					console.log("LOGIN : ", data);
					
				},
				data : JSON.stringify(login)
			});
		}
	</script>

</body>
</html>
