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
							<i class="fa fa-user-md"></i> DOCTOR - MEDICINE
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
							<li><i class="icon_documents_alt"></i>Admin</li>
							<li><i class="fa fa-user-md"></i>Add Headquarter</li>
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
										<h1>Doctor - Medicine</h1>
										<form class="form-horizontal" role="form">
											
											<div class="form-group">
												<label class="col-lg-2 control-label">Doctor Name</label>
												
												<div class="col-lg-6">
													<select id="doctorId" name="" class="form-control" autofocus>
														<c:forEach items="${doctorList}" var="doctor">
															<option value="${doctor.doctor_id}"><c:out
																	value="${doctor.doctor_name}" /></option>
														</c:forEach>
													</select>
												</div>
											</div>
											
											<div class="form-group">
												<label class="col-lg-2 control-label">Medicine Name</label>
												<div class="col-lg-6">
													<table id="tblFruits">
														<c:forEach items="${medicineList}" var="medicine">
															<tr>
																<td><input id=${medicine.medicine_id } type="checkbox"
																	value="${medicine.medicine_id}" /><label for="chkMango">${medicine.medicine_name}</label></td>
															</tr>
														</c:forEach>

													</table>
													
												</div>
											</div>



											<div class="form-group">
												<div class="col-lg-offset-2 col-lg-10">
													<button type="submit" onclick="GetSelected()" class="btn btn-primary">Add</button>
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

	<script type="text/javascript">
		function GetSelected() {
			//Create an Array.
			var selected = new Array();

			//Reference the Table.
			var tblFruits = document.getElementById("tblFruits");

			//Reference all the CheckBoxes in Table.
			var chks = tblFruits.getElementsByTagName("INPUT");

			// Loop and push the checked CheckBox value in Array.
			for (var i = 0; i < chks.length; i++) {
				if (chks[i].checked) {
					selected.push(chks[i].value);
				}
			}

			var doctorId = document.getElementById("doctorId").value;
	
	
	var doctormedicinejson = {
			doctor_id : doctorId,
			selected : selected
		}
	
	$.ajax({
		url : '/add_doctorMedicine_data',
		type : 'post',
		dataType : 'text',
		contentType : 'application/json',
		success : function(data) {
			if (data == "success") {
			}

			console.log("userDoctor_data : ", data);

		},
		data : JSON.stringify(doctormedicinejson)

	});
	
		};
	</script>
</body>

</html>