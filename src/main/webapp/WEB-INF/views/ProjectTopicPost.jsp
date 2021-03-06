<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>Wall</title>
<meta name="description" content="">
<meta name="author" content="">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- #CSS Links -->
<!-- Basic Styles -->
<link href='<c:url value="/resources/css/bootstrap.min.css" />'
	rel="stylesheet">
<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css"> -->
<link href='<c:url value="/resources/css/font-awesome.min.css" />'
	rel="stylesheet">
<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/font-awesome.min.css"> -->

<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
<link
	href='<c:url value="/resources/css/smartadmin-production-plugins.min.css" />'
	rel="stylesheet">
<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-production-plugins.min.css"> -->
<link
	href='<c:url value="/resources/css/smartadmin-production.min.css" />'
	rel="stylesheet">
<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-production.min.css"> -->
<link href='<c:url value="/resources/css/smartadmin-skins.min.css" />'
	rel="stylesheet">
<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-skins.min.css"> -->

<!-- SmartAdmin RTL Support -->
<link href='<c:url value="/resources/css/smartadmin-rtl.min.css" />'
	rel="stylesheet">
<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.min.css"> -->

<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
		<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/demo.min.css"> -->
<link href='<c:url value="/resources/css/demo.min.css" />'
	rel="stylesheet">

<!-- #FAVICONS -->
<link href='<c:url value="/resources/img/favicon/favicon.ico" />'
	rel="shortcut icon" type="image/x-icon">
<!-- <link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon"> -->
<link href='<c:url value="/resources/img/favicon/favicon.ico" />'
	rel="icon" type="image/x-icon">
<!-- <link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon"> -->

<!-- #GOOGLE FONT -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<!-- #APP SCREEN / ICONS -->
<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
<link
	href='<c:url value="/resources/img/splash/sptouch-icon-iphone.png" />'
	rel="apple-touch-icon">
<!-- <link rel="apple-touch-icon" href="img/splash/sptouch-icon-iphone.png"> -->
<link href='<c:url value="/resources/img/splash/touch-icon-ipad.png" />'
	rel="apple-touch-icon" sizes="76x76">
<!-- <link rel="apple-touch-icon" sizes="76x76" href="img/splash/touch-icon-ipad.png"> -->
<link
	href='<c:url value="/resources/img/splash/touch-icon-iphone-retina.png" />'
	rel="apple-touch-icon" sizes="120x120">
<!-- <link rel="apple-touch-icon" sizes="120x120" href="img/splash/touch-icon-iphone-retina.png"> -->
<link
	href='<c:url value="/resources/img/splash/touch-icon-ipad-retina.png" />'
	rel="apple-touch-icon" sizes="152x152">
<!-- <link rel="apple-touch-icon" sizes="152x152" href="img/splash/touch-icon-ipad-retina.png"> -->

<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- Startup image for web apps -->
<link href='<c:url value="/resources/img/splash/ipad-landscape.png" />'
	rel="apple-touch-startup-image"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
<!-- <link rel="apple-touch-startup-image" href="img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)"> -->
<link href='<c:url value="/resources/img/splash/ipad-portrait.png" />'
	rel="apple-touch-startup-image"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
<!-- <link rel="apple-touch-startup-image" href="img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)"> -->
<link href='<c:url value="/resources/img/splash/iphone.png" />'
	rel="apple-touch-startup-image"
	media="screen and (max-device-width: 320px)">
<!-- <link rel="apple-touch-startup-image" href="img/splash/iphone.png" media="screen and (max-device-width: 320px)"> -->

</head>

<!--

	TABLE OF CONTENTS.
	
	Use search to find needed section.
	
	===================================================================
	
	|  01. #CSS Links                |  all CSS links and file paths  |
	|  02. #FAVICONS                 |  Favicon links and file paths  |
	|  03. #GOOGLE FONT              |  Google font link              |
	|  04. #APP SCREEN / ICONS       |  app icons, screen backdrops   |
	|  05. #BODY                     |  body tag                      |
	|  06. #HEADER                   |  header tag                    |
	|  07. #PROJECTS                 |  project lists                 |
	|  08. #TOGGLE LAYOUT BUTTONS    |  layout buttons and actions    |
	|  09. #MOBILE                   |  mobile view dropdown          |
	|  10. #SEARCH                   |  search field                  |
	|  11. #NAVIGATION               |  left panel & navigation       |
	|  12. #MAIN PANEL               |  main panel                    |
	|  13. #MAIN CONTENT             |  content holder                |
	|  14. #PAGE FOOTER              |  page footer                   |
	|  15. #SHORTCUT AREA            |  dropdown shortcuts area       |
	|  16. #PLUGINS                  |  all scripts and plugins       |
	
	===================================================================
	
	-->

<!-- #BODY -->
<!-- Possible Classes

		* 'smart-style-{SKIN#}'
		* 'smart-rtl'         - Switch theme mode to RTL
		* 'menu-on-top'       - Switch to top navigation (no DOM change required)
		* 'no-menu'			  - Hides the menu completely
		* 'hidden-menu'       - Hides the main menu but still accessable by hovering over left edge
		* 'fixed-header'      - Fixes the header
		* 'fixed-navigation'  - Fixes the main menu
		* 'fixed-ribbon'      - Fixes breadcrumb
		* 'fixed-page-footer' - Fixes footer
		* 'container'         - boxed layout mode (non-responsive: will not work with fixed-navigation & fixed-ribbon)
	-->
<body class="">

	<!-- #HEADER -->
	<header id="header">
	<div id="logo-group">

		<!-- PLACE YOUR LOGO HERE -->
		<span id="logo"> <img src="Resource/img/logo.png" alt="Fliker">
		</span>
		<!-- END LOGO PLACEHOLDER -->

		<!-- Note: The activity badge color changes when clicked and resets the number to 0
				Suggestion: You may want to set a flag when this happens to tick off all checked messages / notifications -->
		<span id="activity" class="activity-dropdown"> <i
			class="fa fa-user"></i> <b class="badge"> 21 </b>
		</span>

		<!-- AJAX-DROPDOWN : control this dropdown height, look and feel from the LESS variable file -->
		<div class="ajax-dropdown">

			<!-- the ID links are fetched via AJAX to the ajax container "ajax-notifications" -->
			<div class="btn-group btn-group-justified" data-toggle="buttons">
				<label class="btn btn-default"> <input type="radio"
					name="activity" id="offlinechatmessages?"> Msgs (14)
				</label> <label class="btn btn-default"> <input type="radio"
					name="activity" id="notifications?"> notify (3)
				</label> <label class="btn btn-default"> <input type="radio"
					name="activity" id="tasklists?"> Tasks (4)
				</label>
			</div>

			<!-- notification content -->
			<div class="ajax-notifications custom-scroll">

				<div class="alert alert-transparent">
					<h4>Click a button to show messages here</h4>
					This blank page message helps protect your privacy, or you can show
					the first message here automatically.
				</div>

				<i class="fa fa-lock fa-4x fa-border"></i>

			</div>
			<!-- end notification content -->

			<!-- footer: refresh area -->
			<span> Last updated on: 12/12/2013 9:43AM
				<button type="button"
					data-loading-text="<i class='fa fa-refresh fa-spin'></i> Loading..."
					class="btn btn-xs btn-default pull-right">
					<i class="fa fa-refresh"></i>
				</button>
			</span>
			<!-- end footer -->

		</div>
		<!-- END AJAX-DROPDOWN -->
	</div>

	<!-- projects dropdown -->
	<div class="project-context hidden-xs">

		<span class="label">Projects:</span> <span
			class="project-selector dropdown-toggle" data-toggle="dropdown">Recent
			projects <i class="fa fa-angle-down"></i>
		</span>

		<!-- Suggestion: populate this list with fetch and push technique -->
		<ul class="dropdown-menu">
			<li><a href="javascript:void(0);">Online e-merchant
					management system - attaching integration with the iOS</a></li>
			<li><a href="javascript:void(0);">Notes on pipeline upgradee</a>
			</li>
			<li><a href="javascript:void(0);">Assesment Report for
					merchant account</a></li>
			<li class="divider"></li>
			<li><a href="javascript:void(0);"><i class="fa fa-power-off"></i>
					Clear</a></li>
		</ul>
		<!-- end dropdown-menu-->

	</div>
	<!-- end projects dropdown --> <!-- pulled right: nav area -->
	<div class="pull-right">

		<!-- collapse menu button -->
		<div id="hide-menu" class="btn-header pull-right">
			<span> <a href="javascript:void(0);" data-action="toggleMenu"
				title="Collapse Menu"><i class="fa fa-reorder"></i></a>
			</span>
		</div>
		<!-- end collapse menu -->

		<!-- #MOBILE -->
		<!-- Top menu profile link : this shows only when top menu is active -->
		<ul id="mobile-profile-img"
			class="header-dropdown-list hidden-xs padding-5">
			<li class=""><a href="#"
				class="dropdown-toggle no-margin userdropdown"
				data-toggle="dropdown"> <img src="img/avatars/sunny.png"
					alt="John Doe" class="online" />
			</a>
				<ul class="dropdown-menu pull-right">
					<li><a href="javascript:void(0);"
						class="padding-10 padding-top-0 padding-bottom-0"><i
							class="fa fa-cog"></i> Setting</a></li>
					<li class="divider"></li>
					<li><a href="profile.html"
						class="padding-10 padding-top-0 padding-bottom-0"> <i
							class="fa fa-user"></i> <u>P</u>rofile
					</a></li>
					<li class="divider"></li>
					<li><a href="javascript:void(0);"
						class="padding-10 padding-top-0 padding-bottom-0"
						data-action="toggleShortcut"><i class="fa fa-arrow-down"></i>
							<u>S</u>hortcut</a></li>
					<li class="divider"></li>
					<li><a href="javascript:void(0);"
						class="padding-10 padding-top-0 padding-bottom-0"
						data-action="launchFullscreen"><i class="fa fa-arrows-alt"></i>
							Full <u>S</u>creen</a></li>
					<li class="divider"></li>
					<li><a href="logout?" 
						class="padding-10 padding-top-5 padding-bottom-5"
						data-action="userLogout"><i class="fa fa-sign-out fa-lg"></i>
							<strong><u>L</u>ogout</strong></a></li>
				</ul></li>
		</ul>

		<!-- logout button -->
		<div id="logout" class="btn-header transparent pull-right">
			<span> <a href="logout?"  title="Sign Out"
				data-action="userLogout"
				data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i
					class="fa fa-sign-out"></i></a>
			</span>
		</div>
		<!-- end logout button -->

		<!-- search mobile button (this is hidden till mobile view port) -->
		<div id="search-mobile" class="btn-header transparent pull-right">
			<span> <a href="javascript:void(0)" title="Search"><i
					class="fa fa-search"></i></a>
			</span>
		</div>
		<!-- end search mobile button -->

		<!-- input: search field -->
		<form action="search.html" class="header-search pull-right">
			<input id="search-fld" type="text" name="param"
				placeholder="Find reports and more"
				data-autocomplete='[
					"ActionScript",
					"AppleScript",
					"Asp",
					"BASIC",
					"C",
					"C++",
					"Clojure",
					"COBOL",
					"ColdFusion",
					"Erlang",
					"Fortran",
					"Groovy",
					"Haskell",
					"Java",
					"JavaScript",
					"Lisp",
					"Perl",
					"PHP",
					"Python",
					"Ruby",
					"Scala",
					"Scheme"]'>
			<button type="submit">
				<i class="fa fa-search"></i>
			</button>
			<a href="javascript:void(0);" id="cancel-search-js"
				title="Cancel Search"><i class="fa fa-times"></i></a>
		</form>
		<!-- end input: search field -->

		<!-- fullscreen button -->
		<div id="fullscreen" class="btn-header transparent pull-right">
			<span> <a href="javascript:void(0);"
				data-action="launchFullscreen" title="Full Screen"><i
					class="fa fa-arrows-alt"></i></a>
			</span>
		</div>
		<!-- end fullscreen button -->

		<!-- #Voice Command: Start Speech -->
		<div id="speech-btn"
			class="btn-header transparent pull-right hidden-sm hidden-xs">
			<div>
				<a href="javascript:void(0)" title="Voice Command"
					data-action="voiceCommand"><i class="fa fa-microphone"></i></a>
				<div class="popover bottom">
					<div class="arrow"></div>
					<div class="popover-content">
						<h4 class="vc-title">
							Voice command activated <br> <small>Please speak
								clearly into the mic</small>
						</h4>
						<h4 class="vc-title-error text-center">
							<i class="fa fa-microphone-slash"></i> Voice command failed <br>
							<small class="txt-color-red">Must <strong>"Allow"</strong>
								Microphone
							</small> <br> <small class="txt-color-red">Must have <strong>Internet
									Connection</strong></small>
						</h4>
						<a href="javascript:void(0);" class="btn btn-success"
							onclick="commands.help()">See Commands</a> <a
							href="javascript:void(0);"
							class="btn bg-color-purple txt-color-white"
							onclick="$('#speech-btn .popover').fadeOut(50);">Close Popup</a>
					</div>
				</div>
			</div>
		</div>
		<!-- end voice command -->

		<!-- multiple lang dropdown : find all flags in the flags page -->
		<!-- <ul class="header-dropdown-list hidden-xs">
					<li>
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img src="img/blank.gif" class="flag flag-us" alt="United States"> <span> English (US) </span> <i class="fa fa-angle-down"></i> </a>
						<ul class="dropdown-menu pull-right">
							<li class="active">
								<a href="javascript:void(0);"><img src="img/blank.gif" class="flag flag-us" alt="United States"> English (US)</a>
							</li>
							<li>
								<a href="javascript:void(0);"><img src="img/blank.gif" class="flag flag-fr" alt="France"> FranÃÂÃÂ§ais</a>
							</li>
							<li>
								<a href="javascript:void(0);"><img src="img/blank.gif" class="flag flag-es" alt="Spanish"> EspaÃÂÃÂ±ol</a>
							</li>
							<li>
								<a href="javascript:void(0);"><img src="img/blank.gif" class="flag flag-de" alt="German"> Deutsch</a>
							</li>
							<li>
								<a href="javascript:void(0);"><img src="img/blank.gif" class="flag flag-jp" alt="Japan"> ÃÂ¦Ã¢ÂÂÃÂ¥ÃÂ¦ÃÂÃÂ¬ÃÂ¨ÃÂªÃÂ¾</a>
							</li>
							<li>
								<a href="javascript:void(0);"><img src="img/blank.gif" class="flag flag-cn" alt="China"> ÃÂ¤ÃÂ¸ÃÂ­ÃÂ¦Ã¢ÂÂÃ¢ÂÂ¡</a>
							</li>	
							<li>
								<a href="javascript:void(0);"><img src="img/blank.gif" class="flag flag-it" alt="Italy"> Italiano</a>
							</li>	
							<li>
								<a href="javascript:void(0);"><img src="img/blank.gif" class="flag flag-pt" alt="Portugal"> Portugal</a>
							</li>
							<li>
								<a href="javascript:void(0);"><img src="img/blank.gif" class="flag flag-ru" alt="Russia"> ÃÂÃÂ ÃÂÃÂÃÂÃÂÃÂÃÂÃÂÃÂºÃÂÃÂ¸ÃÂÃÂ¹ ÃÂÃÂÃÂÃÂ·ÃÂÃ¢ÂÂ¹ÃÂÃÂº</a>
							</li>
							<li>
								<a href="javascript:void(0);"><img src="img/blank.gif" class="flag flag-kr" alt="Korea"> ÃÂ­Ã¢ÂÂ¢ÃÂÃÂªÃÂµÃÂ­ÃÂ¬Ã¢ÂÂÃÂ´</a>
							</li>						
							
						</ul>
					</li>
				</ul> -->
		<!-- end multiple lang -->

	</div>
	<!-- end pulled right: nav area --> </header>
	<!-- END HEADER -->

	<!-- #NAVIGATION -->
	<!-- Left panel : Navigation area -->
	<!-- Note: This width of the aside area can be adjusted through LESS variables -->
	<aside id="left-panel"> <!-- User info -->
	<div class="login-info">
		<span> <!-- User image size is adjusted inside CSS, it should stay as it -->

			<a href="javascript:void(0);" id="show-shortcut"
			data-action="toggleShortcut"> <img src="img/avatars/sunny.png"
				alt="me" class="online" /> <span> john.doe </span> <i
				class="fa fa-angle-down"></i>
		</a>

		</span>
	</div>
	<!-- end user info --> <nav> <!-- 
				NOTE: Notice the gaps after each icon usage <i></i>..
				Please note that these links work a bit different than
				traditional href="" links. See documentation for details.
				-->

	<ul>
		<li class="active"><a href="projectdash?"><i
				class="fa fa-lg fa-fw fa-search-plus"></i> <span
				class="menu-item-parent">Dashboard</span> </a></li>
		<li><a href="projectcalendar?"><i
				class="fa fa-lg fa-fw fa-retweet txt-color-blue"></i> <span
				class="menu-item-parent">Calendar</span> </a></li>
		<li><a href="projectblog?"><i class="fa fa-lg fa-fw fa-info"></i>
				<span class="menu-item-parent">Discussion</span> </a></li>
		<li><a href="projecttimeline?"><i
				class="fa fa-lg fa-fw fa-road"></i> <span class="menu-item-parent">Timeline</span>
		</a></li>
		<li><a href="projectdrive?" title="NewPost"><i
				class="fa fa-lg fa-fw fa-inbox"></i><span class="menu-item-parent">Share
					Drive</span></a></li>
		<li><a href="projectplanning?" title="NewPost"><i
				class="fa fa-lg fa-fw fa-inbox"></i><span class="menu-item-parent">Project
					Planning</span></a></li>

	</ul>
	</nav> <span class="minifyme" data-action="minifyMenu"> <i
		class="fa fa-arrow-circle-left hit"></i>
	</span> </aside>
	<!-- END NAVIGATION -->

	<!-- MAIN PANEL -->
	<div id="main" role="main">

		<!-- RIBBON -->
		<div id="ribbon">

			<span class="ribbon-button-alignment"> <span id="refresh"
				class="btn btn-ribbon" data-action="resetWidgets"
				data-title="refresh" rel="tooltip" data-placement="bottom"
				data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings."
				data-html="true"> <i class="fa fa-refresh"></i>
			</span>
			</span>

			<!-- breadcrumb -->
			<ol class="breadcrumb">
				<li>Search Page</li>
			</ol>
			<!-- end breadcrumb -->

			<!-- You can also add more buttons to the
				ribbon for further usability

				Example below:

				<span class="ribbon-button-alignment pull-right">
				<span id="search" class="btn btn-ribbon hidden-xs" data-title="search"><i class="fa-grid"></i> Change Grid</span>
				<span id="add" class="btn btn-ribbon hidden-xs" data-title="add"><i class="fa-plus"></i> Add</span>
				<span id="search" class="btn btn-ribbon" data-title="search"><i class="fa-search"></i> <span class="hidden-mobile">Search</span></span>
				</span> -->

		</div>
		<!-- END RIBBON -->

		<!-- MAIN CONTENT -->
		<div id="content">

			<!-- row -->

			<div class="row">

				<div class="col-sm-12">

					<ul id="myTab1" class="nav nav-tabs bordered">
						<li class="active"><a href="#s1" data-toggle="tab">Forum
								Discussion<i class="fa fa-caret-down"></i>
						</a></li>
						<li><a href="#s2" data-toggle="tab">New Topic</a></li>

						<!-- <li class="pull-right hidden-mobile">
								<a href="javascript:void(0);"> <span class="note">About 24,431 results (0.15 seconds) </span> </a>
							</li> -->
					</ul>

					<div id="myTabContent1"
						class="tab-content bg-color-white padding-10">
						<div class="tab-pane fade in active" id="s1">
							<!-- MAIN CONTENT -->
							<div id="content">

								<!-- Bread crumb is created dynamically -->
								<!-- row -->
								<div class="row">

									<!-- col -->
									<div class="col-xs-12 col-sm-3 col-md-4 col-lg-4">
										<h1 class="page-title txt-color-blueDark">
											<!-- PAGE HEADER -->
											<i class="fa-fw fa fa-puzzle-piece"></i> App Views <span>>
												Forum Layout > Post View </span>
										</h1>
									</div>
									<!-- end col -->

									<!-- right side of the page with the sparkline graphs -->
									<!-- col -->
									<div class="col-xs-12 col-sm-9 col-md-8 col-lg-8">
										<!-- sparks -->
										<ul id="sparks">
											<li class="sparks-info">
												<h5>
													My Income <span class="txt-color-blue">$47,171</span>
												</h5>
												<div class="sparkline txt-color-blue hidden-mobile">
													1300, 1877, 2500, 2577, 2000, 2100, 3000, 2700, 3631, 2471,
													2700, 3631, 2471</div>
											</li>
											<li class="sparks-info">
												<h5>
													Site Traffic <span class="txt-color-purple"><i
														class="fa fa-arrow-circle-up" title="Increased"></i>&nbsp;45%</span>
												</h5>
												<div class="sparkline txt-color-purple hidden-mobile">
													110,150,300,130,400,240,220,310,220,300, 270, 210</div>
											</li>
											<li class="sparks-info">
												<h5>
													Site Orders <span class="txt-color-greenDark"><i
														class="fa fa-shopping-cart"></i>&nbsp;2447</span>
												</h5>
												<div class="sparkline txt-color-greenDark hidden-mobile">
													110,150,300,130,400,240,220,310,220,300, 270, 210</div>
											</li>
										</ul>
										<!-- end sparks -->
									</div>
									<!-- end col -->

								</div>
								<!-- end row -->

								<!-- row -->
								<div class="row">

									<div class="col-sm-12">

										<div class="well">

											<table class="table table-striped table-forum">
												<thead>
													<tr>
														<th colspan="2"><a href="forum.html"> Projects </a> >
															<a href="forum-topic.html">Business Requirement Docs
														</a> > Nam quam nunc blandit vel</th>
													</tr>
												</thead>
												<tbody>
													<!-- Post -->
													<tr>
														<td class="text-center"><a href="profile.html"><img
																alt="" src="img/flags/us.png"> &nbsp; <strong>John
																	Doe</strong></a></td>
														<td>on <em>Jan 1, 2014 - 12:00am</em></td>
													</tr>
													<tr>
														<td class="text-center" style="width: 12%;">
															<div class="push-bit">
																<a href="profile.html"> <img
																	src="img/avatars/sunny.png" width="50" alt="avatar"
																	class="online">
																</a>
															</div>
															<small>473 Posts</small>
														</td>
														<td>
															<p>Donec pede justo, fringilla vel, aliquet nec,
																vulputate eget, arcu. In enim justo, rhoncus ut,
																imperdiet a, venenatis vitae, justo. Nullam dictum felis
																eu pede mollis pretium. Integer tincidunt. Cras dapibus.
																Vivamus elementum semper nisi. Aenean vulputate eleifend
																tellus. Aenean leo ligula, porttitor eu, consequat
																vitae, eleifend ac, enim. Aliquam lorem ante, dapibus
																in, viverra quis, feugiat a, tellus. Phasellus viverra
																nulla ut metus varius laoreet. Quisque rutrum. Aenean
																imperdiet.</p>
															<h5>Forecast Pie</h5>
															<span class="sparkline display-inline margin-bottom-10"
															data-sparkline-type="pie" data-sparkline-offset="90"
															data-sparkline-piesize="150px"> 33,20,10 </span>
															<p>Fringilla vel, aliquet nec, vulputate eget, arcu.
																In enim justo, rhoncus ut, imperdiet a, venenatis vitae,
																justo. Nullam dictum felis eu pede mollis pretium.
																Integer tincidunt. Cras dapibus. Vivamus elementum
																semper nisi. Aenean vulputate eleifend tellus. Aenean
																leo ligula, porttitor eu, consequat vitae, eleifend ac,
																enim. Aliquam lorem ante, dapibus in, viv.</p>
															<em>- John Doe <br> CEO, SmartAdmin
														</em>
														</td>
													</tr>
													<!-- end Post -->

													<!-- Post -->
													<tr>
														<td class="text-center"><a href="profile.html"><img
																alt="" src="img/flags/es.png"> &nbsp; <strong>Sadi
																	Orlaf</strong></a></td>
														<td>on <em>Jan 1, 2014 - 12:00am</em></td>
													</tr>
													<tr>
														<td class="text-center" style="width: 12%;">
															<div class="push-bit">
																<a href="profile.html"> <img src="img/avatars/5.png"
																	width="50" alt="avatar" class="offline">
																</a>
															</div>
															<small>473 Posts</small>
														</td>
														<td>
															<p>Donec pede justo, fringilla vel, aliquet nec,
																vulputate eget, arcu. In enim justo, rhoncus ut,
																imperdiet a, venenatis vitae, justo. Nullam dictum felis
																eu pede mollis pretium. Integer tincidunt. Cras dapibus.
																Vivamus elementum semper nisi. Aenean vulputate eleifend
																tellus. Aenean leo ligula, porttitor eu, consequat
																vitae, eleifend ac, enim. Aliquam lorem ante, dapibus
																in, viverra quis, feugiat a, tellus. Phasellus viverra
																nulla ut metus varius laoreet. Quisque rutrum. Aenean
																imperdiet.</p>
															<em>- Sadi Orlaf <br> Executive, SmartAdmin
														</em>
															<div class="forum-attachment">
																2 attachment(s) — <a href="javascript:void(0);">
																	Download all attachments</a>
																<ul class="list-inline margin-top-10">
																	<li class="well well-sm padding-5"><strong>rocketlaunch.jpg</strong>
																		<br> 400 kb <br> <a
																		href="javascript:void(0);"> Download</a> | <a
																		href="javascript:void(0);"> View</a></li>
																	<li class="well well-sm padding-5"><strong>budget.xsl</strong>
																		<br> 400 kb <br> <a
																		href="javascript:void(0);"> Download</a> | <a
																		href="javascript:void(0);"> Share</a></li>
																</ul>
															</div>
														</td>
													</tr>
													<!-- end Post -->

													<!-- Post -->
													<tr>
														<td class="text-center"><a href="profile.html"><img
																alt="" src="img/flags/us.png"> &nbsp; <strong>Me</strong></a></td>
														<td><em>Today</em></td>
													</tr>
													<tr>
														<td class="text-center" style="width: 12%;">
															<div class="push-bit">
																<a href="profile.html"> <img
																	src="img/avatars/sunny.png" width="50" alt="avatar"
																	class="online">
																</a>
															</div>
															<small>473 Posts</small>
														</td>
														<td><div id="forumPost"></div>

															<button class="btn btn-primary margin-top-10">
																Post</button>
															<button class="btn btn-success margin-top-10">
																Save for later</button></td>
													</tr>
													<!-- end Post -->

												</tbody>
											</table>

											<div class="text-center">
												<ul class="pagination pagination-sm">
													<li class="disabled"><a href="javascript:void(0);">Prev</a>
													</li>
													<li class="active"><a href="javascript:void(0);">1</a>
													</li>
													<li><a href="javascript:void(0);">2</a></li>
													<li><a href="javascript:void(0);">3</a></li>
													<li><a href="javascript:void(0);">...</a></li>
													<li><a href="javascript:void(0);">99</a></li>
													<li><a href="javascript:void(0);">Next</a></li>
												</ul>
											</div>

										</div>
									</div>

								</div>

								<!-- end row -->

							</div>
							<!-- END MAIN CONTENT -->
						</div>

						<div class="tab-pane fade" id="s2"></div>


					</div>

				</div>

			</div>

			<!-- end row -->

		</div>
		<!-- END MAIN CONTENT -->

	</div>
	<!-- END MAIN PANEL -->

	<!-- PAGE FOOTER -->
	<div class="page-footer">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<span class="txt-color-white">SmartAdmin 1.8.2 <span
					class="hidden-xs"> - Web Application Framework</span> ÃÂÃÂ©
					2014-2015
				</span>
			</div>

			<div class="col-xs-6 col-sm-6 text-right hidden-xs">
				<div class="txt-color-white inline-block">
					<i class="txt-color-blueLight hidden-mobile">Last account
						activity <i class="fa fa-clock-o"></i> <strong>52 mins
							ago &nbsp;</strong>
					</i>
					<div class="btn-group dropup">
						<button
							class="btn btn-xs dropdown-toggle bg-color-blue txt-color-white"
							data-toggle="dropdown">
							<i class="fa fa-link"></i> <span class="caret"></span>
						</button>
						<ul class="dropdown-menu pull-right text-left">
							<li>
								<div class="padding-5">
									<p class="txt-color-darken font-sm no-margin">Download
										Progress</p>
									<div class="progress progress-micro no-margin">
										<div class="progress-bar progress-bar-success"
											style="width: 50%;"></div>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="padding-5">
									<p class="txt-color-darken font-sm no-margin">Server Load</p>
									<div class="progress progress-micro no-margin">
										<div class="progress-bar progress-bar-success"
											style="width: 20%;"></div>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="padding-5">
									<p class="txt-color-darken font-sm no-margin">
										Memory Load <span class="text-danger">*critical*</span>
									</p>
									<div class="progress progress-micro no-margin">
										<div class="progress-bar progress-bar-danger"
											style="width: 70%;"></div>
									</div>
								</div>
							</li>
							<li class="divider"></li>
							<li>
								<div class="padding-5">
									<button class="btn btn-block btn-default">refresh</button>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END PAGE FOOTER -->

	<!-- SHORTCUT AREA : With large tiles (activated via clicking user name tag)
		Note: These tiles are completely responsive,
		you can add as many as you like
		-->
	<div id="shortcut">
		<ul>
			<li><a href="inbox.html"
				class="jarvismetro-tile big-cubes bg-color-blue"> <span
					class="iconbox"> <i class="fa fa-envelope fa-4x"></i> <span>Mail
							<span class="label pull-right bg-color-darken">14</span>
					</span>
				</span>
			</a></li>
			<li><a href="calendar.html"
				class="jarvismetro-tile big-cubes bg-color-orangeDark"> <span
					class="iconbox"> <i class="fa fa-calendar fa-4x"></i> <span>Calendar</span>
				</span>
			</a></li>
			<li><a href="gmap-xml.html"
				class="jarvismetro-tile big-cubes bg-color-purple"> <span
					class="iconbox"> <i class="fa fa-map-marker fa-4x"></i> <span>Maps</span>
				</span>
			</a></li>
			<li><a href="invoice.html"
				class="jarvismetro-tile big-cubes bg-color-blueDark"> <span
					class="iconbox"> <i class="fa fa-book fa-4x"></i> <span>Invoice
							<span class="label pull-right bg-color-darken">99</span>
					</span>
				</span>
			</a></li>
			<li><a href="gallery.html"
				class="jarvismetro-tile big-cubes bg-color-greenLight"> <span
					class="iconbox"> <i class="fa fa-picture-o fa-4x"></i> <span>Gallery
					</span>
				</span>
			</a></li>
			<li><a href="profile.html"
				class="jarvismetro-tile big-cubes selected bg-color-pinkDark"> <span
					class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>My
							Profile </span>
				</span>
			</a></li>
		</ul>
	</div>
	<!-- END SHORTCUT AREA -->

	<!--================================================== -->

	<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
	<script data-pace-options='{ "restartOnRequestAfter": true }'
		src="js/plugin/pace/pace.min.js"></script>

	<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script>
		if (!window.jQuery) {
			document
					.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>');
		}
	</script>

	<script
		src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
	<script>
		if (!window.jQuery.ui) {
			document
					.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
		}
	</script>

	<!-- IMPORTANT: APP CONFIG -->
	<script src="<c:url value='/resources/js/app.config.js' />"></script>
	<!-- <script src="js/app.config.js"></script> -->

	<!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
	<script
		src="<c:url value='/resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js' />"></script>
	<!-- <script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script>  -->

	<!-- BOOTSTRAP JS -->
	<script
		src="<c:url value='/resources/js/bootstrap/bootstrap.min.js' />"></script>
	<!-- <script src="js/bootstrap/bootstrap.min.js"></script> -->

	<!-- CUSTOM NOTIFICATION -->
	<script
		src="<c:url value='/resources/js/notification/SmartNotification.min.js' />"></script>
	<!-- <script src="js/notification/SmartNotification.min.js"></script> -->

	<!-- JARVIS WIDGETS -->
	<script
		src="<c:url value='/resources/js/smartwidgets/jarvis.widget.min.js' />"></script>
	<!-- <script src="js/smartwidgets/jarvis.widget.min.js"></script> -->

	<!-- EASY PIE CHARTS -->
	<script
		src="<c:url value='/resources/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js' />"></script>
	<!-- <script src="js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script> -->

	<!-- SPARKLINES -->
	<script
		src="<c:url value='/resources/js/plugin/sparkline/jquery.sparkline.min.js' />"></script>
	<!-- <script src="js/plugin/sparkline/jquery.sparkline.min.js"></script> -->

	<!-- JQUERY VALIDATE -->
	<script
		src="<c:url value='/resources/js/plugin/jquery-validate/jquery.validate.min.js' />"></script>
	<!-- <script src="js/plugin/jquery-validate/jquery.validate.min.js"></script> -->

	<!-- JQUERY MASKED INPUT -->
	<script
		src="<c:url value='/resources/js/plugin/masked-input/jquery.maskedinput.min.js' />"></script>
	<!-- <script src="js/plugin/masked-input/jquery.maskedinput.min.js"></script> -->

	<!-- JQUERY SELECT2 INPUT -->
	<script
		src="<c:url value='/resources/js/plugin/select2/select2.min.js' />"></script>
	<!-- <script src="js/plugin/select2/select2.min.js"></script> -->

	<!-- JQUERY UI + Bootstrap Slider -->
	<script
		src="<c:url value='/resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js' />"></script>
	<!-- <script src="js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script> -->

	<!-- browser msie issue fix -->
	<script
		src="<c:url value='/resources/js/plugin/msie-fix/jquery.mb.browser.min.js' />"></script>
	<!-- <script src="js/plugin/msie-fix/jquery.mb.browser.min.js"></script> -->

	<!-- FastClick: For mobile devices -->
	<script
		src="<c:url value='/resources/js/plugin/fastclick/fastclick.min.js' />"></script>
	<!-- <script src="js/plugin/fastclick/fastclick.min.js"></script> -->

	<!--[if IE 8]>

		<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>

		<![endif]-->

	<!-- Demo purpose only -->
	<!-- <script src="js/demo.min.js"></script> -->
	<script src="<c:url value='/resources/js/demo.min.js' />"></script>

	<!-- MAIN APP JS FILE -->
	<script src="<c:url value='/resources/js/app.min.js' />"></script>
	<!-- <script src="js/app.min.js"></script> -->

	<!-- ENHANCEMENT PLUGINS : NOT A REQUIREMENT -->
	<!-- Voice command : plugin -->
	<script
		src="<c:url value='/resources/js/speech/voicecommand.min.js' />"></script>
	<!-- <script src="js/speech/voicecommand.min.js"></script> -->

	<!-- SmartChat UI : plugin -->
	<script
		src="<c:url value='/resources/js/smart-chat-ui/smart.chat.ui.min.js' />"></script>
	<!-- <script src="js/smart-chat-ui/smart.chat.ui.min.js"></script> -->
	<script
		src="<c:url value='/resources/js/smart-chat-ui/smart.chat.manager.min.js' />"></script>
	<!-- <script src="js/smart-chat-ui/smart.chat.manager.min.js"></script> -->

	<!-- PAGE RELATED PLUGIN(S) 
		<script src="..."></script>-->

	<script type="text/javascript">
		$(document).ready(function() {

			/* DO NOT REMOVE : GLOBAL FUNCTIONS!
			 *
			 * pageSetUp(); WILL CALL THE FOLLOWING FUNCTIONS
			 *
			 * // activate tooltips
			 * $("[rel=tooltip]").tooltip();
			 *
			 * // activate popovers
			 * $("[rel=popover]").popover();
			 *
			 * // activate popovers with hover states
			 * $("[rel=popover-hover]").popover({ trigger: "hover" });
			 *
			 * // activate inline charts
			 * runAllCharts();
			 *
			 * // setup widgets
			 * setup_widgets_desktop();
			 *
			 * // run form elements
			 * runAllForms();
			 *
			 ********************************
			 *
			 * pageSetUp() is needed whenever you load a page.
			 * It initializes and checks for all basic elements of the page
			 * and makes rendering easier.
			 *
			 */

			pageSetUp();

			/*
			 * ALL PAGE RELATED SCRIPTS CAN GO BELOW HERE
			 * eg alert("my home function");
			 * 
			 * var pagefunction = function() {
			 *   ...
			 * }
			 * loadScript("js/plugin/_PLUGIN_NAME_.js", pagefunction);
			 * 
			 * TO LOAD A SCRIPT:
			 * var pagefunction = function (){ 
			 *  loadScript(".../plugin.js", run_after_loaded);	
			 * }
			 * 
			 * OR
			 * 
			 * loadScript(".../plugin.js", run_after_loaded);
			 */

		})
	</script>

	<!-- Your GOOGLE ANALYTICS CODE Below -->
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-XXXXXXXX-X' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>

</body>

</html>