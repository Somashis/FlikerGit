<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*,com.fliker.Repository.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<title> Search Unit </title>
		<meta name="description" content="">
		<meta name="author" content="">
			
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		<!-- #CSS Links -->
		<!-- Basic Styles -->
		<link href='<c:url value="/resources/css/bootstrap.min.css" />' rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/bootstrap.min.css"> -->
		<link href='<c:url value="/resources/css/font-awesome.min.css" />' rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/font-awesome.min.css"> -->

		<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
		<link href='<c:url value="/resources/css/smartadmin-production-plugins.min.css" />' rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-production-plugins.min.css"> -->
		<link href='<c:url value="/resources/css/smartadmin-production.min.css" />' rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-production.min.css"> -->
		<link href='<c:url value="/resources/css/smartadmin-skins.min.css" />' rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-skins.min.css"> -->

		<!-- SmartAdmin RTL Support -->
		<link href='<c:url value="/resources/css/smartadmin-rtl.min.css" />' rel="stylesheet">
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/smartadmin-rtl.min.css"> --> 

		<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
		<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

		<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
		<!-- <link rel="stylesheet" type="text/css" media="screen" href="css/demo.min.css"> -->
		<link href='<c:url value="/resources/css/demo.min.css" />' rel="stylesheet">

		<!-- #FAVICONS -->
		<link href='<c:url value="/resources/img/favicon/favicon.ico" />' rel="shortcut icon" type="image/x-icon">
		<!-- <link rel="shortcut icon" href="img/favicon/favicon.ico" type="image/x-icon"> -->
		<link href='<c:url value="/resources/img/favicon/favicon.ico" />' rel="icon" type="image/x-icon">
		<!-- <link rel="icon" href="img/favicon/favicon.ico" type="image/x-icon"> -->

		<!-- #GOOGLE FONT -->
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

		<!-- #APP SCREEN / ICONS -->
		<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
			 <link href='<c:url value="/resources/img/splash/sptouch-icon-iphone.png" />' rel="apple-touch-icon">
		<!-- <link rel="apple-touch-icon" href="img/splash/sptouch-icon-iphone.png"> -->
		<link href='<c:url value="/resources/img/splash/touch-icon-ipad.png" />' rel="apple-touch-icon" sizes="76x76">
		<!-- <link rel="apple-touch-icon" sizes="76x76" href="img/splash/touch-icon-ipad.png"> -->
		<link href='<c:url value="/resources/img/splash/touch-icon-iphone-retina.png" />' rel="apple-touch-icon" sizes="120x120">
		<!-- <link rel="apple-touch-icon" sizes="120x120" href="img/splash/touch-icon-iphone-retina.png"> -->
		<link href='<c:url value="/resources/img/splash/touch-icon-ipad-retina.png" />' rel="apple-touch-icon" sizes="152x152">
		<!-- <link rel="apple-touch-icon" sizes="152x152" href="img/splash/touch-icon-ipad-retina.png"> -->
		
		<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		
		<!-- Startup image for web apps -->
		<link href='<c:url value="/resources/img/splash/ipad-landscape.png" />' rel="apple-touch-startup-image" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
		<!-- <link rel="apple-touch-startup-image" href="img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)"> -->
		<link href='<c:url value="/resources/img/splash/ipad-portrait.png" />' rel="apple-touch-startup-image" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
		<!-- <link rel="apple-touch-startup-image" href="img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)"> -->
		<link href='<c:url value="/resources/img/splash/iphone.png" />' rel="apple-touch-startup-image" media="screen and (max-device-width: 320px)">
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
				<span id="logo"> <img src="<c:url value='/resources/img/logo.png' />" alt="Fliker"> </span>
				<!-- END LOGO PLACEHOLDER -->

				<!-- Note: The activity badge color changes when clicked and resets the number to 0
				Suggestion: You may want to set a flag when this happens to tick off all checked messages / notifications -->
				<span id="activity" class="activity-dropdown"> <i class="fa fa-user"></i> <b class="badge"> 21 </b> </span>

				<!-- AJAX-DROPDOWN : control this dropdown height, look and feel from the LESS variable file -->
				<div class="ajax-dropdown">

				<!-- the ID links are fetched via AJAX to the ajax container "ajax-notifications" -->
				<div class="btn-group btn-group-justified" data-toggle="buttons">
					 <label class="btn btn-default"> <input type="radio"
						name="activity" id="notifications?"> Notification 
					</label> 
				</div>

				<!-- notification content -->
				<div class="ajax-notifications custom-scroll">

					<div class="alert alert-transparent">
						<h4>Click a button to show messages here</h4>
						This blank page message helps protect your privacy, or you can
						show the first message here automatically.
					</div>

					<i class="fa fa-lock fa-4x fa-border"></i>

				</div>
				<!-- end notification content -->

				<!-- footer: refresh area -->
				<%-- <span> Last updated on: 12/12/2013 9:43AM
					<button type="button"
						data-loading-text="<i class='fa fa-refresh fa-spin'></i> Loading..."
						class="btn btn-xs btn-default pull-right">
						<i class="fa fa-refresh"></i>
					</button>
				</span> --%>
				<!-- end footer -->

			</div>
				<!-- END AJAX-DROPDOWN -->
			</div>

			<!-- projects dropdown -->
	<div class="project-context hidden-xs">

			<span class="label">Say:</span> <span
				class="project-selector dropdown-toggle" data-toggle="dropdown">Anything<i class="fa fa-angle-down"></i>
			</span>

			<!-- Suggestion: populate this list with fetch and push technique -->
			<ul class="dropdown-menu" style="border: 1px solid black">
				<h5>Daily Note</h5>
				<li><textarea id="notemessage" class="form-control"
						name="notemessage" rows="3" style="width: 400px"></textarea></li>

				<li class="divider"></li>
				<li><a href="#" id="notedown"><i class="fa fa-edit"></i>
						Note Down</a></li>
			</ul>
			<!-- end dropdown-menu-->

		</div>
	<!-- end projects dropdown -->

			<!-- pulled right: nav area -->
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
						<!-- <li><a href="profile?"
							class="padding-10 padding-top-0 padding-bottom-0"> <i
								class="fa fa-user"></i> <u>P</u>rofile
						</a></li> -->
						<li class="divider"></li>
						<li><a href="javascript:void(0);"
							class="padding-10 padding-top-0 padding-bottom-0"
							data-action="toggleShortcut"><i class="fa fa-arrow-down"></i>
								<u>S</u>hortcut</a></li>
						<li class="divider"></li>
						<li><a href="logout?"
							class="padding-10 padding-top-5 padding-bottom-5"
							data-action="userLogout"><i class="fa fa-sign-out fa-lg"></i>
								<strong><u>L</u>ogout</strong></a></li>
					</ul></li>
		</ul>

		<!-- logout button -->
		<div id="logout" class="btn-header transparent pull-right">
			<span> <a href="logout?" title="Sign Out"
				data-action="userLogout"
				data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i
					class="fa fa-sign-out"></i></a>
			</span>
		</div>
		<!-- end logout button -->

		<!-- search mobile button (this is hidden till mobile view port) -->
			<!-- <div id="search-mobile" class="btn-header transparent pull-right">
				<span> <a href="searchresults?" title="Search"><i
						class="fa fa-search"></i></a>
				</span>
			</div>
			end search mobile button

			input: search field
			<form action="searchresults?" class="header-search pull-right">
				<input id="search-fld" type="text" name="param"
					placeholder="Find reports and more">
				<button type="submit">
					<i class="fa fa-search"></i>
				</button>
				<a href="javascript:void(0);" id="cancel-search-js"
					title="Cancel Search"><i class="fa fa-times"></i></a>
			</form>
			end input: search field -->

		<!-- fullscreen button -->
		<div id="fullscreen" class="btn-header transparent pull-right">
			<span> <a href="javascript:void(0);"
				data-action="launchFullscreen" title="Full Screen"><i
					class="fa fa-arrows-alt"></i></a>
			</span>
		</div>
		<div id="article" class="btn-header transparent pull-right">
				<span> <a href="createpost?" title="Article">Article</a>
				</span>
			</div>
			
		<!-- end fullscreen button -->

		<!-- #Voice Command: Start Speech -->
		<!-- <div id="speech-btn"
			class="btn-header transparent pull-right hidden-sm hidden-xs">
			<div>
				<a href="javascript:void(0)" title="Voice Command"
					data-action="voiceCommand"><i class="fa fa-microphone"></i></a>
				<div class="popover bottom">
					<div class="arrow"></div>
					<div class="popover-content">
						<h4 class="vc-title">
							Voice command activated <br>
							<small>Please speak clearly into the mic</small>
						</h4>
						<h4 class="vc-title-error text-center">
							<i class="fa fa-microphone-slash"></i> Voice command failed <br>
							<small class="txt-color-red">Must <strong>"Allow"</strong>
								Microphone
							</small> <br>
							<small class="txt-color-red">Must have <strong>Internet
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
		</div> -->
		<!-- end voice command -->

		

	</div>
			<!-- end pulled right: nav area -->

		</header>
		<!-- END HEADER -->

		<!-- #NAVIGATION -->
		<!-- Left panel : Navigation area -->
		<!-- Note: This width of the aside area can be adjusted through LESS variables -->
		
		<%
		
			String fullname = (String)request.getAttribute("FullName");
			String gender = (String)request.getAttribute("Gender");
			String userids = (String)request.getAttribute("userid");
			String imagid = (String)request.getAttribute("ProfileImage");
			String logo = "";
			
			
		
		%>
		
		<aside id="left-panel"> <!-- User info -->
	<div class="login-info">
		<span> <!-- User image size is adjusted inside CSS, it should stay as it -->

			<a href="#" id="show-shortcut"
			data-action="toggleShortcut"> <img src="img/avatars/sunny.png"
				alt="me" class="online" /> <span><%=fullname%></span> <i
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
				<!-- <li><a href="search?"><i
						class="fa fa-lg fa-fw fa-search-plus"></i> <span
						class="menu-item-parent">Search</span> </a></li> -->
				<!-- <li><a href="dashboardanalysis?"><i
				class="fa fa-lg fa-fw fa-briefcase"></i> <span
				class="menu-item-parent">Dashboard</span> </a></li> -->
				<li><a href="dashboardsocial?"><i
						class="fa fa-lg fa-fw fa-retweet"></i> <span
						class="menu-item-parent">Wall</span></a></li>

				<!-- <li class="active"><a href="profile?"><i
						class="fa fa-lg fa-fw fa-info"></i> <span class="menu-item-parent">Profile</span>
						<span class="badge pull-right inbox-badge margin-right-13">14</span></a></li> -->
				<!-- <li><a href="timeline?"><i class="fa fa-lg fa-fw fa-road"></i>
						<span class="menu-item-parent">Timeline</span></a></li> -->
				<!-- <li><a href="createpost?" title="NewPost"><i
						class="fa fa-lg fa-fw fa-inbox"></i><span class="menu-item-parent">Post
							Your Activity</span></a></li> -->
				<!-- <li><a href="classroom?" title="NewPost"><i
						class="fa fa-lg fa-fw fa-inbox"></i><span class="menu-item-parent">ClassRoom</span></a>
				</li> -->
				<li><a href="#" title="Dashboard"><i
						class="fa fa-lg fa-fw fa-book"></i> <span class="menu-item-parent">Education</span></a>
					<ul>
						<li class=""><a href="standardguidance?" title="ClassRoom"><i
						class="fa fa-lg fa-fw fa-inbox"></i><span class="menu-item-parent">Guidance</span></a>
						</li>
						<li class=""><a href="standardcourse?" title="ClassRoom"><i
						class="fa fa-lg fa-fw fa-inbox"></i><span class="menu-item-parent">Courses</span></a>
						</li>
					</ul>
				</li>
				<li><a href="#" title="Dashboard"><i
					class="fa fa-lg fa-fw fa-briefcase"></i> <span
					class="menu-item-parent">OSM</span></a>
				<ul>
					<li class=""><a href="ideatoimplement?" title="NewPost"><i
							class="fa fa-tags"></i><span class="menu-item-parent">Idea-Implementation</span></a>
					</li>
					<li class=""><a href="osmprojectinfo?" title="NewJob"><i
							class="fa fa-suitcase"></i><span class="menu-item-parent">Project List</span></a>
					</li>
					<li class=""><a href="osmprojectsubscription?" title="NewJob"><i
							class="fa fa-suitcase"></i><span class="menu-item-parent">Project Resource</span></a>
					</li>
					
					
				</ul></li>

				<li class="chat-users top-menu-invisible"><a href="#"><i
						class="fa fa-lg fa-fw fa-comment-o"><em
							class="bg-color-pink flash animated">!</em></i> <span
						class="menu-item-parent">Online Chat</span></a>
					<ul>
						<li>
							<!-- DISPLAY USERS -->
							<div class="display-users">

								<input class="form-control chat-user-filter"
									placeholder="Filter" type="text"> <a href="#"
									class="usr" data-chat-id="cha1" data-chat-fname="Sadi"
									data-chat-lname="Orlaf" data-chat-status="busy"
									data-chat-alertmsg="Sadi Orlaf is in a meeting. Please do not disturb!"
									data-chat-alertshow="true" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/5.png' alt='Sadi Orlaf'>
												<div class='usr-card-content'>
													<h3>Sadi Orlaf</h3>
													<p>Marketing Executive</p>
												</div>
											</div>
										">
									<i></i>Sadi Orlaf
								</a> <a href="#" class="usr" data-chat-id="cha2"
									data-chat-fname="Jessica" data-chat-lname="Dolof"
									data-chat-status="online" data-chat-alertmsg=""
									data-chat-alertshow="false" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/1.png' alt='Jessica Dolof'>
												<div class='usr-card-content'>
													<h3>Jessica Dolof</h3>
													<p>Sales Administrator</p>
												</div>
											</div>
										">
									<i></i>Jessica Dolof
								</a> <a href="#" class="usr" data-chat-id="cha3"
									data-chat-fname="Zekarburg" data-chat-lname="Almandalie"
									data-chat-status="online" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/3.png' alt='Zekarburg Almandalie'>
												<div class='usr-card-content'>
													<h3>Zekarburg Almandalie</h3>
													<p>Sales Admin</p>
												</div>
											</div>
										">
									<i></i>Zekarburg Almandalie
								</a> <a href="#" class="usr" data-chat-id="cha4"
									data-chat-fname="Barley" data-chat-lname="Krazurkth"
									data-chat-status="away" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/4.png' alt='Barley Krazurkth'>
												<div class='usr-card-content'>
													<h3>Barley Krazurkth</h3>
													<p>Sales Director</p>
												</div>
											</div>
										">
									<i></i>Barley Krazurkth
								</a> <a href="#" class="usr offline" data-chat-id="cha5"
									data-chat-fname="Farhana" data-chat-lname="Amrin"
									data-chat-status="incognito" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/female.png' alt='Farhana Amrin'>
												<div class='usr-card-content'>
													<h3>Farhana Amrin</h3>
													<p>Support Admin <small><i class='fa fa-music'></i> Playing Beethoven Classics</small></p>
												</div>
											</div>
										">
									<i></i>Farhana Amrin (offline)
								</a> <a href="#" class="usr offline" data-chat-id="cha6"
									data-chat-fname="Lezley" data-chat-lname="Jacob"
									data-chat-status="incognito" data-rel="popover-hover"
									data-placement="right" data-html="true"
									data-content="
											<div class='usr-card'>
												<img src='img/avatars/male.png' alt='Lezley Jacob'>
												<div class='usr-card-content'>
													<h3>Lezley Jacob</h3>
													<p>Sales Director</p>
												</div>
											</div>
										">
									<i></i>Lezley Jacob (offline)
								</a> <a href="ajax/chat.html"
									class="btn btn-xs btn-default btn-block sa-chat-learnmore-btn">About
									the API</a>

							</div> <!-- END DISPLAY USERS -->
						</li>
					</ul></li>
			</ul>
	</nav> <span class="minifyme" data-action="minifyMenu"> <i
		class="fa fa-arrow-circle-left hit"></i>
	</span> </aside>
		<!-- END NAVIGATION -->

		<!-- MAIN PANEL -->
		<div id="main" role="main">

			<!-- RIBBON -->
			<div id="ribbon">

				<span class="ribbon-button-alignment"> 
					<span id="refresh" class="btn btn-ribbon" data-action="resetWidgets" data-title="refresh"  rel="tooltip" data-placement="bottom" data-original-title="<i class='text-warning fa fa-warning'></i> Warning! This will reset all your widget settings." data-html="true">
						<i class="fa fa-refresh"></i>
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
							<li class="active">
								<a href="#s1" data-toggle="tab">Search</a>
							</li>
							<li>
								<a href="#s2" data-toggle="tab">Content Search</a>
							</li>
							<li>
								<a href="#s3" data-toggle="tab">Search History</a>
							</li>
							<li class="pull-right hidden-mobile">
								<a href="javascript:void(0);"> <span class="note">About 24,431 results (0.15 seconds) </span> </a>
							</li>
						</ul>
						<div id="myTabContent1" class="tab-content bg-color-white padding-10">
							<div class="tab-pane fade in active" id="s1">
							
							<!-- <div class="tab-pane fade in active" id="s1"> -->
								<!-- <form action="#" id="search-form"> -->
									<h1> Search <span class="semi-bold">Everything</span></h1>
									<br>
									<div class="input-group input-group-lg hidden-mobile">
										<input class="form-control input-lg" type="text" placeholder="Search again..." id="searchparam">
										<div class="input-group-btn">
											<button type="button" class="btn btn-default" id="searchresult">
												&nbsp;&nbsp;&nbsp;<i class="fa fa-fw fa-search fa-lg"></i>&nbsp;&nbsp;&nbsp;
											</button>
										</div>
									</div>
								<!-- </form> -->
								<h1 class="font-md"> Search Results for <small class="text-danger" id="searchcount"> &nbsp;&nbsp;</small></h1>
								<div class="row" id="searchcontent">
								
								</div>
								<div class="text-center">
									<hr>
									<input type="hidden" value="" id="currentpageno">
									<ul class="pagination no-margin" id="searchpagenumbers">
										
									</ul>
									<input type="hidden" value="" id="lastpageno">
									<br>
									<br>
									<br>
								</div>
				
							</div>
							<div class="tab-pane fade" id="s2">
								<h1> Search <span class="semi-bold">Users/Groups/Courses/Job Interviews/Organization/Institutions/Etc..</span></h1>
								<br>
								<div class="input-group input-group-lg">
									<div class="input-group-btn">
										<button id="searchparamset" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
											User <span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
											<li class="active">
												<a href="javascript:void(0)"></i> Users</a>
											</li>
											<li>
												<a href="javascript:void(0)">Groups</a>
											</li>
											<li>
												<a href="javascript:void(0)">Organization</a>
											</li>
											<li>
												<a href="javascript:void(0)">Institutes</a>
											</li>
											<li>
												<a href="javascript:void(0)">Courses</a>
											</li>
											<li>
												<a href="javascript:void(0)">Job Interviews</a>
											</li>
											<li>
												<a href="javascript:void(0)">Specializations</a>
											</li>
										</ul>
									</div>
									<input class="form-control input-lg" type="text" placeholder="Mention the type(eg: for Groups --> #Group groupname)..." id="searchcontentspecific">
									<div class="input-group-btn">
										<button type="submit" class="btn btn-default">
											<i class="fa fa-fw fa-search fa-lg"></i>
										</button>
									</div>
								</div>
								<h1 class="font-md"> Search Results for <span class="semi-bold">Users</span><small class="text-danger"> &nbsp;&nbsp;(181 results)</small></h1>
								<br>
								<div class="row" id="searchcontentspecificresult">
								
								</div>
								
								<div class="text-center">
									<hr>
									<ul class="pagination no-margin">
										<li class="prev disabled">
											<a href="javascript:void(0);">Previous</a>
										</li>
										<li class="active">
											<a href="javascript:void(0);">1</a>
										</li>
										<li>
											<a href="javascript:void(0);">2</a>
										</li>
										<li>
											<a href="javascript:void(0);">3</a>
										</li>
										<li>
											<a href="javascript:void(0);">4</a>
										</li>
										<li>
											<a href="javascript:void(0);">5</a>
										</li>
										<li class="next">
											<a href="javascript:void(0);">Next</a>
										</li>
									</ul>
									<br>
									<br>
									<br>
								</div>
							</div>
							<div class="tab-pane fade" id="s3">
								<h1> Search <span class="semi-bold">history</span></h1>
								<p class="alert alert-info">
									Your search history is turned off.
				
								</p>
				
								<span class="onoffswitch-title">Auto save Search History</span>
								<span class="onoffswitch">
									<input type="checkbox" name="save_history" class="onoffswitch-checkbox" id="save_history" checked="checked">
									<label class="onoffswitch-label" for="save_history"> <span class="onoffswitch-inner" data-swchon-text="ON" data-swchoff-text="OFF"></span> <span class="onoffswitch-switch"></span> </label> </span>
				
							</div>
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
					<span class="txt-color-white">SmartAdmin </span>
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
				<li>
					<a href="inbox.html" class="jarvismetro-tile big-cubes bg-color-blue"> <span class="iconbox"> <i class="fa fa-envelope fa-4x"></i> <span>Mail <span class="label pull-right bg-color-darken">14</span></span> </span> </a>
				</li>
				<li>
					<a href="calendar.html" class="jarvismetro-tile big-cubes bg-color-orangeDark"> <span class="iconbox"> <i class="fa fa-calendar fa-4x"></i> <span>Calendar</span> </span> </a>
				</li>
				<li>
					<a href="gmap-xml.html" class="jarvismetro-tile big-cubes bg-color-purple"> <span class="iconbox"> <i class="fa fa-map-marker fa-4x"></i> <span>Maps</span> </span> </a>
				</li>
				<li>
					<a href="invoice.html" class="jarvismetro-tile big-cubes bg-color-blueDark"> <span class="iconbox"> <i class="fa fa-book fa-4x"></i> <span>Invoice <span class="label pull-right bg-color-darken">99</span></span> </span> </a>
				</li>
				<li>
					<a href="gallery.html" class="jarvismetro-tile big-cubes bg-color-greenLight"> <span class="iconbox"> <i class="fa fa-picture-o fa-4x"></i> <span>Gallery </span> </span> </a>
				</li>
				<li>
					<a href="profile.html" class="jarvismetro-tile big-cubes selected bg-color-pinkDark"> <span class="iconbox"> <i class="fa fa-user fa-4x"></i> <span>My Profile </span> </span> </a>
				</li>
			</ul>
		</div>
		<!-- END SHORTCUT AREA -->

		<!--================================================== -->

		<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
		<script data-pace-options='{ "restartOnRequestAfter": true }' src="js/plugin/pace/pace.min.js"></script>

		<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
		<script>
			if (!window.jQuery) {
				document.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>');
			}
		</script>

		<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
		<script>
			if (!window.jQuery.ui) {
				document.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
			}
		</script>

		<!-- IMPORTANT: APP CONFIG -->
		<script src="<c:url value='/resources/js/app.config.js' />"></script>
		<!-- <script src="js/app.config.js"></script> -->

		<!-- JS TOUCH : include this plugin for mobile drag / drop touch events-->
		<script src="<c:url value='/resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js' />"></script>
		<!-- <script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script>  -->

		<!-- BOOTSTRAP JS -->
		<script src="<c:url value='/resources/js/bootstrap/bootstrap.min.js' />"></script>
		<!-- <script src="js/bootstrap/bootstrap.min.js"></script> -->

		<!-- CUSTOM NOTIFICATION -->
		<script src="<c:url value='/resources/js/notification/SmartNotification.min.js' />"></script>
		<!-- <script src="js/notification/SmartNotification.min.js"></script> -->

		<!-- JARVIS WIDGETS -->
		<script src="<c:url value='/resources/js/smartwidgets/jarvis.widget.min.js' />"></script>
		<!-- <script src="js/smartwidgets/jarvis.widget.min.js"></script> -->

		<!-- EASY PIE CHARTS -->
		<script src="<c:url value='/resources/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js' />"></script>
		<!-- <script src="js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script> -->

		<!-- SPARKLINES -->
		<script src="<c:url value='/resources/js/plugin/sparkline/jquery.sparkline.min.js' />"></script>
		<!-- <script src="js/plugin/sparkline/jquery.sparkline.min.js"></script> -->

		<!-- JQUERY VALIDATE -->
		<script src="<c:url value='/resources/js/plugin/jquery-validate/jquery.validate.min.js' />"></script>
		<!-- <script src="js/plugin/jquery-validate/jquery.validate.min.js"></script> -->

		<!-- JQUERY MASKED INPUT -->
		<script src="<c:url value='/resources/js/plugin/masked-input/jquery.maskedinput.min.js' />"></script>
		<!-- <script src="js/plugin/masked-input/jquery.maskedinput.min.js"></script> -->

		<!-- JQUERY SELECT2 INPUT -->
		<script src="<c:url value='/resources/js/plugin/select2/select2.min.js' />"></script>
		<!-- <script src="js/plugin/select2/select2.min.js"></script> -->

		<!-- JQUERY UI + Bootstrap Slider -->
		<script src="<c:url value='/resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js' />"></script>
		<!-- <script src="js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script> -->

		<!-- browser msie issue fix -->
		<script src="<c:url value='/resources/js/plugin/msie-fix/jquery.mb.browser.min.js' />"></script>
		<!-- <script src="js/plugin/msie-fix/jquery.mb.browser.min.js"></script> -->

		<!-- FastClick: For mobile devices -->
		<script src="<c:url value='/resources/js/plugin/fastclick/fastclick.min.js' />"></script>
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
		<script src="<c:url value='/resources/js/speech/voicecommand.min.js' />"></script>
		<!-- <script src="js/speech/voicecommand.min.js"></script> -->

		<!-- SmartChat UI : plugin -->
		<script src="<c:url value='/resources/js/smart-chat-ui/smart.chat.ui.min.js' />"></script>
		<!-- <script src="js/smart-chat-ui/smart.chat.ui.min.js"></script> -->
		<script src="<c:url value='/resources/js/smart-chat-ui/smart.chat.manager.min.js' />"></script>
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
				 
				 
				 $("#searchresult").click(function(){
					    //alert("form has been submitted.");
					    var searchparam = $('#searchparam').val();
					    
					    $.getJSON('searchContentCount?searchparam='+searchparam, function(dataset) {
					    	
					    	
					    	
					    	console.log(dataset);
					    	
					    	var nopages = Math.floor(dataset/10);
					    	var noofsetremain = dataset%10;
					    	
					    	if(noofsetremain === 0){
					    		nopages = nopages;
					    	}else{
					    		nopages = nopages + 1;
					    	}
					    	console.log(nopages);
					    	
					    	for(var i=0;i<nopages;i++){
					    		var pagecount = "";
					    		if(i===0){
					    			pagecount = '<li class="prev disabled"><a href="getPreviousCallSearch()">Previous</a></li>'+
					    			'<li class="active"><a href="#" onclick="getPageCallSearch('+1+')" id='+1+'>1</a></li>';
					    		}else if(i === (nopages-1)){ 
					    			var nextpage = '<li><a href="#" onclick="getPageCallSearch('+(i+1)+')" id='+(i+1)+'>'+(i+1)+'</a></li>'+
					    			'<li class="next"><a href="#" onclick="getNextCallSearch()">Next</a></li>';
					    			pagecount = pagecount +nextpage;
					    			
					    		}else{
					    			var nextpage = '<li><a href="#" onclick="getPageCallSearch()" id='+(i+1)+'>'+(i+1)+'</a></li>';
					    			pagecount = pagecount +nextpage;
					    		}
					    		//pagecount = pagecount + '<li class="next"><a href="#" onclick="getNextCallSearch()">Next</a></li>'
					    		
					    		$('#searchpagenumbers').append(pagecount);
					    	}
					    	
					    	$('#currentpageno').val(1);
					    	$('#lastpageno').val(nopages);
					    	
					    	/* <li class="active"><a href="javascript:void(0);">1</a>
							</li>
							<li>
								<a href="javascript:void(0);">2</a>
							</li>
							<li>
								<a href="javascript:void(0);">3</a>
							</li>
							<li class="next">
								<a href="javascript:void(0);">Next</a>
							</li> */
					    	
					    	
					    });
					    //var pageno = $('#')
					    alert(searchparam);
					    if(searchparam!=null && searchparam!=""){
					    	
						    $.getJSON('searchContentResult?searchparam='+searchparam+'&pageno='+'', function(dataset) {
		                		console.log(dataset);
		                		var searchcontent = "";
		                		for(var item in dataset){
		                			var contentdesc = (dataset[item].contentDescription).split(",");
		                			var guidancesubject = "";
		                			var profileimage = "";
		                			var currentstatus = "";
		                			var experience = "";
		                			var contact = "";
		                			var profileemail = "";
		                			var profilename = "";
		                			var contenttype = dataset[item].contentType;
		                			var guidanceid = dataset[item].searchid;
		                			
		                			
		                			for(var type in contentdesc){
		                				var contentstate = contentdesc[type].split("::");
		                				if(contentstate[0] == "Guidance Subject "){
		                					guidancesubject = contentstate[1];
		                				}else if(contentstate[0] == "Profile Image "){
		                					profileimage = contentstate[1];
		                				}else if(contentstate[0] == "Profile Name "){
		                					profilename = contentstate[1];
		                				}else if(contentstate[0] == "Profile Email "){
		                					profileemail = contentstate[1];
		                				}else if(contentstate[0] == "Profile CurrenStatus "){
		                					currentstatus = contentstate[1];
		                				}else if(contentstate[0] == "Profile Experience "){
		                					experience = contentstate[1];
		                				}else if(contentstate[0] == "Profile Contact "){
		                					contact = contentstate[1];
		                				}
		                				
			                		}
		                			
		                			var searchset = '<div class="search-results clearfix smart-form"><h4><i class="fa fa-plus-square txt-color-blue">'+
            						'</i>&nbsp;<a href="javascript:void(0);">Guidance on'+guidancesubject+' provided by '+profilename+'</a></h4>'+
            						'<div><br><div class="url text-success">'+profilename+'<i class="fa fa-caret-down"></i><h3 class="margin-top-0"><br>'+
            						'<small class="font-xs"><i>Currently working as '+currentstatus+' with experience of '+experience+'<i>'+
            						'Contact: '+contact+','+profileemail+'</i></i></small></h3></div><p><a href="guidanceInfoView?guidanceid='+guidanceid+'" class="btn btn-default btn-xs">Go to Guidance</a></p></div></div>';
		                			searchcontent = searchcontent + searchset;
		                		}
		                		$('#searchcontent').append(searchcontent)
		                	});
					    }else return false;
					    
					});
				 
				
				 
			})
		
		</script>

		<!-- Your GOOGLE ANALYTICS CODE Below -->
		<script type="text/javascript">
			var _gaq = _gaq || [];
				_gaq.push(['_setAccount', 'UA-XXXXXXXX-X']);
				_gaq.push(['_trackPageview']);
			
			(function() {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();

		</script>
		<script type="text/javascript">
			function getPreviousCallSearch(){
				var searchparam = $('#searchparam').val();
				
				var pageno = $('#currentpageno').val();
				alert(pageno);
				if(searchparam!=null && searchparam!="" && pageno !== 1){
					pageno = pageno-1;
				    $.getJSON('searchContentResult?searchparam='+searchparam+'&pageno='+(pageno-1), function(dataset) {
                		console.log(dataset);
                		var searchcontent = "";
                		for(var item in dataset){
                			var contentdesc = (dataset[item].contentDescription).split(",");
                			var guidancesubject = "";
                			var profileimage = "";
                			var currentstatus = "";
                			var experience = "";
                			var contact = "";
                			var profileemail = "";
                			var profilename = "";
                			var contenttype = dataset[item].contentType;
                			var guidanceid = dataset[item].searchid;
                			
                			
                			for(var type in contentdesc){
                				var contentstate = contentdesc[type].split("::");
                				if(contentstate[0] == "Guidance Subject "){
                					guidancesubject = contentstate[1];
                				}else if(contentstate[0] == "Profile Image "){
                					profileimage = contentstate[1];
                				}else if(contentstate[0] == "Profile Name "){
                					profilename = contentstate[1];
                				}else if(contentstate[0] == "Profile Email "){
                					profileemail = contentstate[1];
                				}else if(contentstate[0] == "Profile CurrenStatus "){
                					currentstatus = contentstate[1];
                				}else if(contentstate[0] == "Profile Experience "){
                					experience = contentstate[1];
                				}else if(contentstate[0] == "Profile Contact "){
                					contact = contentstate[1];
                				}
                				
	                		}
                			
                			var searchset = '<div class="search-results clearfix smart-form"><h4><i class="fa fa-plus-square txt-color-blue">'+
    						'</i>&nbsp;<a href="javascript:void(0);">Guidance on'+guidancesubject+' provided by '+profilename+'</a></h4>'+
    						'<div><br><div class="url text-success">'+profilename+'<i class="fa fa-caret-down"></i><h3 class="margin-top-0"><br>'+
    						'<small class="font-xs"><i>Currently working as '+currentstatus+' with experience of '+experience+'<i>'+
    						'Contact: '+contact+','+profileemail+'</i></i></small></h3></div><p><a href="guidanceInfoView?guidanceid='+guidanceid+'" class="btn btn-default btn-xs">Go to Guidance</a></p></div></div>';
                			searchcontent = searchcontent + searchset;
                		}
                		$('#searchcontent').append(searchcontent);
                		$('#currentpageno').val(pageno-1);
                	});
			    }else return false;
				
			}
			
			function getNextCallSearch(){
				
				var searchparam = $('#searchparam').val();
				var currpageno = $('#currentpageno').val();
				var pageno = $('#lastpageno').val();
				var pagemath = parseInt(currpageno,10) + 1;
				alert(pagemath);
				if(searchparam!=null && searchparam!="" && pageno !== currpageno){
					pageno = pageno-1;
				    $.getJSON('searchContentResult?searchparam='+searchparam+'&pageno='+pagemath, function(dataset) {
				    	$('#searchcontent').html('');
                		console.log(dataset);
                		var searchcontent = "";
                		for(var item in dataset){
                			var contentdesc = (dataset[item].contentDescription).split(",");
                			var guidancesubject = "";
                			var profileimage = "";
                			var currentstatus = "";
                			var experience = "";
                			var contact = "";
                			var profileemail = "";
                			var profilename = "";
                			var contenttype = dataset[item].contentType;
                			var guidanceid = dataset[item].searchid;
                			
                			
                			for(var type in contentdesc){
                				var contentstate = contentdesc[type].split("::");
                				if(contentstate[0] == "Guidance Subject "){
                					guidancesubject = contentstate[1];
                				}else if(contentstate[0] == "Profile Image "){
                					profileimage = contentstate[1];
                				}else if(contentstate[0] == "Profile Name "){
                					profilename = contentstate[1];
                				}else if(contentstate[0] == "Profile Email "){
                					profileemail = contentstate[1];
                				}else if(contentstate[0] == "Profile CurrenStatus "){
                					currentstatus = contentstate[1];
                				}else if(contentstate[0] == "Profile Experience "){
                					experience = contentstate[1];
                				}else if(contentstate[0] == "Profile Contact "){
                					contact = contentstate[1];
                				}
                				
	                		}
                			
                			var searchset = '<div class="search-results clearfix smart-form"><h4><i class="fa fa-plus-square txt-color-blue">'+
    						'</i>&nbsp;<a href="javascript:void(0);">Guidance on'+guidancesubject+' provided by '+profilename+'</a></h4>'+
    						'<div><br><div class="url text-success">'+profilename+'<i class="fa fa-caret-down"></i><h3 class="margin-top-0"><br>'+
    						'<small class="font-xs"><i>Currently working as '+currentstatus+' with experience of '+experience+'<i>'+
    						'Contact: '+contact+','+profileemail+'</i></i></small></h3></div><p><a href="guidanceInfoView?guidanceid='+guidanceid+'" class="btn btn-default btn-xs">Go to Guidance</a></p></div></div>';
                			searchcontent = searchcontent + searchset;
                		}
                		$('#searchcontent').append(searchcontent);
                		$('#currentpageno').val(pageno+1);
                	});
			    }else return false;
				
				
			}
			
			function getPageCallSearch(pagenos){
				
				var searchparam = $('#searchparam').val();
				//var currpage = this.id;
				var lastpage = $('#lastpageno').val();
				alert(pagenos);
				if(searchparam!=null && searchparam!=""){
					//pageno = pageno-1;
				    $.getJSON('searchContentResult?searchparam='+searchparam+'&pageno='+pagenos, function(dataset) {
				    	$('#searchcontent').html('');
                		console.log(dataset);
                		var searchcontent = "";
                		for(var item in dataset){
                			var contentdesc = (dataset[item].contentDescription).split(",");
                			var guidancesubject = "";
                			var profileimage = "";
                			var currentstatus = "";
                			var experience = "";
                			var contact = "";
                			var profileemail = "";
                			var profilename = "";
                			var contenttype = dataset[item].contentType;
                			var guidanceid = dataset[item].searchid;
                			
                			
                			for(var type in contentdesc){
                				var contentstate = contentdesc[type].split("::");
                				if(contentstate[0] == "Guidance Subject "){
                					guidancesubject = contentstate[1];
                				}else if(contentstate[0] == "Profile Image "){
                					profileimage = contentstate[1];
                				}else if(contentstate[0] == "Profile Name "){
                					profilename = contentstate[1];
                				}else if(contentstate[0] == "Profile Email "){
                					profileemail = contentstate[1];
                				}else if(contentstate[0] == "Profile CurrenStatus "){
                					currentstatus = contentstate[1];
                				}else if(contentstate[0] == "Profile Experience "){
                					experience = contentstate[1];
                				}else if(contentstate[0] == "Profile Contact "){
                					contact = contentstate[1];
                				}
                				
	                		}
                			
                			var searchset = '<div class="search-results clearfix smart-form"><h4><i class="fa fa-plus-square txt-color-blue">'+
    						'</i>&nbsp;<a href="javascript:void(0);">Guidance on'+guidancesubject+' provided by '+profilename+'</a></h4>'+
    						'<div><br><div class="url text-success">'+profilename+'<i class="fa fa-caret-down"></i><h3 class="margin-top-0"><br>'+
    						'<small class="font-xs"><i>Currently working as '+currentstatus+' with experience of '+experience+'<i>'+
    						'Contact: '+contact+','+profileemail+'</i></i></small></h3></div><p><a href="guidanceInfoView?guidanceid='+guidanceid+'" class="btn btn-default btn-xs">Go to Guidance</a></p></div></div>';
                			searchcontent = searchcontent + searchset;
                		}
                		$('#searchcontent').append(searchcontent);
                		$('#currentpageno').val(pagenos);
                		
                		$('#searchpagenumbers li').each(function(i){
                			
                			if(pagenos === "1"){
                				var currentlink = $(this).attr("class");
                				if(currentlink.indexOf("prev") > 0){
                					$(this).attr("class", "prev disabled");
                				}
                			}else if(pagenos === lastpage){
                				if(currentlink.indexOf("prev") > 0){
                					$(this).attr("class", "prev disabled");
                				}
                			}
                			var currentlink = $(this).attr("class");
                			if(currentlink === "prev disabled" )
                			var currentthread =  (this.innerText).replace("\n","");
                			var currenthtml = (this.innerHTML)
                			
                			
                		});
                	});
			    }else return false;
			}
		
		</script>

	</body>

</html>