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
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	rel="stylesheet" />
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<title>Doctor's Business</title>


<style>
th:first-child, td:first-child {
	position: sticky;
	left: 0px;
	background-color: white;
}

.highcharts-figure, .highcharts-data-table table {
	min-width: 310px;
	max-width: 800px;
	margin: 1em auto;
}

.highcharts-data-table table {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}

.highcharts-data-table caption {
	padding: 1em 0;
	font-size: 1.2em;
	color: #555;
}

.highcharts-data-table th {
	font-weight: 600;
	padding: 0.5em;
}

.highcharts-data-table td, .highcharts-data-table th,
	.highcharts-data-table caption {
	padding: 0.5em;
}

.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even)
	{
	background: #f8f8f8;
}

.highcharts-data-table tr:hover {
	background: #f1f7ff;
}
</style>
</head>

<body>

	<!--main content start-->
	<section id="main-content">
		<section class="wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h3 class="page-header">
						<i class="fa fa-table"></i> Table
					</h3>
					<ol class="breadcrumb">
						<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
						<li><i class="fa fa-table"></i>Table</li>
						<li><i class="fa fa-th-list"></i>Basic Table</li>
					</ol>
				</div>
			</div>
			<!-- page start-->

			<div class="row">
				<!-- chart morris start -->
				<div class="col-lg-12">
					<section class="panel">
						<header class="panel-heading">
							<h3>
								General Chart
								</Char>
						</header>
						<div class="panel-body" style="height: 100%">
							<div class="tab-pane" id="chartjs">
								<div class="row">

									<!-- Bar -->
									<div class="col-lg-12">
										<section class="panel">
											<header class="panel-heading"> Bar </header>
											<div class="panel-body text-center">
												<script type="text/javascript"
													src="https://www.gstatic.com/charts/loader.js"></script>
												<!--                     <div id="chart_div" style="height: 1000px;"></div> -->
												<figure class="highcharts-figure">
													<div id="container2"></div>
													<p class="highcharts-description">This chart shows how
														symbols and shapes can be used in charts. Highcharts
														includes several common symbol shapes, such as squares,
														circles and triangles, but it is also possible to add your
														own custom symbols. In this chart, custom weather symbols
														are used on data points to highlight that certain
														temperatures are warm while others are cold.</p>
												</figure>
											</div>
										</section>
									</div>
								</div>
							</div>
						</div>
				</div>
		</section>


		<div class="row">
			<div class="col-lg-12">
				<section class="panel">
					<header class="panel-heading"> Advanced Table </header>

					<div class="table-responsive text-nowrap">
						<!--Table-->
						<table class="table table-striped">

							<!--Table head-->

							<thead>
								<tr>
									<th>BRAND NAME</th>
									<th>YEAR</th>
									<th>JAN</th>
									<th>FEB</th>
									<th>MAR</th>
									<th>APR</th>
									<th>MAY</th>
									<th>JUN</th>
									<th>JUL</th>
									<th>AUG</th>
									<th>SEP</th>
									<th>OCT</th>
									<th>NOV</th>
									<th>DEC</th>
								</tr>
							</thead>

							<!--Table head-->

							<!--Table body-->
							
							<tbody>
								<c:forEach items="${individualDoctorSaleList}" var="individualDoctorSale">
									<tr>
										<td>${individualDoctorSale.medicine_name}</td>
										<td>${individualDoctorSale.year}</td>
										<td>10, 12</td>
										<td>1.1</td>
										<td>2.4</td>
										<td>23</td>
										<td>23</td>
									</tr>
									</c:forEach>
							</tbody>
							<!--Table body-->


						</table>
						<!--Table-->
					</div>
				</section>
			</div>
		</div>
	</section>

	<!-- page end-->
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
	<!-- nicescroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<!--custome script for all page-->
	<script src="js/scripts.js"></script>

	<script>
Highcharts.chart('container2', {
    chart: {
        type: 'line'
    },
    title: {
        text: 'Monthly Average Temperature'
    },
    subtitle: {
        /* text: 'Source: WorldClimate.com' */
    },
    xAxis: {
    	
        categories: [
        	<c:forEach items="${location}" var="loc">
        	'${loc.state}',
        	</c:forEach>
        	]
    	
    },
    yAxis: {
        title: {
            text: 'Temperature (°C)'
        }
    },
    plotOptions: {
        line: {
            dataLabels: {
                enabled: true
            },
            enableMouseTracking: false
        }
    },
    series: [{
        name: 'Tokyo',
        data: [

        	<c:forEach items="${individualDoctorSaleList}" var="loc">
        	${loc.year},
        	</c:forEach>
        	
        	]
    }, {
        name: 'London',
        data: [2003.9, 4.2, 5.7, 8.5, 2011.9, 15.2, 17.0, 1036.6, 14.2, 2000.3, 3006.6, 4.8]
    }]
});
</script>

</body>

</html>
