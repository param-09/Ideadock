<!doctype html>
<html class="no-js" lang="en">
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setDateHeader("Expires", 0); // Proxies.
%>

<% 
String username="";
String email="";
int admin_id=0;
String photo = "";
String logout;
try{
        admin_id = (Integer)session.getAttribute("admin_id");
	username=(String)session.getAttribute("username");
        photo = (String)session.getAttribute("photo");
	email=(String)session.getAttribute("email");
	if(username==null){
		response.sendRedirect(request.getContextPath() + "/wp-content/portal/login.jsp");
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>
<head>
    <meta charset="UTF-8">
    <title>IdeaDock | Admn</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo1.ico"/>

    <!--global styles-->
    <link type="text/css" rel="stylesheet" href="css/components.css"/>
    <link type="text/css" rel="stylesheet" href="css/custom.css"/>
    <!--Page level styles-->
    <link type="text/css" rel="stylesheet" href="css/pages/form_validations.css" />
    
    <!-- end of global styles-->
    <link type="text/css" rel="stylesheet" href="vendors/c3/css/c3.min.css"/>
    <link type="text/css" rel="stylesheet" href="vendors/toastr/css/toastr.min.css"/>
     <link type="text/css" rel="stylesheet" href="vendors/switchery/css/switchery.min.css" />
    <link type="text/css" rel="stylesheet" href="css/pages/new_dashboard.css"/>
    <link type="text/css" rel="stylesheet" href="#" id="skin_change"/>
  <!--addrole.jsp page -->
  <!-- View Role page -->
   <link type="text/css" rel="stylesheet" href="vendors/select2/css/select2.min.css" />
    <link type="text/css" rel="stylesheet" href="vendors/datatables/css/scroller.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="vendors/datatables/css/colReorder.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="vendors/datatables/css/dataTables.bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="css/pages/dataTables.bootstrap.css" />
    <!-- end of plugin styles -->
    <!--Page level styles-->
    <link type="text/css" rel="stylesheet" href="css/pages/tables.css" />
    <!--Plugin styles-->
    <link type="text/css" rel="stylesheet" href="vendors/jquery-validation-engine/css/validationEngine.jquery.css" />
    <link type="text/css" rel="stylesheet" href="vendors/datepicker/css/bootstrap-datepicker.min.css">
    <link type="text/css" rel="stylesheet" href="vendors/datepicker/css/bootstrap-datepicker3.min.html">
    <link type="text/css" rel="stylesheet" href="vendors/datetimepicker/css/DateTimePicker.min.css">
    <link type="text/css" rel="stylesheet" href="vendors/bootstrapvalidator/css/bootstrapValidator.min.css" />
    <!--End of plugin styles-->
    <!--end addrole.jsp page -->
    <!-- add investor -->
        <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <link type="text/css" rel="stylesheet" href="vendors/jasny-bootstrap/css/jasny-bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="vendors/bootstrapvalidator/css/bootstrapValidator.min.css"/>
</head>

<body class="body">
<div class="preloader" style=" position: fixed;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 100000;
  backface-visibility: hidden;
  background: #ffffff;">
    <div class="preloader_img" style="width: 200px;
  height: 200px;
  position: absolute;
  left: 48%;
  top: 48%;
  background-position: center;
z-index: 999999">
        <img src="img/loader.gif" style=" width: 40px;" alt="loading...">
    </div>
</div>
<div class="bg-dark" id="wrap">
    <div id="top">
        <!-- .navbar -->
        <nav class="navbar navbar-static-top">
            <div class="container-fluid">
                <a class="navbar-brand text-xs-center" href="index.jsp">
                    <h4 class="text-white"><img src="img/logow.png" class="admin_img" alt="logo"> IdeaDock ADMIN</h4>
                </a>
                <div class="menu">
                        <span class="toggle-left" id="menu-toggle">
                        <i class="fa fa-bars text-white"></i>
                        </span>
                </div>

                <!-- Toggle Button -->
                <div class="text-xs-right xs_menu">
                    <button class="navbar-toggler hidden-xs-up" type="button" data-toggle="collapse"
                            data-target="#nav-content">
                        ☰
                    </button>
                </div>
                <!-- Nav Content -->
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="topnav dropdown-menu-right float-xs-right">
                    <div class="btn-group">
                        <div class="user-settings no-bg">
                            <button type="button" class="btn btn-default no-bg micheal_btn" data-toggle="dropdown">
                                <img src="profilepic/<%=photo%>" class="admin_img2 rounded-circle avatar-img" alt="avatar">
                                <strong> <%=username %> </strong>
                                <span class="fa fa-sort-down white_bg"></span>
                            </button>
                            <div class="dropdown-menu admire_admin">
                                <a class="dropdown-item title" href="#">
                                   Idea Dock</a>
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/Controller?actioncode=adminprofile&id=<%=admin_id%>"><i class="fa fa-cogs"></i>
                                    Account Settings</a>
<!--                             //    <a class="dropdown-item" href="#">
                                    <i class="fa fa-user"></i>
                                    User Status
                                </a>
                                <a class="dropdown-item" href="mail_inbox.html"><i class="fa fa-envelope"></i>
                                    Inbox</a>

                                <a class="dropdown-item" href="lockscreen.html"><i class="fa fa-lock"></i>
                                    Lock Screen</a>-->
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/Controller?actioncode=logout"><i class="fa fa-sign-out"></i>
                                    Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
<!--                <div class="collapse navbar-toggleable-sm col-xl-6 col-lg-6 hidden-md-down float-xl-right  top_menu"
                     id="nav-content">
                    <ul class="nav navbar-nav top_menubar">
                        <li class="nav-item">
                            <a class="nav-link text-white" href="mail_inbox.html">
                                <i class="fa fa-inbox"></i> <span class="quick_text">Inbox</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="mail_compose.html">
                                <i class="fa fa fa-edit"></i> <span class="quick_text">Compose</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="maps.html">
                                <i class="fa fa-map-marker"></i> <span class="quick_text">Maps</span>
                            </a>
                        </li>
                        <li class="nav-item">
                                <i class="fa fa-picture-o"></i> <span class="quick_text">Gallery</span>
                            </a>
                            <a class="nav-link text-white" href="gallery.html">
                        </li>
                    </ul>
                </div>-->
            </div>

            <!-- /.container-fluid --> </nav>
        <!-- /.navbar -->
        <!-- /.head --> </div>
