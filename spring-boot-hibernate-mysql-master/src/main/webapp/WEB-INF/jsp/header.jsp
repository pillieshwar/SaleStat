<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="../img/favicon.png">

<title>SaleStat</title>

<!-- Bootstrap CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!--external css-->
<!-- font icon -->
<link href="css/elegant-icons-style.css" rel="stylesheet" />
<link href="css/font-awesome.min.css" rel="stylesheet" />
<!-- full calendar css-->
<link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css"
	rel="stylesheet" />
<link href="assets/fullcalendar/fullcalendar/fullcalendar.css"
	rel="stylesheet" />
<!-- easy pie chart-->
<link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
<!-- owl carousel -->
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
<link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
<!-- Custom styles -->
<link rel="stylesheet" href="css/fullcalendar.css">
<link href="css/widgets.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/style-responsive.css" rel="stylesheet" />
<link href="css/xcharts.min.css" rel=" stylesheet">
<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet">

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

<!-- =======================================================
    Theme Name: NiceAdmin
    Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
  ======================================================= -->
<style>
/* .disabled {
	pointer-events: none;
	cursor: default;
} */
</style>
</head>

<body onload="username();">
	<!-- container section start -->
	<section id="container" class="">


		<header class="header dark-bg">
			<div class="toggle-nav">
				<div class="icon-reorder tooltips"
					data-original-title="Toggle Navigation" data-placement="bottom">
					<i class="icon_menu"></i>
				</div>
			</div>

			<!--logo start-->
			<a href="index.html" class="logo">Sale <span class="lite">Stat</span></a>
			<!--logo end-->

			<!--           <div class="nav search-row" id="top_menu">
            <ul class="nav top-menu">
              <li>
                <form class="navbar-form">
                  <input class="form-control" placeholder="Search" type="text">
                </form>
              </li>
            </ul>
          </div> -->

			<div class="top-nav notification-row">
				<ul class="nav pull-right top-menu">

					<!--               <li id="task_notificatoin_bar" class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-task-l"></i>
                            <span class="badge bg-important">6</span>
                        </a>
                <ul class="dropdown-menu extended tasks-bar">
                  <div class="notify-arrow notify-arrow-blue"></div>
                  <li>
                    <p class="blue">You have 6 pending letter</p>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Design PSD </div>
                        <div class="percent">90%</div>
                      </div>
                      <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                          <span class="sr-only">90% Complete (success)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">
                          Project 1
                        </div>
                        <div class="percent">30%</div>
                      </div>
                      <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                          <span class="sr-only">30% Complete (warning)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Digital Marketing</div>
                        <div class="percent">80%</div>
                      </div>
                      <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                          <span class="sr-only">80% Complete</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Logo Designing</div>
                        <div class="percent">78%</div>
                      </div>
                      <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                          <span class="sr-only">78% Complete (danger)</span>
                        </div>
                      </div>
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <div class="task-info">
                        <div class="desc">Mobile App</div>
                        <div class="percent">50%</div>
                      </div>
                      <div class="progress progress-striped active">
                        <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                          <span class="sr-only">50% Complete</span>
                        </div>
                      </div>

                    </a>
                  </li>
                  <li class="external">
                    <a href="#">See All Tasks</a>
                  </li>
                </ul>
              </li>
             
              <li id="mail_notificatoin_bar" class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-envelope-l"></i>
                            <span class="badge bg-important">5</span>
                        </a>
                <ul class="dropdown-menu extended inbox">
                  <div class="notify-arrow notify-arrow-blue"></div>
                  <li>
                    <p class="blue">You have 5 new messages</p>
                  </li>
                  <li>
                    <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Greg  Martin</span>
                                    <span class="time">1 min</span>
                                    </span>
                                    <span class="message">
                                        I really like this admin panel.
                                    </span>
                                </a>
                  </li>
                  <li>
                    <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini2.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Bob   Mckenzie</span>
                                    <span class="time">5 mins</span>
                                    </span>
                                    <span class="message">
                                     Hi, What is next project plan?
                                    </span>
                                </a>
                  </li>
                  <li>
                    <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini3.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Phillip   Park</span>
                                    <span class="time">2 hrs</span>
                                    </span>
                                    <span class="message">
                                        I am like to buy this Admin Template.
                                    </span>
                                </a>
                  </li>
                  <li>
                    <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini4.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Ray   Munoz</span>
                                    <span class="time">1 day</span>
                                    </span>
                                    <span class="message">
                                        Icon fonts are great.
                                    </span>
                                </a>
                  </li>
                  <li>
                    <a href="#">See all messages</a>
                  </li>
                </ul>
              </li>
              
              <li id="alert_notificatoin_bar" class="dropdown">
                <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icon-bell-l"></i>
                            <span class="badge bg-important">7</span>
                        </a>
                <ul class="dropdown-menu extended notification">
                  <div class="notify-arrow notify-arrow-blue"></div>
                  <li>
                    <p class="blue">You have 4 new notifications</p>
                  </li>
                  <li>
                    <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span>
                                    Friend Request
                                    <span class="small italic pull-right">5 mins</span>
                                </a>
                  </li>
                  <li>
                    <a href="#">
                                    <span class="label label-warning"><i class="icon_pin"></i></span>
                                    John location.
                                    <span class="small italic pull-right">50 mins</span>
                                </a>
                  </li>
                  <li>
                    <a href="#">
                                    <span class="label label-danger"><i class="icon_book_alt"></i></span>
                                    Project 3 Completed.
                                    <span class="small italic pull-right">1 hr</span>
                                </a>
                  </li>
                  <li>
                    <a href="#">
                                    <span class="label label-success"><i class="icon_like"></i></span>
                                    Mick appreciated your work.
                                    <span class="small italic pull-right"> Today</span>
                                </a>
                  </li>
                  <li>
                    <a href="#">See all notifications</a>
                  </li>
                </ul>
              </li> -->

					<li class="dropdown"><a data-toggle="dropdown"
						class="dropdown-toggle" href="#"> <span class="profile-ava">
								<img alt="" src="../img/avatar1_small.jpg">
						</span> <span class="username" id="username">Jenifer Smith</span> <b
							class="caret"></b>
					</a>
						<ul class="dropdown-menu extended logout">
							<!--                   <div class="log-arrow-up"></div>
                  <li class="eborder-top">
                    <a href="#"><i class="icon_profile"></i> My Profile</a>
                  </li>
                  <li>
                    <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                  </li>
                  <li>
                    <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                  </li>
                  <li>
                    <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                  </li> -->
							<li class="eborder-top"><a href="profile"><i
									class="icon_profile"></i> My Profile</a></li>
							<li><a href="login.html"><i class="icon_key_alt"></i>
									Log Out</a></li>
							<!--                   <li>
                    <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                  </li>
                  <li>
                    <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                  </li> -->
						</ul></li>
				</ul>

			</div>
		</header>
		<!--header end-->

		<!--sidebar start-->
		<aside>
			<div id="sidebar" class="nav-collapse ">
				<!-- sidebar menu start-->
				<ul class="sidebar-menu">
					<li class="active"><a class="" href="dashboard"> <i
							class="icon_house_alt"></i> <span>DASHBOARD</span>
					</a></li>
					<li class="sub-menu"><a onClick="stateDropdown()"
						href="javascript:;" class=""> <i class="fa fa-globe"></i>
							<span>STATES</span> <span class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<c:forEach items="${stateDropdownList}" var="state">
								<li><a class="" href="state_sales?state=${state.state_id}&start=0&end=0"
									id=""><c:out value="${state.state_name}" /></a></li>
							</c:forEach>
						</ul></li>
					<li><a class="" href="all_doctors"> <i class="fa fa-user-md"></i> <span>DOCTORS</span>
					</a></li>
					<li><a class="" href="medicine"> <i class="fa fa-medkit"></i>
							<span>MEDICINES</span>
					</a></li>
					<!-- <li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_desktop"></i> <span>UI Features</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="general.html">Elements</a></li>
							<li><a class="" href="buttons.html">Buttons</a></li>
							<li><a class="" href="grids.html">Grids</a></li>
						</ul></li> -->

					<li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_table"></i> <span>DATA ENTRY</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="data_entry">DATA ENTRY</a></li>
						</ul></li>

					<!-- <li class="sub-menu"><a href="javascript:;" class=""> <i
							class="icon_documents_alt"></i> <span>Pages</span> <span
							class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="profile">Profile</a></li>
							<li><a class="" href="login.html"><span>Login
										Page</span></a></li>
							<li><a class="" href="contact.html"><span>Contact
										Page</span></a></li>
							<li><a class="" href="blank.html">Blank Page</a></li>
							<li><a class="" href="404.html">404 Error</a></li>
						</ul></li> -->

					<li class="sub-menu"><a href="javascript:;" id="admin_enable"
						class="disabled"> <i class="fa fa-lock"></i> <span>ADMIN</span>
							<span class="menu-arrow arrow_carrot-right"></span>
					</a>
						<ul class="sub">
							<li><a class="" href="user_doctor"><span>User -
										Doctor </span></a></li>
							<li><a class="" href="doctor_medicine"><span>Doctor
										- Medicine </span></a></li>
							<li><a class="" href="add_role"><span>Add Role</span></a></li>
							<li><a class="" href="add_state"><span>Add State</span></a></li>
							<li><a class="" href="add_headquarter"><span>Add
										Headquarter</span></a></li>
							<li><a class="" href="add_doctor">Add Doctor</a></li>
							<li><a class="" href="add_medicine"><span>Add
										Medicine</span></a></li>
							<li><a class="" href="add_sponsorship"><span>Add
										Sponsorship</span></a></li>


						</ul></li>

				</ul>
				<!-- sidebar menu end-->
			</div>
		</aside>
		<!--sidebar end-->

		<script>
			function username() {
				this.getData = function() {
					return JSON.parse(localStorage.getItem('saleStatData'));

				}
				document.getElementById("username").innerHTML = this.getData().username
						.toUpperCase();
				if (this.getData().role_abbr.toUpperCase() !== 'ADMIN') {
					document.getElementById('admin_enable').style.pointerEvents = "none";
					document.getElementById('admin_enable').style.cursor = "default";
				}

			}

			function stateDropdown() {
				this.getData = function() {
					return JSON.parse(localStorage.getItem('saleStatData'));
				}

				var stateId = this.getData().state_id;
				var statedropdownjson = {
					state_id : stateId
				}
				console.log(statedropdownjson);
				$.ajax({
					url : '/state_dropdown_data',
					type : 'post',
					dataType : 'text',
					contentType : 'application/json',
					success : function(data) {
						if (data == "success") {
						}

						console.log("---> ", data);

					},
					data : JSON.stringify(statedropdownjson)

				});

			}
		</script>
</body>
</html>