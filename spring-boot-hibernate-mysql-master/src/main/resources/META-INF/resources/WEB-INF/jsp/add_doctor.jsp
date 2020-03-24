<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="header.jsp"%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>SaleStat - Add Doctor</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<!-- Custom styles -->
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<link rel="stylesheet" href="/assets/css/material-bootstrap.css">

<!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->

<!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>

<body>
	<!-- container section start -->
	<section id="container" class="">

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">
							<i class="fa fa-user-md"></i> NEW DOCTOR
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
							<li><i class="icon_documents_alt"></i>Admin</li>
							<li><i class="fa fa-user-md"></i>Add Doctor</li>
						</ol>
					</div>
				</div>

				<!-- page start-->
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<div class="chip">
  Tag
  <i class="close material-icons">close</i>
</div>
							<!-- add-new-medicine -->
							<div id="edit-profile" class="tab-pane">
								<section class="panel">
									<div class="panel-body bio-graph-info">
										<h1>New Doctor Info</h1>
										<form class="form-horizontal" role="form">
											<div class="row">
												<div class="form-group col-md-6">
													<label class="col-lg-4 control-label">Doctor Name</label>
													<div class="col-lg-8">
														<input type="text" class="form-control" id="doctor_name"
															placeholder=" ">
													</div>
												</div>
												<div class="form-group col-md-6">
													<label class="col-lg-3 control-label">Division Name</label>
													<div class="col-lg-9">
														<select id="division_name" name="reportingto"
															class="form-control" autofocus>
															<c:forEach items="${divisionList}" var="division">
																<option value="${division.division_id}"><c:out
																		value="${division.division_name}" /></option>
															</c:forEach>
														</select>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="form-group col-md-6">
													<label class="col-lg-4 control-label">Doctor
														Speciality</label>
													<div class="col-lg-8">
														<input type="text" class="form-control"
															id="doctor_speciality" placeholder=" ">
													</div>
												</div>
												<div class="form-group col-md-6">
													<label class="col-lg-3 control-label">State</label>
													<div class="col-lg-9">
														<select onChange="stateChanged()" id="state_name"
															name="state_name" class="form-control" autofocus>
															<c:forEach items="${stateList}" var="state">
																<option value="${state.state_id}"><c:out
																		value="${state.state_name}" /></option>
															</c:forEach>
														</select>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="form-group col-md-6">
													<label class="col-lg-4 control-label">Doctor
														Qualification</label>
													<div class="col-lg-8">
														<input type="text" class="form-control"
															id="doctor_qualification" placeholder=" ">
													</div>
												</div>
												<div class="form-group col-md-6">
													<label class="col-lg-3 control-label">Headquarter</label>
													<div class="col-lg-9">
														<select id="headquarter_name" name="reportingto"
															class="form-control" autofocus>
															<option>Choose Headquarter</option>
														</select>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="form-group col-md-6">
													<label class="col-lg-4 control-label">Phone Number</label>
													<div class="col-lg-8">
														<input type="number" class="form-control"
															id="phone_number" placeholder=" " max="9999999999">
													</div>
												</div>
												<div class="form-group col-md-6">
													<label class="col-lg-3 control-label">Address</label>
													<div class="col-lg-9">
														<textarea name="address" id="address" class="form-control"
															cols="20" rows="3"></textarea>
													</div>
												</div>
												<!-- <div class="form-group  col-md-6">
													<label class="col-lg-4 control-label">Address</label>
													<div class="col-lg-8">
														<input type="text" class="form-control" id="address"
															placeholder="http://www.demowebsite.com ">
													</div>
												</div> -->
											</div>

											<div class="form-group">
												<div class="col-lg-offset-2 col-lg-10">
													<button onclick="addDoctor()" type="submit"
														class="btn btn-primary">Save</button>
													<button type="button" class="btn btn-danger">Cancel</button>
												</div>
											</div>
										</form>
									</div>
								</section>
							</div>

						</section>
					</div>
				</div>

				<!-- page end-->
			</section>
		</section>
		<!--main content end-->
		<div class="text-right">
			<div class="credits">
				<!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</section>
	<!-- container section end -->
	<!-- javascripts -->
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<!-- jquery knob -->
	<script src="assets/jquery-knob/js/jquery.knob.js"></script>
	<!--custome script for all page-->
	<script src="js/scripts.js"></script>
	<script src="/assets/vendors/jquery/jquery.min.js"></script>
	<script src="/assets/js/material-bootstrap.js"></script>
	<script>
		//knob
		$(".knob").knob();
	</script>

	<script>
		function stateChanged() {
			var state_id = document.getElementById("state_name").value;
			var select = document.getElementById("headquarter_name");

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
						console.log("options : " + val[0] + " - " + el.value);
						select.appendChild(el);
					}

					console.log("dynamic_headquarter_dropdown : ", JSON
							.parse(data));

				},
				data : JSON.stringify(headquarterdropdownjson)

			});
		}
	</script>


	<script>
		function addDoctor() {

			var doctor_name = document.getElementById("doctor_name").value
					.toUpperCase();
			var division_name = document.getElementById("division_name").value
					.toUpperCase();
			var state_name = document.getElementById("state_name").value
					.toUpperCase();
			var headquarter_name = document.getElementById("headquarter_name").value
					.toUpperCase();
			var doctor_qualification = document
					.getElementById("doctor_qualification").value.toUpperCase();
			var doctor_speciality = document
					.getElementById("doctor_speciality").value.toUpperCase();
			var phone_number = document.getElementById("phone_number").value;
			var address = document.getElementById("address").value
					.toUpperCase();

			var addDoctor = {

				doctor_name : doctor_name,
				doctor_speciality : doctor_speciality,
				division_id : division_name,
				state_id : state_name,
				headquarter_id : headquarter_name,
				doctor_qualification : doctor_qualification,
				phone_number : phone_number,
				address : address

			}
			console.log(addDoctor); //remove all console.log once the whole module is deployed and ready for UAT.

			$
					.ajax({
						url : '/add_doctor_data',
						type : 'post',
						dataType : 'text',
						contentType : 'application/json',
						success : function(data) {
							if (data == "success") {
								window.location.href = "login";
							} else {
								document.getElementById("credentials").innerHTML = "<span style='color: red;'> Username / password incorrect </span>";
							}
							console.log("ADD_DOCTOR : ", data);
						},
						data : JSON.stringify(addDoctor)
					});
		}
	</script>
</body>

</html>
