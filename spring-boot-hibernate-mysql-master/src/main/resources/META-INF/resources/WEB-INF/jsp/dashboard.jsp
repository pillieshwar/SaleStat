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

<title>SaleStat</title>
</head>

<body onload="username();">

	<section id="main-content">
		<section class="wrapper">
			<!--overview start-->
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header">
						<i class="fa fa-laptop"></i> Dashboard
					</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-laptop"></i>Dashboard</li>
					</ol>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box dark-bg">
						<i class="fa fa-thumbs-o-up"></i>
						<div class="count">500</div>
						<div class="title">Sponsored Doctors</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box brown-bg">
						<i class="fa fa-shopping-cart"></i>
						<div class="count">7.538</div>
						<div class="title">Expected Business</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box green-bg">
						<i class="fa fa-cubes"></i>
						<div class="count">1.426</div>
						<div class="title">Business Given</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
					<div class="info-box blue-bg">
						<i class="fa fa-cloud-download"></i>
						<div class="count">6.674</div>
						<div class="title">Total Sales ( in Cr)</div>
					</div>
				</div>
			</div>
			<!--/.row-->


			<div class="row">
				<div class="col-lg-9 col-md-12">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h2>
								<i class="fa fa-map-marker red"></i><strong>States
									Covered Under GYNOCARE</strong>
							</h2>
						</div>
						<div class="panel-body-map">
							<div id="cn-map" style="height: 380px;"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<!-- List starts -->
					<ul class="today-datas">
						<!-- List #1 -->
						<li>
							<!-- Graph -->
							<div>
								<span id="todayspark1" class="spark"></span>
							</div> <!-- Text -->
							<div class="datas-text">11,500 visitors/day</div>
						</li>
						<li>
							<div>
								<span id="todayspark2" class="spark"></span>
							</div>
							<div class="datas-text">15,000 Pageviews</div>
						</li>
						<li>
							<div>
								<span id="todayspark3" class="spark"></span>
							</div>
							<div class="datas-text">30.55% Bounce Rate</div>
						</li>
						<li>
							<div>
								<span id="todayspark4" class="spark"></span>
							</div>
							<div class="datas-text">$16,00 Revenue/Day</div>
						</li>
						<li>
							<div>
								<span id="todayspark5" class="spark"></span>
							</div>
							<div class="datas-text">12,000000 visitors every Month</div>
						</li>
					</ul>
				</div>
			</div>

			<div class="row">

				<div class="col-lg-9 col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2>
								<i class="fa fa-flag-o red"></i><strong>State
									Performance</strong>
							</h2>
						</div>
						<div class="panel-body">
							<table class="table bootstrap-datatable countries">
								<thead>
									<tr>
										<th></th>
										<th>State</th>
										<th>Expected Sale</th>
										<th>Total Sale</th>
										<th>Performance</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${stateList}" var="loc">
										<tr>
											<td><img src="img/India.png"
												style="height: 18px; margin-top: -2px;"></td>
											<td><c:out value="${loc.state_name}" /></td>
											<td>2563</td>
											<td>1025</td>
											<td>
												<div class="progress thin">
													<div class="progress-bar progress-bar-success"
														role="progressbar" aria-valuenow="73" aria-valuemin="0"
														aria-valuemax="100" style="width: 73%"></div>
													<div class="progress-bar progress-bar-danger"
														role="progressbar" aria-valuenow="27" aria-valuemin="0"
														aria-valuemax="100" style="width: 27%"></div>
												</div> <span class="sr-only">73%</span>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<!--/col-->
				<div class="col-md-3">

					<div class="row social-box facebook">
						<div class="col-md-3">
							<i class="fa fa-facebook"></i>

						</div>
						<div class="col-md-9">
							<ul>
								<li><strong>256k</strong> <span>friends</span></li>
								<li><strong>359</strong> <span>feeds</span></li>
							</ul>
						</div>
					</div>
					<!--/social-box-->
				</div>
				<div class="col-md-3">

					<div class="social-box google-plus">
						<i class="fa fa-google-plus"></i>
						<ul>
							<li><strong>962</strong> <span>Total doctors</span></li>
							<li><strong>256</strong> <span>Doctors Target Reached</span>
							</li>
						</ul>
					</div>
					<!--/social-box-->

				</div>
				<!--/col-->
				<div class="col-md-3">

					<div class="social-box twitter">
						<i class="fa fa-twitter"></i>
						<ul>
							<li><strong>1562k</strong> <span>followers</span></li>
							<li><strong>2562</strong> <span>tweets</span></li>
						</ul>
					</div>
					<!--/social-box-->

				</div>
				<!--/col-->

			</div>

			<!-- statics end -->




			<!-- project team & activity start -->
			<div class="row">
				<div class="col-lg-12">
					<!--Project Activity start-->
					<section class="panel">
						<div class="panel-body progress-panel">
							<div class="row">
								<div class="col-lg-8 task-progress pull-left">
									<h1>Gynocare State Heads</h1>
								</div>
								<!--                       <div class="col-lg-4">
                        <span class="profile-ava pull-right">
                                        <img alt="" class="simple" src="img/avatar1_small.jpg">
                                        Jenifer smith
                                </span>
                      </div> -->
							</div>
						</div>
						<table class="table table-hover personal-task">
							<thead>
								<tr>
									<th style="padding-left: 1.5%;">State</th>
									<th style="padding-left: 1.5%;">State Head</th>
									<th style="padding-left: 1.5%;">Designation</th>
									<th style="padding-left: 1.5%;">HQ</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><a class="" href="state_sales">Assam</td>
									<td>KAMAL DUTTA</td>
									<td><span class="badge bg-info">RM</span></td>
									<td class=" pull-left">Guwahati</td>
									<!--                         <td><span class="badge bg-important">Upload</span></td> -->
									<!--                         <td><span class="profile-ava"><img alt="" class="simple" src="img/avatar1_small.jpg"></span></td> -->
								</tr>
								<tr>
									<td>Bihar</td>
									<td>RAJESH KUMAR</td>
									<td><span class="badge bg-success">NSM</span></td>
									<td class=" pull-left">Patna</td>
								</tr>

								<tr>
									<td>Jharkhand</td>
									<td>KAUSHLENDRA KUMAR</td>
									<td><span class="badge bg-danger">ARM</span></td>
									<td class=" pull-left">Dhanbad</td>
								</tr>

								<tr>
									<td>Orissa</td>
									<td>(SC) AMIT KUMAR DASH</td>
									<td><span class="badge bg-primary">SRM</span></td>
									<td class=" pull-left">Bhubaneshwar</td>
								</tr>

								<tr>
									<td>Uttar Pradesh</td>
									<td>RAM AVTAR UPADHYAY</td>
									<td><span class="badge bg-warning">ZSM</span></td>
									<td class=" pull-left">Lucknow</td>
								</tr>

								<tr>
									<td>WestBengal</td>
									<td>SANJAY DAS</td>
									<td><span class="badge bg-secondary">DSM</span></td>
									<td class=" pull-left">Kolkata</td>
								</tr>
							</tbody>
						</table>
					</section>
					<!--Project Activity end-->
				</div>
			</div>
			<br> <br>

			<div class="row">
				<div class="col-md-12 portlets">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h2>
								<strong>Doctor Visits</strong>
							</h2>
							<div class="panel-actions">
								<a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
								<a href="#" class="wclose"><i class="fa fa-times"></i></a>
							</div>

						</div>
						<br> <br> <br>
						<div class="panel-body">
							<!-- Widget content -->

							<!-- Below line produces calendar. I am using FullCalendar plugin. -->
							<div id="calendar"></div>

						</div>
					</div>
				</div>
			</div>
			<!-- project team & activity end -->

		</section>
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
	<!--main content end-->
	</section>
	<!-- container section start -->

	<!-- javascripts -->
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui-1.10.4.min.js"></script>
	<script src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
	<!-- bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- nice scroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<!-- charts scripts -->
	<script src="assets/jquery-knob/js/jquery.knob.js"></script>
	<script src="js/jquery.sparkline.js" type="text/javascript"></script>
	<script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
	<script src="js/owl.carousel.js"></script>
	<!-- jQuery full calendar -->
	<
	<script src="js/fullcalendar.min.js"></script>
	<!-- Full Google Calendar - Calendar -->
	<script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
	<!--script for this page only-->
	<script src="js/calendar-custom.js"></script>
	<script src="js/jquery.rateit.min.js"></script>
	<!-- custom select -->
	<script src="js/jquery.customSelect.min.js"></script>
	<script src="assets/chart-master/Chart.js"></script>

	<!--custome script for all page-->
	<script src="js/scripts.js"></script>
	<!-- custom script for this page-->
	<script src="js/sparkline-chart.js"></script>
	<script src="js/easy-pie-chart.js"></script>
	<script src="js/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="js/jquery-jvectormap-in-mill.js"></script>
	<script src="js/jquery-jvectormap-world-mill-en.js"></script>
	<script src="js/xcharts.min.js"></script>
	<script src="js/jquery.autosize.min.js"></script>
	<script src="js/jquery.placeholder.min.js"></script>
	<script src="js/gdp-data.js"></script>
	<script src="js/morris.min.js"></script>
	<script src="js/sparklines.js"></script>
	<script src="js/charts.js"></script>
	<script src="js/jquery.slimscroll.min.js"></script>
	<script>
		//knob
		$(function() {
			$(".knob").knob({
				'draw' : function() {
					$(this.i).val(this.cv + '%')
				}
			})
		});

		//carousel
		$(document).ready(function() {
			$("#owl-slider").owlCarousel({
				navigation : true,
				slideSpeed : 300,
				paginationSpeed : 400,
				singleItem : true

			});
		});

		//custom select box

		$(function() {
			$('select.styled').customSelect();
		});

		/* ---------- Map ---------- */
		$(function() {
			$('#map').vectorMap({
				map : 'in_mill'
			});
			backgroundColor: '#573E8A'
		});

		$('#cn-map').vectorMap({
			map : 'in_mill',
			backgroundColor : 'grey',
			regionStyle : {
				initial : {
					fill : 'white'
				}
			},
			series : {
				regions : [ {
					values : {
						'IN-AS' : '#39c202',
						'IN-BR' : '#ff3333',
						'IN-JH' : '#0248c2',
						'IN-OR' : '#c2b602',
						'IN-UP' : '#482901',
						//         'IN-WB': '#482901',
						'IN-WB' : '#c2023c'
					}
				} ]
			}
		});

		function username() {
			document.getElementById("username").innerHTML = "Eshwar Pilli";
		}
	</script>

</body>

</html>