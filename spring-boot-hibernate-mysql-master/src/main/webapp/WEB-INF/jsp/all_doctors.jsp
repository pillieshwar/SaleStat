<!DOCTYPE html>
<html lang="en">

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
<title>Medicines</title>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="header.jsp" %>
<style>
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
</style>
</head>
<body>

		<!--main content start-->
		<section id="main-content">
			<section class="wrapper">
				<div class="row">
					<div class="col-lg-12">
						<h3 class="page-header">
							<i class="fa fa-table"></i> Doctors
						</h3>
						<ol class="breadcrumb">
							<li><i class="fa fa-home"></i><a href="dashboard">Dashboard</a></li>
							<li><i class="fa fa-table"></i>Doctors</li>
<!-- 							<li><i class="fa fa-th-list"></i>Basic Table</li> -->
						</ol>
					</div>
				</div>
				<!-- page start-->
				

				<input type="text" id="myInput" onkeyup="myFunction()"
					placeholder="Search for names.." title="Type in a name">

				<div id="tab-description" class="row tabcontent">
					<div class="col-lg-12">
						<section class="panel">
							<header style="background-color: #7BFD94;" class="panel-heading">
								SALES EXPECTATION REACHED </header>

							<div class="table-responsive text-nowrap">
								<table id="myTable" class="table table-striped">
									<thead>
										<tr>
											<th>Doctor</th>
											<th>Region</th>
											<th>Brand Targeted</th>
											<th>Amount</th>
											<th>Value business at time of Disbursement</th>
											<th>Date of Activity Done</th>
											<th>Type of Sponsorship</th>
											<th>ASM Name</th>
											<th>MR Name</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><a class="" href="individual_doctor_business_info">Kate</td>
											<td>Moss</td>
											<td>USA</td>
											<td>New York City / Warsaw / Lodz / Amsterdam / London /
												Chicago</td>
											<td>Web Designer /UX designer / Ul designer / JavaScript
												Developer</td>
											<td>23</td>
											<td>23</td>
											<td>Rahul</td>
											<td>Salim</td>
										</tr>
										<tr>
											<td><a class=""
												href="individual_doctor_business_info.jsp">Kate</td>
											<td contenteditable='true'>Moss</td>
											<td>Russia</td>
											<td>New York City / Warsaw / Lodz / Amsterdam / London /
												Chicago</td>
											<td>Web Designer /UX designer / Ul designer / JavaScript
												Developer</td>
											<td>23</td>
											<td>23</td>
										</tr>
										<tr>
											<td><a class=""
												href="individual_doctor_business_info.jsp">Kate</td>
											<td>Eshwar</td>
											<td>India</td>
											<td>New York City / Warsaw / Lodz / Amsterdam / London /
												Chicago</td>
											<td>Web Designer /UX designer / Ul designer / JavaScript
												Developer</td>
											<td>23</td>
											<td>23</td>
										</tr>
									</tbody>
								</table>
							</div>
						</section>
					</div>
				</div>

				

			</section>
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
	<!-- nicescroll -->
	<script src="js/jquery.scrollTo.min.js"></script>
	<script src="js/jquery.nicescroll.js" type="text/javascript"></script>
	<!--custome script for all page-->
	<script src="js/scripts.js"></script>
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
		function stateSort() {
			var input = document.getElementById('monthpick').value;
			alert(input);
			var filter, table, tr, td, i, txtValue, txtValue2;
			filter = input.toUpperCase();
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
					$('#target').html(data.msg);
				},
				data : JSON.stringify(person)
			});

		}

		function delete_row(no) {
			document.getElementById("row" + no + "").outerHTML = "";
		}

		function month_click() {
			var month = document.getElementById('monthpick').value;
			var url = "http://localhost:8090/state_sales/" + month;
			window.location.href = url;
		}
	</script>
</body>

</html>
