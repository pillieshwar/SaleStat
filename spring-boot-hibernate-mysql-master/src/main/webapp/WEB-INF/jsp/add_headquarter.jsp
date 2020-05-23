<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>SaleStat - Add Headquarter</title>

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
        <style>
#myInput {
	background-image: url('/img/search-icon.jpg');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	width: 100%;
	font-size: 16px;
	padding: 6px 20px 6px 40px;
	border: 1px solid black;
	margin-bottom: 12px;
}
</style>
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
							<i class="fa fa-location-arrow"></i> ADD HEADQUARTER
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
							<li><i class="icon_documents_alt"></i>Admin</li>
							<li><i class="fa fa-location-arrow"></i>Add Headquarter</li>
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
										<h1>Add Headquarter</h1>
										<form class="form-horizontal" role="form">
											<div class="form-group">
												<label class="col-lg-2 control-label">Division Name</label>
												<div class="col-lg-6">
													<select id="division_id" name="division"
														class="form-control" autofocus>
														<c:forEach items="${divisionList}" var="division">
															<option value="${division.division_id}"><c:out
																	value="${division.division_name}" /></option>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-2 control-label">State Name</label>
												<div class="col-lg-6">
													<!-- pass the state id from backend call -->
													<select id="state_name" name="state_name"
														class="form-control" autofocus>
														<c:forEach items="${stateList}" var="state">
															<option value="${state.state_id}"><c:out
																	value="${state.state_name}" /></option>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-2 control-label">Headquarter
													Name</label>
												<div class="col-lg-6">
													<input type="text" class="form-control"
														id="headquarter_name" placeholder=" ">
												</div>
											</div>

											<div class="form-group">
												<div class="col-lg-offset-2 col-lg-10">
													<button onclick="addHeadquarter()" type="submit"
														class="btn btn-primary">Add</button>
													<button type="button" class="btn btn-danger">Cancel</button>
												</div>
											</div>
										</form>
										
										<div id="tab-description" style="padding-top:6px" class="row tabcontent">
												<div class="col-lg-12">
													<section class="panel">
														<header style="background-color: #394a59; color: white; "
															class="panel-heading"> STATE & HEADQUARTERS </header>
														<input type="text" id="myInput" onkeyup="searchFunction()"
															placeholder="Search by State or Headquarter"
															title="Type in a name">
														<div class="table-responsive text-nowrap">
															<table id="myTable" class="table table-striped">
																<thead>
																	<tr>
																		<th>Sr No.</th>
																		<th>State Name</th>
																		<th>Headquarter Name</th>
																		<th>Entry Date</th>
																		<th>Entered By</th>
																	</tr>
																</thead>
																<tbody>
																	<c:forEach items="${headquarterList}" varStatus="loopCount"
																		var="headquarterList">
																		<tr>
																			<td>${loopCount.count}</td>
																			<td>${headquarterList.state_name}</td>
																			<c:set var="msg" value="${headquarterList.headquarters}"/>
																			<c:set var="arrayofmsg" value="${fn:split(msg,',')}"/>
																			<td width="50%">
																			<c:forEach items="${arrayofmsg}" var="headquarterList">
																			<span class="badge bg-info">${headquarterList}</span>
																			</c:forEach>
																			</td>
																			<td class="text-info"></td>
																			<td>ADMIN</td>

																		</tr>
																	</c:forEach>

																</tbody>
															</table>
														</div>
													</section>
												</div>
											</div>
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
		function searchFunction() {
			var input, filter, table, tr, td, i, txtValue, txtValue2;
			input = document.getElementById("myInput");
			filter = input.value.toUpperCase();
			table = document.getElementById("myTable");
			tr = table.getElementsByTagName("tr");
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[1];
				td2 = tr[i].getElementsByTagName("td")[2];
				if (td || td2) {
					txtValue = td.textContent || td.innerText;
					txtValue2 = td2.textContent || td2.innerText;
					if (txtValue.toUpperCase().indexOf(filter) > -1
							|| txtValue2.toUpperCase().indexOf(filter) > -1) {
						tr[i].style.display = "";
					} else {
						tr[i].style.display = "none";
					}
				}
			}
		}
	</script>
	
	<script>
		function addHeadquarter() {
			var state_id = document.getElementById("state_name").value;
			var headquarter_name = document.getElementById("headquarter_name").value
					.toUpperCase();
			var division_id = document.getElementById("division_id").value;

			var headquarterjson = {
				state_id : state_id,
				headquarter_name : headquarter_name,
				division_id : division_id
			}
			console.log(headquarterjson);

			$.ajax({
				url : '/add_headquarter_data',
				type : 'post',
				dataType : 'text',
				contentType : 'application/json',
				success : function(data) {
					if (data == "success") {
					}

					console.log("state_data : ", data);

				},
				data : JSON.stringify(headquarterjson)

			});
		}
	</script>

</body>

</html>
