	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Register</title>

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
        <link href="css/toastr.css" rel="stylesheet">


        <!-- REVOLUTION SLIDER LAYERS AND NAVIGATION STYLES -->
        <link rel="stylesheet" type="text/css" href="css/revolution/layers.css">
        <link rel="stylesheet" type="text/css" href="css/revolution/navigation.css">

        <!-- CUSTOM STYLES -->
        <link href="css/style.css" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/toastr.min.css" />
        <!--Page level styles-->
        <link type="text/css" rel="stylesheet" href="css/toastr.css" />
        <link type="text/css" rel="stylesheet" href="#" id="skin_change"/>

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
                        <li><a href="login.jsp">Login</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- END - Top area -->

        <div class="clearfix"></div>
    <body>
        <div class="parallax inner-head">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <i class="fa fa-user-plus"></i>
                        <h4>User <span>Registration</span></h4>
                        <ol class="breadcrumb">
                            <li class="active">Registration Page</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="form-block center-block">
                <h2 class="title">Sign Up</h2>
                <hr />
                <form id="register1" class="form-horizontal" method="post" action="<%=request.getContextPath()%>/Controller" >
                    <input type="hidden" value="insertuser" name="actioncode" />           
                    <div class="form-group has-feedback">
                        <label for="inputName" class="col-sm-3 control-label">Full Name <span class="text-danger small">*</span></label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="fullname" name="fullname" placeholder="First Name" required>
                            <span id="fullNameErr" class="error"></span>
                            <i class="fa fa-pencil form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="inputUserName" class="col-sm-3 control-label">User Name <span class="text-danger small">*</span></label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="username" name="username" placeholder="User Name" onfocusout='return abc(this.value)' required="">
                            <span id="usernameErr" class="error"></span>
                            <i class="fa fa-user form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="inputEmail" class="col-sm-3 control-label">E-mail <span class="text-danger small">*</span></label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="email" name="email" placeholder="E-mail"  onfocusout='return bca(this.value)' required="">
                            <i class="fa fa-envelope form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="inputPassword" class="col-sm-3 control-label">Password <span class="text-danger small">*</span></label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                            <span id="passErr" class="error"></span>
                            <i class="fa fa-lock form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="inputPassword" class="col-sm-3 control-label">Re Password <span class="text-danger small">*</span></label>
                        <div class="col-sm-8">
                            <input type="password" class="form-control" id="repassword" name="repassword" placeholder="Confirm Password" onkeyup="passvalidate()" required>
                            <span id="repassErr" class="error"></span>
                            <i class="fa fa-lock form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group  has-feedback">
                        <label for="inputPassword" class="col-sm-3 control-label">Account Type</label>
                        <div class=" col-sm-2">
                            <div class="radio">
                                <div class="custom-radio">
                                    <label>Ideaholder
                                        <input type="radio" name="type" id="typeA" value="users" >
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-offset-1 col-sm-2">
                            <div class="radio">
                                <div class="custom-radio">
                                    <label>Investor
                                        <input type="radio" name="type" id="typeB" value="investor" >
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="inputPassword" class="col-sm-3 control-label">Mobile <span class="text-danger small">*</span></label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="mobile" name="mobile" placeholder="contact no" required>
                            <span id="mobileErr" class="error"></span>
                            <i class="fa fa-lock form-control-feedback"></i>
                        </div>
                    </div>
                    <div class="form-group  has-feedback">
                        <label for="inputPassword" class="col-sm-3 control-label">Gender</label>
                        <div class=" col-sm-2">
                            <div class="radio">
                                <div class="custom-radio">
                                    <label>Male
                                        <input type="radio" name="gender" id="genderMale" value="male" >
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-offset-1 col-sm-2">
                            <div class="radio">
                                <div class="custom-radio">
                                    <label>Female
                                        <input type="radio" name="gender" id="genderFemale" value="female" >
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-8">
                            <div class="checkbox">
                                <label class="custom-checkbox">I have read <a href="#">privacy policy</a> and <a href="#">customer agreement</a>
                                    <input type="checkbox" name="terms" required/>
                                    <div class="checkmark"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-8">
                            <button type="submit"  class="btn-e btn-block btn-e-primary" id="signup">Sign Up</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
<%@ include file="common/footer.jsp" %>
<script src="js/validation/js/jquery.js"></script>
<script src="js/validation/js/jquery.validate.js"></script>
<script src="js/validation/js/jquery.validate.min.js"></script> 
<script src="js/validation/js/setting.js"></script> 
<script type="text/javascript" src="js/toastr_notifications.js"></script>

<script type="text/javascript">
//    // validate the comment form when it is submitted
//    $("#register1").click(function () {
//        $("#register1").validate({
//            rules: {
//                fullname: "required",
//                gender: "required",
//                type: "required",
//                username: {
//                    required: true,
//                    minlength: 5
//                },
//                password: {
//                    required: true,
//                    regexp: /^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z])$/
//                },
//                email: {
//                    required: true,
//                    email: true
//                },
//                mobile: {
//                    required: true,
//                    length: 10,
//                    regexp: /[0-9]/
//                }
//            },
//            messages: {
//                fullname: "Please enter your firstname",
//                gender: "Please select your gender",
//                type: "please select your Account type",
//                username: {
//                    required: "Please enter a username",
//                    minlength: "Your username must consist of at least 5 characters"
//                },
//                password: {
//                    required: "Please provide a password",
//                    //minlength: "Your password must be at least 6 characters long",
//                    regexp: "With 2 letters in Upper Case 1 Special Character (!@#$&*) 2 numerals (0-9) 3 letters in Lower Case"
//                },
//                email: "Please enter a valid email address",
//                mobile: {
//                    length: "Mobile No should 10 digit",
//                    regexp: "mobile no contain only numbers"
//                }
//            }
//        });
//    });
</script>
<script type="text/javascript">

    function abc(username) {
        //alert(username);
        $.ajax({
            type: "post",
            url: "<%=request.getContextPath()%>/Controller?actioncode=checkUsername",
            data: {
                username: username
            },

            success: function (msg) {

                if (msg == 0) {
//                    toastr["error"]("Username is Already in use Please try other username", "Please try different username");
                    toastr.error('Username is Already in use Please try other username', 'Please try different username', {timeOut: 10000})

                    $("#signup").attr("disabled", "disabled");
                } else {
                    $('#signup').removeAttr('disabled');
                }
            },
            error: function (msg) {
                console.log();
            }
        });
        return true;
    }
    function bca(email) {
        //alert(username);
        $.ajax({
            type: "post",
            url: "<%=request.getContextPath()%>/Controller?actioncode=checkEmail",
            data: {
                email: email
            },

            success: function (msg) {
                if (msg == 0) {
                    toastr["error"]("Entered Email is Already registered", "Please change email");

                    //alert("Email is Already in use Please try other Email");
                    $("#signup").attr("disabled", "disabled");
                } else {
                    $('#signup').removeAttr('disabled');
                }
            },
            error: function (msg) {
                console.log();
            }
        });
        return true;
    }
    function passvalidate() {
        if ($("#password").val() != $("#repassword").val()) {
            $("#repassErr").text("Both password must be same");
            $("#signup").attr("disabled", "disabled");

        } else {
            $("#repassErr").text("");
            $('#signup').removeAttr('disabled');
        }
    }

    $("form#register1").submit(function (event) {
        var username = $("#username").val();
        var fullname = $("#fullname").val();
        var password = $("#password").val();
//         var regexp = /^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z])$/;
        var regexp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
        //var regexp = "";
        var mobile = $("#mobile").val();
        if ($("#genderMale").is(":checked") == false && $("#genderFemale").is(":checked") == false) {
            toastr["error"]("please select gender", "Hey");
            event.preventDefault();
        }
        if ($("#typeA").is(":checked") == false && $("#typeB").is(":checked") == false) {
            toastr["error"]("please select Account type", "Hey");

            event.preventDefault();
        }
        if (!password.match(regexp)) {
            $("#password").css({
                "border": "1px solid #f7931d"
            });
//            $("#passErr").text("With 2 letters in Upper Case 1 Special Character (!@#$&*) 2 numerals (0-9) 3 letters in Lower Case");
            $("#passErr").text("Minimum eight characters, at least one letter, one number and one special character:");
            event.preventDefault();
        } else {
            $("#password").css({
                "border": "1px solid #636363"
            });
            $("#passErr").text("");
        }
        if (username.length < 6) {
            $("#username").css({
                "border": "1px solid #f7931d"
            });
            $("#usernameErr").text(" Your username must consist of at least 5 characters");
            event.preventDefault();
        } else {
            $("#username").css({
                "border": "1px solid #636363"
            });
            $("#usernameErr").text("");
        }
        if (fullname.length < 6) {
            $("#fullname").css({
                "border": "1px solid #f7931d"
            });
            $("#fullNameErr").text(" Your Fullname must consist of at least 5 characters");
            event.preventDefault();
        } else {
            $("#fullname").css({
                "border": "1px solid #636363"
            });
            $("#fullNameErr").text("");
        }
        if (mobile.match("/[0-9]/")) {
            $("#mobile").css({
                "border": "1px solid #f7931d"
            });
            $("#mobileErr").text("mobile no contain only numbers");
            event.preventDefault();
        } else if (mobile.length != 10) {
            $("#mobile").css({
                "border": "1px solid #f7931d"
            });
            $("#mobileErr").text("Mobile No should 10 digit");
            event.preventDefault();
        } else
        {
            $("#mobile").css({
                "border": "1px solid #636363"
            });
            $("#mobileErr").text("");
        }
    });
</script>