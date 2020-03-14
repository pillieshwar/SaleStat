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
							<i class="fa fa-user-md"></i> Profile
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
															<option value="volvo">Reporting To</option>
															<option value="1">PAATNAIK</option>
															<option value="2">DURGESHWAR</option>
															<option value="3">MANDODARAI</option>
														</select>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="form-group col-md-6">
													<label class="col-lg-4 control-label">Doctor
														Speciality</label>
													<div class="col-lg-8">
														<input type="text" class="form-control" id="speciality"
															placeholder=" ">
													</div>
												</div>
												<div class="form-group col-md-6">
													<label class="col-lg-3 control-label">State</label>
													<div class="col-lg-9">
														<select onChange="stateChanged()" id="state_name"
															name="reportingto" class="form-control" autofocus>
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
															<option>Choose a number</option>
														</select>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="form-group col-md-6">
													<label class="col-lg-4 control-label">Phone Number</label>
													<div class="col-lg-8">
														<input type="text" class="form-control" id="phone_number"
															placeholder=" ">
													</div>
												</div>
												<div class="form-group col-md-6">
													<label class="col-lg-3 control-label">Address</label>
													<div class="col-lg-9">
														<textarea name="" id="address" class="form-control"
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
													<button type="submit" class="btn btn-primary">Save</button>
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
						el.textContent = opt;
						el.value = opt;
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
