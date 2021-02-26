<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<% String msg = "";%>

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

        <link type="text/css" rel="stylesheet" href="css/toastr.min.css" />
        <!--Page level styles-->
        <link type="text/css" rel="stylesheet" href="css/toastr.css" />
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
                        <li><a href="">Help</a></li>
                        <li><a href="login.jsp">Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- END - Top area -->

        <div class="clearfix"></div>

        <!-- START - Navbar -->

        <!-- END - Navbar -->
        <!-- START - Inner Head -->
        <div class="parallax inner-head">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <i class="fa fa-edit"></i>
                        <h4>Welcome <span>To IdeaDock</span></h4>
                        <ol class="breadcrumb">
                            <li class="active">Forgot Password</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!-- END - Inner Head -->

        <<div class="contain-wrapp">
            <div class="container">
                <div class="form-block center-block">
                    <h2 class="title">Password Recovery</h2>
                    <hr />
                    <form id="resetpass" class="form-horizontal" action="<%=request.getContextPath()%>/Controller" method="post">

                        <div class="form-group has-feedback">
                            <input type="hidden" name="actioncode" value="forgotpass"/>
                            <label for="inputEmail" class="col-sm-3 control-label">Registered Email</label>
                            <div class="col-sm-8">
                                <input type="email" class="form-control" id="email" placeholder="Enter Email Here " name="email" required="">
                                <i class="fa fa-envelope form-control-feedback"></i>
                            </div>
                        </div>
                        <button type="submit" class="btn-e btn-block btn-e-primary margin-top-10">submit</button>
                    </form>
                </div>
                <p class="text-center space-top">Password will be sent to your registered email.</p>
            </div>
        </div>




    </div>
    <p class="text-center space-top">Don't have an account yet ? <a href="register.jsp">Register</a> now.</p>
</div>
</div>
<!-- END - Contain Wrapp -->

<div class="clearfix"></div>
<%@ include file="common/footer.jsp" %>
<%  try {
        msg = request.getParameter("msg");
        if (msg.equals("6")) {
%>
<script type="text/javascript">
    toastr.error('Errpr Occurend in sending email ', "Please try again !!", {timeOut: 10000})
</script>
<%} else if (msg.equals("7")) {%>
<script type="text/javascript">
    toastr.error('Given Email is not registered', "!Error", {timeOut: 10000})
</script>
<% }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>