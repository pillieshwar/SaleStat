<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="header.jsp"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="yyyy" />


<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>SaleStat - Data Entry</title>

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
							<i class="fa fa-user-md"></i> ENTER DATA
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
							<li><i class="icon_documents_alt"></i>Admin</li>
							<li><i class="fa fa-user-md"></i>Data Entry</li>
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
										<h1>Enter Data</h1>
										<form class="form-horizontal" role="form">
											<div class="row">
												<div class="form-group col-md-6">
													<label class="col-lg-4 control-label">Doctor Name</label>
													<div class="col-lg-8">
														<select onChange="doctorChanged()" id="doctor_id"
															name="" class="form-control" autofocus>
															<option>Select Doctor</option>
															<c:forEach items="${user_doctorList}" var="user_doctor">
																<option value="${user_doctor.doctor_id}"><c:out
																		value="${user_doctor.doctor_name}" /></option>
															</c:forEach>
														</select>
													</div>
												</div>
												<div class="form-group col-md-6">
													<label class="col-lg-4 control-label">Brand Name </label>
													<div class="col-lg-8">
														<select id="medicine_name" name=""
															class="form-control" autofocus>
															<option>Choose Brand</option>
														</select>
													</div>
												</div>
												<%-- <div class="form-group col-md-6">
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
												</div> --%>
											</div>

											<div class="row">

												<%-- <div class="form-group col-md-6">
													<label class="col-lg-3 control-label">State</label>
													<div class="col-lg-9">
														<select  id="state_name"
															name="state_name" class="form-control" autofocus>
															<c:forEach items="${stateList}" var="state">
																<option value="${state.state_id}"><c:out
																		value="${state.state_name}" /></option>
															</c:forEach>
														</select>
													</div>
												</div> --%>
											</div>
											<div class="row">
												<div class="form-group col-md-6">
													<label class="col-lg-4 control-label">Quantity Sold
														(Pcs.) </label>
													<div class="col-lg-8">
														<input type="number" class="form-control"
															id="medicine_pieces" placeholder=" ">
													</div>
												</div>
												<div class="form-group col-md-6">
													<label class="col-lg-4 control-label">Quantity
														Amount(Rs.)</label>
													<div class="col-lg-8">
														<input type="number" class="form-control"
															id="medicine_amount" placeholder=" " max="9999999999">
													</div>
												</div>
												<%-- <div class="form-group col-md-6">
													<label class="col-lg-3 control-label">Headquarter</label>
													<div class="col-lg-9">
														<select id="headquarter_name" name="reportingto"
															class="form-control" autofocus>
															<c:forEach items="${headquarterList}" var="headquarter">
																<option value="${headquarter.headquarter_id}"><c:out
																		value="${headquarter.headquarter_name}" /></option>
															</c:forEach>
														</select>
													</div>
												</div> --%>
											</div>

											<div class="row">
												<div class="form-group col-md-6">
													<label class="col-lg-4 control-label">Month</label>
													<div class="col-lg-8">
														<select id="month"
															name="" class="form-control" autofocus>
															<option value="">Select Month</option>
															<option value="jan">January</option>
															<option value="feb">February</option>
															<option value="mar">March</option>
															<option value="apr">April</option>
															<option value="may">May</option>
															<option value="jun">June</option>
															<option value="jul">July</option>
															<option value="aug">August</option>
															<option value="sep">September</option>
															<option value="oct">October</option>
															<option value="nov">November</option>
															<option value="dec">December</option>
														</select>
													</div>
												</div>
												<div class="form-group col-md-6">
													<label class="col-lg-4 control-label">Year</label>
													<div class="col-lg-8">
														<select id="year" name=""
															class="form-control" autofocus>
															<c:forEach begin="0" end="120" var="val">
																<c:set var="decr" value="${year - val}" />
																<option value="${decr}"
																	${birthYear == decr ? "selected='selected'": ''}>${decr}</option>
															</c:forEach>
														</select>
													</div>
												</div>
											</div>

											<div class="form-group">
												<div class="col-lg-offset-2 col-lg-10">
													<button onclick="enterData()" type="submit"
														class="btn btn-primary">Enter Data</button>
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
		function doctorChanged() {
			var doctor_id = document.getElementById("doctor_id").value;
			var select = document.getElementById("medicine_name");

			var medicinedropdownjson = {
				doctor_id : doctor_id
			}
			console.log(medicinedropdownjson);
			$.ajax({
				url : '/dynamic_medicine_dropdown',
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
						console.log("options : " + val[2] + " - " + el.value);
						select.appendChild(el);
					}

					console.log("medicinedropdownjson : ", JSON.parse(data));

				},
				data : JSON.stringify(medicinedropdownjson)

			});
		}
	</script>


	<script>
		function enterData() {

			var doctor_id = document.getElementById("doctor_id").value;
			var medicine_name = document.getElementById("medicine_name").value;
			var medicine_pieces = document.getElementById("medicine_pieces").value;
			var medicine_amount = document.getElementById("medicine_amount").value;
			var month = document.getElementById("month").value;
			var year = document.getElementById("year").value;
			
			alert(medicine_name);

			 var dataEntry = {

					 doctor_id : doctor_id,
					 medicine_id : medicine_name,
					 medicine_pieces : medicine_pieces,
					 medicine_amount : medicine_amount,
					 month : month,
					 year : year
			}
			console.log(dataEntry); //remove all console.log once the whole module is deployed and ready for UAT.

			$
					.ajax({
						url : '/add_data_entry',
						type : 'post',
						dataType : 'text',
						contentType : 'application/json',
						success : function(data) {
							/* if (data == "success") {
								window.location.href = "login";
							} else {
								document.getElementById("credentials").innerHTML = "<span style='color: red;'> Username / password incorrect </span>";
							} */
							console.log("DATA_ENTRY : ", data);
						},
						data : JSON.stringify(dataEntry)
					});
		} 
	</script>
</body>

</html>
