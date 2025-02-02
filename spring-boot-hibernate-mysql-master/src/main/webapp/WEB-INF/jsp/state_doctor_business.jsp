<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="header.jsp"%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isELIgnored="false" %>

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
<title>Doctor's Business</title>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<style>
.noteven {
	background-color: #FD8385;
}

.even {
	background-color: #7BFD94;
}

/* Style the tab */
.tab {
	overflow: hidden;
	border: 1px solid #ccc;
	background-color: #5A888E;;
}

/* Style the buttons inside the tab */
.tab button {
	background-color: inherit;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	transition: 0.3s;
	font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
	background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
	background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	display: none;
	padding: 6px 12px;
	border: 1px solid #ccc;
	border-top: none;
}

#myInput {
	background-image: url('/img/search-icon.jpg');
	background-position: 10px 16px;
	background-repeat: no-repeat;
	width: 100%;
	font-size: 16px;
	padding: 12px 20px 12px 40px;
	border: 1px solid #ddd;
	margin-bottom: 12px;
}

th:first-child, td:first-child {
	position: sticky;
	left: 0px;
	background-color: white;
}
</style>
</head>

<!-- <body onload="openCity(event, 'tab-description')"> -->

<body onload="openCity(event, 'tab-description')">
	<section id="container" class="">
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
				<div class="tab">
					<button class="tablinks"
						onclick="openCity(event, 'tab-description')">SALES
						EXPECTATION REACHED</button>
					<button class="tablinks" onclick="openCity(event, 'tab-shipping')">SALES
						EXPECTATION NOT REACHED</button>
				</div>

				<input type="text" id="myInput" onkeyup="myFunction()"
					placeholder="Search for names.." title="Type in a name">

				<div id="tab-description" class="row tabcontent">
					<div class="col-lg-12">
						<section class="panel">
							<header style="background-color: #7BFD94;" class="panel-heading">
								SALES EXPECTATION REACHED <i class="fa fa-calendar"></i>&nbsp;
    <input type="text" name="daterange" value=" 01/01/2020 - 01/15/2020" /> </header>

							<div class="table-responsive text-nowrap">
								<table id="myTable" class="table table-striped">
									<thead>
										<tr>
											<th>Sr No.</th>
											<th>Doctor</th>
											<th>Start Date</th>
											<th>End Date</th>
											<th>Expected Sale</th>
											<th>Generated Sale</th>
											
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${stateDoctorBusinessList}" varStatus="loopCount" var="state">
											<tr>
												<td>${loopCount.count}</td>
												<td><a class="" href="individual_doctor_business_info?dr_id=${state.doctor_id}&year=0"><c:out
															value="${state.doctor_name}" /></td>
												<td><c:out value="${state.start_date}"/></td>
												<td><c:out value="${state.end_date}"/></td>
												<td>-</td>
												<td><c:out value="${state.generated_sale}"/></td>
												
											</tr>
										</c:forEach>
										
									</tbody>
								</table>
							</div>
						</section>
					</div>
				</div>

				<div id="tab-shipping" class="row tabcontent">
					<div class="col-lg-12">
						<section class="panel">
							<header style="background-color: #FD8385;" class="panel-heading">
								SALES EXPECTATION NOT REACHED </header>

							<div class="table-responsive text-nowrap">
								<!--Table-->
								<table id="thetable" class="table table-striped">

									<!--Table head-->
									<thead>
										<tr>
											<th>Doctor</th>
											<th>Brand Targetted</th>
											<th>Amount</th>
											<th>Value business at time of Disbursement</th>
											<th>Date of Activity Done</th>
											<th>Type of Sponsors</th>
											<th>MR Name</th>
											<th>Region</th>
										</tr>
									</thead>
									<!--Table head-->

									<!--Table body-->
									<tbody>
										<c:forEach items="${location}" var="loc" varStatus="loop">
											<tr>
												<td><a class=""
													href="individual_doctor_business_info.jsp">Kate</td>
												<c:set var="index" value="${loop.index}" />
												<c:set var="index" value="${index + 1}" />

												<td id="did${index}">${loc.id}</td>
												<td id="state${index}">${loc.state}</td>
												<td id="region${index}">${loc.region}</td>
												<td><c:out value="${index}" /></td>
												<td><input type="button" id="edit_button${index}"
													value="Edit" class="edit" onclick="edit_row('${index}')"></td>
												<td><input type="button" id="save_button${index}"
													value="Save" class="save" onclick="save_row('${index}')"></td>
											</tr>
										</c:forEach>
									</tbody>
									<!--Table body-->


								</table>
								<!--Table-->
							</div>
					</div>
				</div>
			</section>
			
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
	  console.log("hq_id : " +params.get("hq_id"));
	  
	  /* console.log(start.format('YYYY-MM'));
	  console.log(end.format('YYYY-MM')); */
	  var hq_id = params.get("hq_id");
	  var start = start.format('YYYY-MM');
	  var end = end.format('YYYY-MM');
	  var url= "state_doctor_business?hq_id="+hq_id+"&start="+start+"&end="+end;
 	 	window.location.href=url;
/*     console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
 */  });
});
</script>
	
	<script>
		/*  function alternate(id){ 
		 if(document.getElementsByTagName){  
		 var table = document.getElementById(id);   
		 var rows = table.getElementsByTagName("tr");   
		 for(i = 0; i < rows.length; i++){           
		 if(i % 2 == 0){ 
		 rows[i].className = "even"; 
		 }
		 } 
		 } 
		 }  */
	</script>

	<script>
		function myFunction() {
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

		function openCity(evt, cityName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(cityName).style.display = "block";
			evt.currentTarget.className += " active";
		}

		function edit_row(no) {

			document.getElementById("edit_button" + no).style.display = "none";
			document.getElementById("save_button" + no).style.display = "block";

			var name = document.getElementById("did" + no);
			var country = document.getElementById("state" + no);
			var age = document.getElementById("region" + no);

			var name_data = name.innerHTML;
			var country_data = country.innerHTML;
			var age_data = age.innerHTML;

			name.innerHTML = "<input type='text' id='edited_did"+no+"' value='"+name_data+"'>";
			country.innerHTML = "<input type='text' id='edited_state"+no+"' value='"+country_data+"'>";
			age.innerHTML = "<input type='text' id='edited_region"+no+"' value='"+age_data+"'>";
		}

		function save_row(no) {
			var name_val = document.getElementById("edited_did" + no).value;
			var country_val = document.getElementById("edited_state" + no).value;
			var age_val = document.getElementById("edited_region" + no).value;

			document.getElementById("did" + no).innerHTML = name_val;
			document.getElementById("state" + no).innerHTML = country_val;
			document.getElementById("region" + no).innerHTML = age_val;

			document.getElementById("edit_button" + no).style.display = "block";
			document.getElementById("save_button" + no).style.display = "none";

			var person = {
				did : name_val,
				state : country_val,
				region : age_val
			}

			$('#target').html('sending..');

			$.ajax({
				url : '/edited_data',
				type : 'post',
				dataType : 'json',
				contentType : 'application/json',
				success : function(data) {

				},
				data : JSON.stringify(person)
			});

		}

		function delete_row(no) {
			document.getElementById("row" + no + "").outerHTML = "";
		}
	</script>
</body>

</html>
