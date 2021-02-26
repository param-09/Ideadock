<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setDateHeader("Expires", 0); // Proxies.
%>

<% 
String username="";
String email="";
String user_type = "";
int user_id = 0;
int admin_id=0;
String logout;
try{
	username=(String)session.getAttribute("username");
	email=(String)session.getAttribute("email");
	
	if(username==null){
		response.sendRedirect(request.getContextPath() + "/wp-content/info/login.jsp");
	}
}
catch(Exception e){
	e.printStackTrace();
}

try{
	user_id=(int)session.getAttribute("user_id");
	user_type =(String)session.getAttribute("type");
}
catch(Exception e){
	e.printStackTrace();
} 

%>
<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from ecada.encodeslife.com/v1.1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Jan 2018 14:19:02 GMT -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="keywords" content="corporate html template - agency theme - business html template - creative theme - portfolio html template - gallery theme - restaurant theme - ecommerce template - app template - landing page - real estate theme">
        <meta name="description" content="Bootstrap HTML5 template for agency, corporate, business, app and creative portfolio, it is suitable for any kind of websites, like ecommerce, restaurant, photography, gallery and retail website.">
        <meta name="author" content="encodeslife">
        <link rel="icon" href="img/favicon.png">

        <title>IdeaDock Home</title>

        <!-- BOOTSTRAP -->
        <link href="js/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- REVOLUTION SLIDER MAIN STYLESHEET -->
        <link rel="stylesheet" type="text/css" href="css/revolution/settings.css">

        <!-- REVOLUTION SLIDER LAYERS AND NAVIGATION STYLES -->
        <link rel="stylesheet" type="text/css" href="css/revolution/layers.css">
        <link rel="stylesheet" type="text/css" href="css/revolution/navigation.css">

        <!-- CUSTOM STYLES -->
        <link href="css/style.css" rel="stylesheet">

        <!-- THEME SKINS -->
        <link id="skin" href="css/theme-colors/orange.css" rel="stylesheet">
        <link href="js/style-switcher/css/style-switcher.css" rel="stylesheet">
        <link href="css/line-icons/line-icons.css" rel="stylesheet">
        <link href="css/customcss.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
              <script src="js/html5shiv.min.js"></script>
              <script src="js/respond.min.js"></script>
            <![endif]-->
        <!--[if IE 9]>
              <link href="css/ie.css" rel="stylesheet">
            <![endif]-->
    </head>

    <body>
        <!-- START - Style Switcher -->
        <i class="style-switcher-btn fa fa-cogs hidden-xs"></i>
        <div class="style-switcher animated fadeInRight">
            <div class="style-switcher-header">
                <div class="style-switcher-heading">Style Switcher</div>
                <div class="style-switcher-close"><i class="icon-close"></i></div>
            </div>
            <div class="style-switcher-body">
                <!-- Theme Colors -->
                <div class="style-switcher-heading">Theme Colors</div>
                <ul class="list-unstyled">
                    <li class="theme-orange theme-active" data-style="orange" data-header="light"></li>
                    <li class="theme-red" data-style="red" data-header="light"></li>
                    <li class="theme-dark-red" data-style="dark-red" data-header="light"></li>
                    <li class="theme-aqua" data-style="aqua" data-header="light"></li>
                    <li class="theme-blue" data-style="blue" data-header="light"></li>
                    <li class="theme-dark-blue last" data-style="dark-blue" data-header="light"></li>
                    <li class="theme-purple" data-style="purple" data-header="light"></li>
                    <li class="theme-brown" data-style="brown" data-header="light"></li>
                    <li class="theme-yellow" data-style="yellow" data-header="light"></li>
                    <li class="theme-light-green" data-style="light-green" data-header="light"></li>
                    <li class="theme-teal" data-style="teal" data-header="light"></li>
                    <li class="theme-green last" data-style="green" data-header="light"></li>
                </ul>
            </div>
        </div>
        <!-- END - Style Switcher -->

        <!-- START - Top area -->
        <div class="top-container">
            <div class="container">
                <div class="top-column-left">
                    <ul class="contact-line">
                        <li><i class="fa fa-envelope"></i> support_ideadock@gmail.com.com</li>
                        <li><i class="fa fa-phone"></i> (0123)-123-456-789</li>
                    </ul>
                </div>
                <div class="top-column-right">
                    <div class="top-social-network">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                    </div>
                    <ul class="register">
                        <li class="dropdown language" style="display: block;">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-globe"></i> Languages</a>
                            <ul class="dropdown-menu">
                                <li><a href="#">English <i class="fa fa-check"></i></a></li>
                            </ul>
                        </li>
                        <li><a href="">Help</a></li>
                        <% 	if(username==null){
                        %>
                        <li><a href="login.jsp">Login</a></li>
                        <%} else{ %>
                           <li><a href="<%=request.getContextPath()%>/Controller?actioncode=logoutuser">Logout</a></li>
                        <%} %>
                    </ul>
                </div>
            </div>
        </div>
        <!-- END - Top area -->

        <div class="clearfix"></div>

        <!-- START - Navbar -->
        <nav class="navbar navbar-default navbar-dark megamenu">
            <div class="container">
                <!-- START - Navbar right -->
                <div class="navlink-right">
                    <button type="button" class="btn-navlink show-form"><i class="fa fa-search"></i></button>
                    <button type="button" class="btn-navlink close-form"><i class="fa fa-remove"></i></button>
                </div>
                <!-- END - Navbar right -->

                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand logo" href="index.html">
                        <img src="img/themes/logo-orange.png" alt="Logo" />
                    </a>
                </div>

                <!-- START - Form Search -->
                <div class="search-wrapper">
                    <span class="fa fa-search form-control-search"></span>
                    <input type="text" class="form-search" placeholder="Type something and hit enter...">
                </div>
                <!-- END - Form Search -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="investor_home.jsp" class="dropdown-toggle" data-toggle="dropdown">Home</a>
                           
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">New Ideas</a>
                            <ul class="dropdown-menu">
                                <li class="dropdown">
                                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewidea" class="dropdown-toggle" data-toggle="dropdown">View New Idea</a>
                                  <!--   <ul class="dropdown-menu">
                                        <li><a href="page_about.html">About Us 1</a></li>
                                        <li><a href="page_about2.html">About Us 2</a></li>
                                        <li><a href="page_about3.html">About Us 3</a></li>
                                    </ul> -->
                                </li>
                                <li class="dropdown">
                                    <a href="" class="dropdown-toggle" data-toggle="dropdown">Praposal by Ideaholder</a>
                                    <!-- <ul class="dropdown-menu">
                                        <li><a href="page_services.html">Our Services 1</a></li>
                                        <li><a href="page_services2.html">Our Services 2</a></li>
                                        <li><a href="page_services3.html">Our Services 3</a></li>
                                    </ul> -->
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Replys to client</a>
                                  <!--   <ul class="dropdown-menu">
                                        <li><a href="page_registration.html">Registration Page</a></li>
                                        <li><a href="page_login.html">Login Page</a></li>
                                    </ul> -->
                                </li>
                            </ul>
                        </li>
                       
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">current idea</a>
                        </li>
                        <li class="dropdown megamenu-fw">
                            <a href="aboutus.jsp">About Us</a>
                        </li>
                        <li><a href="contact.jsp">Contact Us</a></li>
	                     <li class="dropdown navbar-user">
							<a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
								<span class="user-image online">
									<img src="assets/img/user-13.jpg" alt="" /> 
								</span>
								<span class="hidden-xs"><%=username %></span> <b class="caret"></b>
							</a>
							<ul class="dropdown-menu animated fadeInLeft">
								<li class="arrow"></li>
								<li class="dropdown">
	                            	<a href="<%=request.getContextPath()%>/Controller?actioncode=viewuser&user_id=<%=user_id%>" class="dropdown-toggle" data-toggle="dropdown">My Profile</a>
	                        	</li>
								<li><a href="javascript:;"><span class="badge badge-danger pull-right">2</span> Inbox</a></li>
								<li><a href="javascript:;">Calendar</a></li>
								<li><a href="javascript:;">Setting</a></li>
								<li class="divider"></li>
								<li><a href="javascript:;">Log Out</a></li>
							</ul>
						</li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
        </nav>
        <!-- END - Navbar -->