<!DOCTYPE html>
<html>

    <!-- Mirrored from dev.lorvent.com/admire/forgot_password.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Dec 2016 17:27:23 GMT -->
    <head>
        <title>Forgot Password | Admire</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="shortcut icon" href="img/logo1.ico"/>
        <!--Global styles -->
        <link type="text/css" rel="stylesheet" href="css/components.css"/>
        <link type="text/css" rel="stylesheet" href="css/custom.css"/>
        <!--End of Global styles -->
        <!--Plugin styles-->
        <link type="text/css" rel="stylesheet" href="vendors/bootstrapvalidator/css/bootstrapValidator.min.css"/>
        <link type="text/css" rel="stylesheet" href="vendors/wow/css/animate.css"/>
        <!--End of Plugin styles-->
        <link type="text/css" rel="stylesheet" href="css/pages/login.css"/>
        
    <link type="text/css" rel="stylesheet" href="vendors/toastr/css/toastr.min.css" />
    <!--End of plugin styles-->
    <!--Page level styles-->
    <link type="text/css" rel="stylesheet" href="css/pages/toastr.css" />
    <link type="text/css" rel="stylesheet" href="#" id="skin_change"/>
    </head>
    <body>
        <div class="container wow slideInDown" data-wow-duration="1s" data-wow-delay="0.5s">
            <div class="row">
                <div class="col-lg-8 push-lg-2 col-sm-10 push-sm-1">
                    <div class="row">
                        <div class="col-lg-6 push-lg-3 col-md-8 push-md-2 col-sm-10 push-sm-1 forgotpwd_margin">
                            <div class="login_logo login_border_radius1">
                                <h3 class="text-xs-center">
                                    <img src="img/logow.png" alt="josh logo" class="admire_logo"><span class="text-white"> IdeaDock &nbsp;<br/>
                                        Forgot Password</span>
                                </h3>
                            </div>
                            <form action="<%=request.getContextPath()%>/Controller" id="login_validator1" method="post" class="form-group  login_validator">
                                <div class="bg-white login_content login_border_radius">
                                    <div class="form-group">
                                        <label for="email_modal">Please enter your email to reset the password</label>
                                        <div class="input-group">
                                            <input type="hidden" name="actioncode" value="forgotpassAdmin"/>
                                            <span class="input-group-addon addon_email"><i class="fa fa-envelope text-primary"></i></span>
                                            <input type="text" class="form-control email_forgot form-control-md" id="email_modal" name="email" placeholder="E-mail">
                                        </div>
                                    </div>
                                    <div>
                                        <button type="submit" class="btn btn-primary" style="margin-left: 125px">Submit
                                        </button>
                                    </div>                            
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- global js -->
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/tether.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- end of global js-->
        <!--Plugin js-->
        <script type="text/javascript" src="vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
        <script type="text/javascript" src="vendors/wow/js/wow.min.js"></script>
        <!--End of plugin js-->
        <script type="text/javascript" src="js/pages/forgot_password.js"></script>
    </body>

    <script type="text/javascript" src="vendors/moment/js/moment.min.js"></script>
    <script type="text/javascript" src="vendors/noty/js/jquery.noty.packaged.min.js"></script>
    <script type="text/javascript" src="vendors/toastr/js/toastr.min.js"></script>

    <!--End of plugin scripts-->
    <!--Page level scripts-->
    <script type="text/javascript" src="js/pages/toastr_notifications.js"></script>

    <!-- Mirrored from dev.lorvent.com/admire/forgot_password.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Dec 2016 17:27:23 GMT -->
</html>
<%  try {
        String msg = request.getParameter("msg");
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