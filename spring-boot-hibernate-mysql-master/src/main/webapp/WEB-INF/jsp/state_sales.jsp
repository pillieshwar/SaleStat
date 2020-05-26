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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Charts</title>

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
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

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
<script src="https://code.highcharts.com/highcharts.js"></script>

<style>
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
							<i class="icon_piechart"></i> STATE SALES
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
							<li><i class="icon_piechart"></i>State_Sales</li>

						</ol>
					</div>
				</div>
				<div class="row">
					<!-- chart morris start -->
					<div class="col-lg-12">
						<section class="panel">
							<header class="panel-heading">
								<h3>
									State Headquarter Sales
									</Char>
							</header>
							<div class="panel-body" style="height: 100%">
								<div class="tab-pane" id="chartjs">
									<div class="row">



										<!-- Bar -->
										<div class="col-lg-12">
											<section class="panel">
												<header class="panel-heading">
													Select Month Range : &nbsp; <!-- <select name="monthpick" id="monthpick"
														style="height: 39px;">
														<option value="01">Jan</option>
														<option value="02">Feb</option>
														<option value="03">March</option>
													</select>
													<button id="touch" onclick="month_click();">View
														Data</button> -->
														<i class="fa fa-calendar"></i>&nbsp;
    <input type="text" name="daterange" value=" 01/01/2020 - 01/15/2020" />
														

												</header>
												<div class="panel-body text-center">
													<script type="text/javascript"
														src="https://www.gstatic.com/charts/loader.js"></script>
													<div id="container1" style="width: 100%; height: 400px"></div>
												</div>
											</section>
										</div>
									</div>
								</div>
							</div>
					</div>
			</section>
			</div>
			<!-- chart morris start -->
			</div>
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


	<!--     ---------------------------------------CHART START-------------------------------------- -->
	<script>
  Highcharts.chart('container1', {

    chart: {
        type: 'column'
    },
    title: {
        text: 'Click on Headquarters to View Doctor Sales'
    },

    xAxis: {
        type: 'category'
    },

    plotOptions: {
        series: {
            cursor: 'pointer',
            point: {
                events: {
                    click: function () {
                        location.href = '' +
                            this.options.key;
                    }
                }
            }
        }
    },

    series: [{
        data: [
        	
        	<c:forEach items="${headquarterList}" var="hqList">
        	
        	{y: ${hqList.headquarter_total_sale},
        	 name: '${hqList.headquarter_name}',
        	 key: 'state_doctor_business?hq_id=${hqList.headquarter_id}'
        	},
        	
        	</c:forEach>
        	
        ]
    }]
});
   </script>
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui-1.10.4.min.js"></script>
	<script src="js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>

	<script src="js/bootstrap.min.js"></script>

	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<script src="../assets/jquery-knob/js/jquery.knob.js"></script>
	<script src="js/jquery.sparkline.js" type="text/javascript"></script>
	<script src="../assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
	<script src="js/owl.carousel.js"></script>

	<script src="js/fullcalendar.min.js"></script>
	]
	<script src="../assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
	<script src="js/calendar-custom.js"></script>
	<script src="js/jquery.rateit.min.js"></script>
	<script src="js/jquery.customSelect.min.js"></script>
	<script src="../assets/chart-master/Chart.js"></script>

	<script src="js/scripts.js"></script>
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
	
	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
	
	<script>
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth() + 1;

	var yyyy = today.getFullYear();
$(function() {
  $('input[name="daterange"]').daterangepicker({
    opens: 'left',
    startDate: yyyy,
    locale: {
        format: 'MM/YYYY'
      }
  }, function(start, end, label) {
	  
	  url1 = window.location.search;
	  const params = new URLSearchParams(url1);
	  console.log("state : " +params.get("state"));
	  
	  /* console.log(start.format('YYYY-MM'));
	  console.log(end.format('YYYY-MM')); */
	  var state = params.get("state");
	  var start = start.format('YYYY-MM');
	  var end = end.format('YYYY-MM');
	  var url= "state_sales?state="+state+"&start="+start+"&end="+end;
 	 	window.location.href=url;
/*     console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
 */  });
});
</script>

	<script> -->
          //knob
          $(function() {
            $(".knob").knob({
              'draw': function() {
                $(this.i).val(this.cv + '%')
              }
            })
          });

          //carousel
          $(document).ready(function() {
            $("#owl-slider").owlCarousel({
              navigation: true,
              slideSpeed: 300,
              paginationSpeed: 400,
              singleItem: true

            });
          });

          //custom select box

          $(function() {
            $('select.styled').customSelect();
          });
    </script>
	<!--     ---------------------------------------CHART END-------------------------------------- -->
	<script>
     
     function month_click(){
    	    var month = document.getElementById('monthpick').value;
    	    var url= "state_sales?state="+month;
       	 	window.location.replace=url;
    	}

     </script>
</body>

</html>