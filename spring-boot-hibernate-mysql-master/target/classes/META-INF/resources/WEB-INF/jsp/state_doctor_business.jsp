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
<title>Doctor's Business</title>
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
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

<!-- <body onload="alternate('thetable')"> -->
<!-- container section start -->
<body>
	<section id="container" class="">
		<!--header start-->
		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom">
					<i class="icon_menu"></i>
				</div>
			</div>

			<!--logo start-->
			<a href="index.html" class="logo">Nice <span class="lite">Admin</span></a>
			<!--logo end-->

			<div class="top-nav notification-row">

				<!-- user login dropdown start-->
				<li class="dropdown"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#"> <span class="profile-ava">
							<img alt="" src="img/avatar1_small.jpg">
					</span> <span class="username">Jenifer Smith</span> <b class="caret"></b>
				</a>
					<ul class="dropdown-menu extended logout">
						<div class="log-arrow-up"></div>
						<li class="eborder-top"><a href="#"><i
								class="icon_profile"></i> My Profile</a></li>
						<li><a href="#"><i class="icon_mail_alt"></i> My Inbox</a></li>
						<li><a href="#"><i class="icon_clock_alt"></i> Timeline</a></li>
						<li><a href="#"><i class="icon_chat_alt"></i> Chats</a></li>
						<li><a href="login.html"><i class="icon_key_alt"></i> Log
								Out</a></li>
						<li><a href="documentation.html"><i class="icon_key_alt"></i>
								Documentation</a></li>
						<li><a href="documentation.html"><i class="icon_key_alt"></i>
								Documentation</a></li>
					</ul></li>
				<!-- user login dropdown end -->
				</ul>
				<!-- notificatoin dropdown end-->
			</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li class=""><a class="" href="index.html"> <i
							class="icon_house_alt"></i> <span>Dashboard</span>
					</a></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_document_alt"></i> <span>Forms</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="form_component.html">Form Elements</a></li>
							<li><a class="" href="form_validation.html">Form
									Validation</a></li>
						</ul></li>
					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_desktop"></i> <span>UI Fitures</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="general.html">Components</a></li>
							<li><a class="" href="buttons.html">Buttons</a></li>
							<li><a class="" href="grids.html">Grids</a></li>
						</ul></li>
					<li><a class="" href="widgets.html"> <i
							class="icon_genius"></i> <span>Widgets</span>
					</a></li>
					<li><a class="" href="chart-chartjs.html"> <i
							class="icon_piechart"></i> <span>Charts</span>

					</a></li>

					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_table"></i> <span>Tables</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="active" href="basic_table.html">Basic
									Table</a></li>
						</ul></li>

					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_documents_alt"></i> <span>Pages</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="profile.html">Profile</a></li>
							<li><a class="" href="login.html"><span>Login
										Page</span></a></li>
							<li><a class="" href="contact.html"><span>Contact
										Page</span></a></li>
							<li><a class="" href="blank.html">Blank Page</a></li>
							<li><a class="" href="404.html">404 Error</a></li>
						</ul></li>

				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>

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
						onclick="openCity(event, 'tab-description')">SALES EXPECTATION REACHED</button>
					<button class="tablinks" onclick="openCity(event, 'tab-shipping')">SALES EXPECTATION NOT REACHED</button>
				</div>

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
											<th>Brand Targetted</th>
											<th>Amount</th>
											<th>Value business at time of Disbursement</th>
											<th>Date of Activity Done</th>
											<th>Type of Sponsors</th>
											<th>MR Name</th>
											<th>Region</th>
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
											<td><c:out value="${index}"/></td>
											<td><input type="button" id="edit_button${index}" value="Edit" class="edit" onclick="edit_row('${index}')"></td>
											<td><input type="button" id="save_button${index}" value="Save" class="save" onclick="save_row('${index}')"></td>
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
			<!--Section: Live preview-->

			<!--               <table class="table table-striped table-advance table-hover">
                <tbody>
                  <tr>
                    <th><i class="icon_profile"></i> Doctor </th>
                    <th><i class="icon_calendar"></i> Date of Activity Done</th>
                    <th><i class="icon_mail_alt"></i> VALUE BUSSINESS GIVEN AT A TIME OF DISBURSEMENT </th>
                    <th><i class="icon_pin_alt"></i> Region </th>
                    <th><i class="icon_mobile"></i> Type of Sponsers</th>
                    <th><i class="icon_cogs"></i> Action</th>
                  </tr>
                  <tr>
                    <td>Angeline Mcclain</td>
                    <td>2004-07-06</td>
                    <td>dale@chief.info</td>
                    <td>Rosser</td>
                    <td>176-026-5992</td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>Sung Carlson</td>
                    <td>2011-01-10</td>
                    <td>ione.gisela@high.org</td>
                    <td>Robert Lee</td>
                    <td>724-639-4784</td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>Bryon Osborne</td>
                    <td>2006-10-29</td>
                    <td>sol.raleigh@language.edu</td>
                    <td>York</td>
                    <td>180-456-0056</td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>Dalia Marquez</td>
                    <td>2011-12-15</td>
                    <td>angeline.frieda@thick.com</td>
                    <td>Alton</td>
                    <td>690-601-1922</td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>Selina Fitzgerald</td>
                    <td>2003-01-06</td>
                    <td>moshe.mikel@parcelpart.info</td>
                    <td>Waelder</td>
                    <td>922-810-0915</td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>Abraham Avery</td>
                    <td>2006-07-14</td>
                    <td>harvey.jared@pullpump.org</td>
                    <td>Harker Heights</td>
                    <td>511-175-7115</td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>Caren Mcdowell</td>
                    <td>2002-03-29</td>
                    <td>valeria@hookhope.org</td>
                    <td>Blackwell</td>
                    <td>970-147-5550</td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>Owen Bingham</td>
                    <td>2013-04-06</td>
                    <td>thomas.christopher@firstfish.info</td>
                    <td>Rule</td>
                    <td>934-118-6046</td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>Ahmed Dean</td>
                    <td>2008-03-19</td>
                    <td>lakesha.geri.allene@recordred.com</td>
                    <td>Darrouzett</td>
                    <td>338-081-8817</td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                  <tr>
                    <td>Mario Norris</td>
                    <td>2010-02-08</td>
                    <td>mildred@hour.info</td>
                    <td>Amarillo</td>
                    <td>945-547-5302</td>
                    <td>
                      <div class="btn-group">
                        <a class="btn btn-primary" href="#"><i class="icon_plus_alt2"></i></a>
                        <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                        <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table> -->
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
		
		
		
		
		function edit_row(no)
		{
			
		 document.getElementById("edit_button"+no).style.display="none";
		 document.getElementById("save_button"+no).style.display="block";
			
		 var name=document.getElementById("did"+no);
		 var country=document.getElementById("state"+no);
		 var age=document.getElementById("region"+no);
			
		 var name_data=name.innerHTML;
		 var country_data=country.innerHTML;
		 var age_data=age.innerHTML;
			
		 name.innerHTML="<input type='text' id='edited_did"+no+"' value='"+name_data+"'>";
		 country.innerHTML="<input type='text' id='edited_state"+no+"' value='"+country_data+"'>";
		 age.innerHTML="<input type='text' id='edited_region"+no+"' value='"+age_data+"'>";
		}
		
		function save_row(no)
		{
		 var name_val=document.getElementById("edited_did"+no).value;
		 var country_val=document.getElementById("edited_state"+no).value;
		 var age_val=document.getElementById("edited_region"+no).value;

		 document.getElementById("did"+no).innerHTML=name_val;
		 document.getElementById("state"+no).innerHTML=country_val;
		 document.getElementById("region"+no).innerHTML=age_val;

		 document.getElementById("edit_button"+no).style.display="block";
		 document.getElementById("save_button"+no).style.display="none";
		 
		  var person = {
				  did: name_val,
		            state: country_val,
		            region: age_val
		        }

		        $('#target').html('sending..');

		        $.ajax({
		            url: '/edited_data',
		            type: 'post',
		            dataType: 'json',
		            contentType: 'application/json',
		            success: function (data) {
		            	
		            	
		            },
		            data: JSON.stringify(person)
		        }); 
		        
		}

		function delete_row(no)
		{
		 document.getElementById("row"+no+"").outerHTML="";
		}
	</script>
</body>

</html>
