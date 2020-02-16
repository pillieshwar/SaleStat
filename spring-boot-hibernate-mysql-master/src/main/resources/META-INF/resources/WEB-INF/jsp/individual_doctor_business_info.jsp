<!DOCTYPE html>
<html lang="en">
 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet"/>
  <script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
  <title>Doctor's Business</title>

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

  <style>
  th:first-child, td:first-child
{
  position:sticky;
  left:0px;
  background-color:white;
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
.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
    padding: 0.5em;
}
.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}
.highcharts-data-table tr:hover {
    background: #f1f7ff;
}

  </style>
</head>

<body>
  <!-- container section start -->
  <section id="container" class="">
    <!--header start-->
    <header class="header dark-bg">
      <div class="toggle-nav">
        <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
      </div>

      <!--logo start-->
      <a href="index.html" class="logo">Nice <span class="lite">Admin</span></a>
      <!--logo end-->

      <div class="top-nav notification-row">
        
          <!-- user login dropdown start-->
          <li class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/avatar1_small.jpg">
                            </span>
                            <span class="username">Jenifer Smith</span>
                            <b class="caret"></b>
                        </a>
            <ul class="dropdown-menu extended logout">
              <div class="log-arrow-up"></div>
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
              </li>
              <li>
                <a href="login.html"><i class="icon_key_alt"></i> Log Out</a>
              </li>
              <li>
                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
              </li>
              <li>
                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
              </li>
            </ul>
          </li>
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
          <li class="">
            <a class="" href="index.html">
                          <i class="icon_house_alt"></i>
                          <span>Dashboard</span>
                      </a>
          </li>
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_document_alt"></i>
                          <span>Forms</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="form_component.html">Form Elements</a></li>
              <li><a class="" href="form_validation.html">Form Validation</a></li>
            </ul>
          </li>
          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_desktop"></i>
                          <span>UI Fitures</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="general.html">Components</a></li>
              <li><a class="" href="buttons.html">Buttons</a></li>
              <li><a class="" href="grids.html">Grids</a></li>
            </ul>
          </li>
          <li>
            <a class="" href="widgets.html">
                          <i class="icon_genius"></i>
                          <span>Widgets</span>
                      </a>
          </li>
          <li>
            <a class="" href="chart-chartjs.html">
                          <i class="icon_piechart"></i>
                          <span>Charts</span>

                      </a>

          </li>

          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_table"></i>
                          <span>Tables</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="active" href="basic_table.html">Basic Table</a></li>
            </ul>
          </li>

          <li class="sub-menu">
            <a href="javascript:;" class="">
                          <i class="icon_documents_alt"></i>
                          <span>Pages</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                      </a>
            <ul class="sub">
              <li><a class="" href="profile.html">Profile</a></li>
              <li><a class="" href="login.html"><span>Login Page</span></a></li>
              <li><a class="" href="contact.html"><span>Contact Page</span></a></li>
              <li><a class="" href="blank.html">Blank Page</a></li>
              <li><a class="" href="404.html">404 Error</a></li>
            </ul>
          </li>

        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>

    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-table"></i> Table</h3>
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
                <h3>General Chart</Char>
              </header>
              <div class="panel-body" style="height:100%">
                <div class="tab-pane" id="chartjs">
                  <div class="row">

                    <!-- Bar -->
                    <div class="col-lg-12">
                      <section class="panel">
                        <header class="panel-heading">
                          Bar
                        </header>
                        <div class="panel-body text-center">
                          <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<!--                     <div id="chart_div" style="height: 1000px;"></div> -->
<figure class="highcharts-figure">
    <div id="container2"></div>
    <p class="highcharts-description">
        This chart shows how symbols and shapes can be used in charts.
        Highcharts includes several common symbol shapes, such as squares,
        circles and triangles, but it is also possible to add your own
        custom symbols. In this chart, custom weather symbols are used on
        data points to highlight that certain temperatures are warm while
        others are cold.
    </p>
</figure>                        </div>
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
              <header class="panel-heading">
                Advanced Table
              </header>

              <div class="table-responsive text-nowrap">
        <!--Table-->
        <table class="table table-striped">

          <!--Table head-->
          <thead>
            <tr>
              <th> Doctor </th>
              <th> ASM Visits</th>
              <th> RM Visits</th>
              <th> RX FOR TARGETED BRAND UNITS </th>
              <th> TOTAL VALUE SALE FOR THE MONTH </th>
              <th> HQ. PRIM SALES VAL (LACS) </th>
              <th> HQ. SEC. SALES VAL (LACS) </th>
              <th> Region </th>
            </tr>
          </thead>
          <!--Table head-->

          <!--Table body-->
          <tbody>
            <tr>
              <td><a class="" href="individual_doctor_business_info.jsp">Kate</td>
              <td>Moss</td>
              <td>USA / The United Kingdom / China / Russia </td>
              <td>New York City / Warsaw / Lodz / Amsterdam / London / Chicago</td>
              <td>Web Designer /UX designer / Ul designer / JavaScript Developer</td>
              <td>23</td>
              <td>23</td>
            </tr>
            <tr>
              <td><a class="" href="individual_doctor_business_info.jsp">Kate</td>
              <td>Moss</td>
              <td>USA / The United Kingdom / China / Russia </td>
              <td>New York City / Warsaw / Lodz / Amsterdam / London / Chicago</td>
              <td>Web Designer /UX designer / Ul designer / JavaScript Developer</td>
              <td>23</td>
              <td>23</td>
            </tr><tr>
              <td><a class="" href="individual_doctor_business_info.jsp">Kate</td>
              <td>Moss</td>
              <td>USA / The United Kingdom / China / Russia </td>
              <td>New York City / Warsaw / Lodz / Amsterdam / London / Chicago</td>
              <td>Web Designer /UX designer / Ul designer / JavaScript Developer</td>
              <td>23</td>
              <td>23</td>
            </tr>
            <tr>
              <td><a class="" href="individual_doctor_business_info.jsp">Kate</td>
              <td>Moss</td>
              <td>USA / The United Kingdom / China / Russia </td>
              <td>New York City / Warsaw / Lodz / Amsterdam / London / Chicago</td>
              <td>Web Designer /UX designer / Ul designer / JavaScript Developer</td>
              <td>23</td>
              <td>23</td>
            </tr>
            <tr>
              <td><a class="" href="individual_doctor_business_info.jsp">Kate</td>
              <td>Moss</td>
              <td>USA / The United Kingdom / China / Russia </td>
              <td>New York City / Warsaw / Lodz / Amsterdam / London / Chicago</td>
              <td>Web Designer /UX designer / Ul designer / JavaScript Developer</td>
              <td>23</td>
              <td>23</td>
            </tr>
            <tr>
              <td><a class="" href="individual_doctor_business_info.jsp">Kate</td>
              <td>Moss</td>
              <td>USA / The United Kingdom / China / Russia </td>
              <td>New York City / Warsaw / Lodz / Amsterdam / London / Chicago</td>
              <td>Web Designer /UX designer / Ul designer / JavaScript Developer</td>
              <td>23</td>
              <td>23</td>
            </tr>
            <tr>
              <td><a class="" href="individual_doctor_business_info.jsp">Kate</td>
              <td>Moss</td>
              <td>USA / The United Kingdom / China / Russia </td>
              <td>New York City / Warsaw / Lodz / Amsterdam / London / Chicago</td>
              <td>Web Designer /UX designer / Ul designer / JavaScript Developer</td>
              <td>23</td>
              <td>23</td>
            </tr>

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

        	<c:forEach items="${location}" var="loc">
        	${loc.region},
        	</c:forEach>
        	
        	]
    }, {
        name: 'London',
        data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
    }]
});
</script>

</body>

</html>
