<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect(request.getContextPath() + "/wp-content/info/login.jsp?msg=login");
    }
     response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

   
%>





<%
    String username = "";
    String email = "";
    String user_type = "";
    String color = "";
    String photo = "";
    int user_id = 0;
    int admin_id = 0;
    String logout;
    try {
        color = (String) session.getAttribute("color");
        username = (String) session.getAttribute("username");
        email = (String) session.getAttribute("email");
        user_id = (Integer) session.getAttribute("user_id");
        user_type = (String) session.getAttribute("type");
        photo = (String) session.getAttribute("photo");
        color = (String) session.getAttribute("color");

        if (username == null) {
            response.sendRedirect(request.getContextPath() + "/wp-content/info/login.jsp?msg=login");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<%@page %>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">

    <script>

    </script>
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
        <link type="text/css" rel="stylesheet" href="css/toastr.min.css" />
        <!--Page level styles-->
        <link type="text/css" rel="stylesheet" href="css/toastr.css" />
        <link type="text/css" rel="stylesheet" href="css/theme-colors/<%=color%>.css" id="skin_change"/>    

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
                        <li><i class="fa fa-envelope"></i> support_ideadock@gmail.com</li>
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
                        <li><a href="<%=request.getContextPath()%>/Controller?actioncode=viewfaquser">Help</a></li>
                            <% 	if (username
                                        == null) {
                            %>
                        <li><a href="login.jsp">Login</a></li>
                            <%} else {%>
                        <li><a href="<%=request.getContextPath()%>/Controller?actioncode=logoutuser">Logout</a></li>
                            <%}%>
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
                    <a class="navbar-brand" href="">
                        <img src="<%=request.getContextPath()%>/wp-content/info/profilepic/<%=photo%>" height="54" width="54" class="img-circle"/>
                    </a>
                </div>

                <!-- START - Form Search -->
                <div class="search-wrapper">
                    <span class="fa fa-search form-control-search"></span>
                    <form action="<%=request.getContextPath()%>/Controller" method="post" name="mysearch">
                        <input type="hidden" name="actioncode" value="searchbar"/>
                        <input type="text" class="form-search" placeholder="Type something and hit enter..." name="searchterm" required="" minlength="3">
                    </form>
                </div>
                <!-- END - Form Search -->

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="<%=request.getContextPath()%>/Controller?actioncode=viewallidea" >Home</a>
                        </li>
                        <%if (user_type.equals(
                                    "users")) {%>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">My Ideas</a>
                            <ul class="dropdown-menu">
                                <li class="">
                                    <a href="add_idea.jsp">Add New Idea</a>
                                    <!--   <ul class="dropdown-menu">
                                          <li><a href="page_about.html">About Us 1</a></li>
                                          <li><a href="page_about2.html">About Us 2</a></li>
                                          <li><a href="page_about3.html">About Us 3</a></li>
                                      </ul> -->
                                </li>
                                <li class="">
                                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewidea">View Idea</a>
                                    <!-- <ul class="dropdown-menu">
                                        <li><a href="page_services.html">Our Services 1</a></li>
                                        <li><a href="page_services2.html">Our Services 2</a></li>
                                        <li><a href="page_services3.html">Our Services 3</a></li>
                                    </ul> -->
                                </li>
                                <li class="">
                                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewproposedidea">Proposed Idea</a>
                                    <!--   <ul class="dropdown-menu">
                                          <li><a href="page_registration.html">Registration Page</a></li>
                                          <li><a href="page_login.html">Login Page</a></li>
                                      </ul> -->
                                </li>
                            </ul>
                        </li>
                        <%} %>
                        <%if (user_type.equals(
                                    "investor")) {%>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">New Ideas</a>
                            <ul class="dropdown-menu">
                                <li class="dropdown">
                                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewproposedidea">Proposed Idea</a>
                                    <!--   <ul class="dropdown-menu">
                                          <li><a href="page_registration.html">Registration Page</a></li>
                                          <li><a href="page_login.html">Login Page</a></li>
                                      </ul> -->
                                </li>
                                <!--  <li class="dropdown">
                                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Reply to Proposal</a>
                                     <ul class="dropdown-menu">
                                         <li><a href="page_registration.html">Registration Page</a></li>
                                         <li><a href="page_login.html">Login Page</a></li>
                                     </ul>
                                 </li> -->
                            </ul>
                        </li>
                        <%}%>
                        <li class="dropdown">
                            <a href="<%=request.getContextPath()%>/Controller?actioncode=viewselectidea&user_id=<%=user_id%>">Current Idea</a>
                        </li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Success Stories</a>
                            <ul class="dropdown-menu">
                                <li><a href="<%=request.getContextPath()%>/Controller?actioncode=viewstory&user_id=0">All Success Stories</a></li>
                                <li><a href="<%=request.getContextPath()%>/Controller?actioncode=viewstory&user_id=<%=user_id%>">My Success Stories</a></li>
                            </ul>
                        </li>
                        <li class="dropdown megamenu-fw">
                            <a href="aboutus.jsp">About Us</a>
                        </li>
                        <li><a href="contact.jsp">Contact Us</a></li>
                        <li class="dropdown ">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                                <span class="hidden-xs"><%=username%></span> <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu animated fadeInLeft">
                                <li class="arrow"></li>
                                <li class="dropdown">
                                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewuser&p=0&user_id=<%=user_id%>">My Profile</a>
                                </li>
                                <%if (user_type.equals(
                                            "investor")) {%>
                                <li><a href="investor_interest.jsp"><span class="badge badge-danger pull-right"></span> Add Your Interests</a></li>
                                <li><a href="<%=request.getContextPath()%>/Controller?actioncode=viewinterest&user_id=<%=user_id%>"><span class="badge badge-danger pull-right"></span> Edit Your Interests</a></li>
                                    <%}%>
                                <li><a href="" data-toggle="modal" data-target="#myModal">Setting</a></li>
                                <li class="divider"></li>
                                <li><a href="<%=request.getContextPath()%>/Controller?actioncode=logoutuser">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
        </nav>
        <!-- END - Navbar -->



        <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" ><span aria-hidden="true">×</span></button>
                <h6 class="modal-title">Select Favourite color For Website</h6>
            </div>
            <div class="modal-body">
                <div class="col-sm-12">
                    <div class="form-inline">
                        <input type="hidden" id="actioncode" name="actioncode" value="<%=request.getContextPath()%>/Controller?actioncode=updatethemeColor"/>
                        <input type="hidden" id="user_id" name="user_id" value="<%=user_id%>"/>
                        <select class="form-control" id="color" name ="color" >
                            <option value="0">Select Theme color</option>
                            <option value="aqua" class="btn-aqua">aqua</option>
                            <option value="blue" class="btn-blue">blue2</option>
                            <option value="brown" class="btn-brown">brown</option>
                            <option value="dark-blue" class="btn-dark-blue">dark-blue</option>
                            <option value="dark-red" class="btn-dark-red">dark-red</option>
                            <option value="green" class="btn-green">green</option>
                            <option value="light-green" class="btn-light-green">light-green</option>
                            <option value="orange" class="btn-orange">orange</option>
                            <option value="purple" class="btn-purple">purple</option>
                            <option value="red" class="btn-red">red</option>
                            <option value="teal" class="btn-teal">teal</option>
                            <option value="yellow" class="btn-yellow">yellow</option>
                        </select>
                        <button type="submit" class="btn btn-e-primary" onclick="changeTheme()">Submit</button>
                    </div> 
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn-e btn-e-primary btn-sm" data-dismiss="modal">Close</button>
                <!--<button type="button" class="btn-e btn-e-primary btn-sm">Save changes</button>-->
            </div>
        </div>
    </div>
</div>


