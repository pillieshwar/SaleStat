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

<title>Profile | Creative - Bootstrap 3 Responsive Admin
	Template</title>

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
							<li><i class="fa fa-user-md"></i>Profile</li>
						</ol>
					</div>
				</div>
				<div class="row">
					<!-- profile-widget -->
					<div class="col-lg-12">
						<div class="profile-widget profile-widget-info">
							<div class="panel-body">
								<div class="col-lg-2 col-sm-2">
									<h4>Jenifer Smith</h4>
									<div class="follow-ava">
										<img src="img/profile-widget-avatar.jpg" alt="">
									</div>
									<h6>Administrator</h6>
								</div>
								<div class="col-lg-4 col-sm-4 follow-info">
									<p>Hello I’m Jenifer Smith, a leading expert in
										interactive and creative design.</p>
									<p>@jenifersmith</p>
									<p>
										<i class="fa fa-twitter">jenifertweet</i>
									</p>
									<h6>
										<span><i class="icon_calendar"></i></span><span id="demo"></span>
										<span><i class="icon_clock_alt"></i>11:05 AM</span> <span><i
											class="icon_pin_alt"></i>IND</span>
									</h6>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- page start-->
				<div class="row">
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading tab-bg-info">
								<ul class="nav nav-tabs">
									<li class="active"><a data-toggle="tab" href="#profile">
											<i class="icon-user"></i> Profile
									</a></li>
									<li class=""><a data-toggle="tab" href="#edit-profile">
											<i class="icon-envelope"></i> Edit Profile
									</a></li>
								</ul>
							</header>
							<div class="panel-body">
								<div class="tab-content">

									<!-- profile -->
									<div id="profile" class="tab-pane active">
										<section class="panel">
											
											<div class="panel-body bio-graph-info">
												<h1>Bio Graph</h1>
												<div class="row">
													<div class="bio-row">
														<p>
															<span>First Name </span>: Jenifer
														</p>
													</div>
													<div class="bio-row">
														<p>
															<span>Last Name </span>: Smith
														</p>
													</div>
													<div class="bio-row">
														<p>
															<span>Birthday</span>: 27 August 1987
														</p>
													</div>
													<div class="bio-row">
														<p>
															<span>State </span>: United
														</p>
													</div>
													<div class="bio-row">
														<p>
															<span>Designation</span>: UI Designer
														</p>
													</div>
													<div class="bio-row">
														<p>
															<span>Email </span>:jenifer@mailname.com
														</p>
													</div>
													<div class="bio-row">
														<p>
															<span>Mobile </span>: (+6283) 456 789
														</p>
													</div>
													<div class="bio-row">
														<p>
															<span>Phone </span>: (+021) 956 789123
														</p>
													</div>
												</div>
											</div>
										</section>
										<section>
											<div class="row"></div>
										</section>
									</div>
									<!-- edit-profile -->
									<div id="edit-profile" class="tab-pane">
										<section class="panel">
											<div class="panel-body bio-graph-info">
												<h1>Profile Info</h1>
												<form class="form-horizontal" role="form">
													<div class="form-group">
														<label class="col-lg-2 control-label">First Name</label>
														<div class="col-lg-6">
															<input type="text" class="form-control" id="f-name"
																placeholder=" ">
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">Last Name</label>
														<div class="col-lg-6">
															<input type="text" class="form-control" id="l-name"
																placeholder=" ">
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">About Me</label>
														<div class="col-lg-10">
															<textarea name="" id="" class="form-control" cols="30"
																rows="5"></textarea>
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">Country</label>
														<div class="col-lg-6">
															<input type="text" class="form-control" id="c-name"
																placeholder=" ">
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">Birthday</label>
														<div class="col-lg-6">
															<input type="text" class="form-control" id="b-day"
																placeholder=" ">
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">Occupation</label>
														<div class="col-lg-6">
															<input type="text" class="form-control" id="occupation"
																placeholder=" ">
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">Email</label>
														<div class="col-lg-6">
															<input type="text" class="form-control" id="email"
																placeholder=" ">
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">Mobile</label>
														<div class="col-lg-6">
															<input type="text" class="form-control" id="mobile"
																placeholder=" ">
														</div>
													</div>
													<div class="form-group">
														<label class="col-lg-2 control-label">Website URL</label>
														<div class="col-lg-6">
															<input type="text" class="form-control" id="url"
																placeholder="http://www.demowebsite.com ">
														</div>
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
								</div>
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
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth() + 1;

		var yyyy = today.getFullYear();
		if (dd < 10) {
			dd = '0' + dd;
		}
		if (mm < 10) {
			mm = '0' + mm;
		}
		var today = dd + '/' + mm + '/' + yyyy;
		document.getElementById("demo").innerHTML = today;
	</script>

</body>

</html>
