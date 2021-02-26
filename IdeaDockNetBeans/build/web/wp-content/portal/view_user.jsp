<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- Mirrored from dev.lorvent.com/admire/view_user.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Dec 2016 17:27:08 GMT -->
<head>
    <meta charset="UTF-8">
    <title>View user | Admire</title>
    <!--IE Compatibility modes-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--Mobile first-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="img/logo1.ico"/>
    <!-- Bootstrap -->
    <!--Global css-->
    <link type="text/css" rel="stylesheet" href="css/components.css"/>
    <link type="text/css" rel="stylesheet" href="css/custom.css"/>
    <!--end of Global css-->
    <!--Plugin css-->
    <link type="text/css" rel="stylesheet" href="vendors/jasny-bootstrap/css/jasny-bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="vendors/fullcalendar/css/fullcalendar.min.css"/>
    <!--End off plugin css-->
    <!--Page level css-->
    <link type="text/css" rel="stylesheet" href="css/pages/timeline2.css"/>
    <link type="text/css" rel="stylesheet" href="css/pages/calendar_custom.css"/>
    <link type="text/css" rel="stylesheet" href="css/pages/profile.css"/>
    <link type="text/css" rel="stylesheet" href="css/pages/gallery.css"/>
    <link type="text/css" rel="stylesheet" href="#" id="skin_change"/>
    <!--end of page level css-->
</head>
<body>
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
                <a class="navbar-brand text-xs-center" href="index.html">
                    <h4 class="text-white"><img src="img/logow.png" class="admin_img" alt="logo"> ADMIRE ADMIN</h4>
                </a>
                <div class="menu">
                    <span class="toggle-left" id="menu-toggle">
                        <i class="fa fa-bars text-white"></i>
                    </span>
                </div>

                <!-- Toggle Button -->
                <div class="text-xs-right xs_menu">
                    <button class="navbar-toggler hidden-xs-up" type="button" data-toggle="collapse" data-target="#nav-content">
                        ☰
                    </button>
                </div>
                <!-- Nav Content -->
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="topnav dropdown-menu-right float-xs-right">
                    <div class="btn-group">
                        <div class="notifications no-bg">
                            <a class="btn btn-default btn-sm messages" data-toggle="dropdown"> <i class="fa fa-envelope fa-1x text-white"></i>
                                <!--<span class="bg-warning message_tags">4</span>-->
                                <span class="tag tag-warning">8</span>
                            </a>
                            <div class="dropdown-menu drop_box_align" role="menu">
                                <div class="popover-title">You have 8 Messages</div>
                                <div id="messages">
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/5.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data"> <strong>hally</strong>
                                            sent you an image.
                                            <br>
                                            <small>add to timeline</small>
                                        </div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/8.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data"> <strong>Meri</strong>
                                            invitation for party.
                                            <br>
                                            <small>add to timeline</small>
                                        </div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/7.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <strong>Remo</strong>
                                            meeting details .
                                            <br>
                                            <small>add to timeline</small>
                                        </div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/6.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <strong>David</strong>
                                            upcoming events list.
                                            <br>
                                            <small>add to timeline</small>
                                        </div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/5.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data"> <strong>hally</strong>
                                            sent you an image.
                                            <br>
                                            <small>add to timeline</small>
                                        </div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/8.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data"> <strong>Meri</strong>
                                            invitation for party.
                                            <br>
                                            <small>add to timeline</small>
                                        </div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/7.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <strong>Remo</strong>
                                            meeting details .
                                            <br>
                                            <small>add to timeline</small>
                                        </div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/6.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <strong>David</strong>
                                            upcoming events list.
                                            <br>
                                            <small>add to timeline</small>
                                        </div>
                                    </div>
                                </div>
                                <div class="popover-footer">
                                    <a href="mail_inbox.html">Inbox</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="btn-group">
                        <div class="notifications messages no-bg">
                            <a class="btn btn-default btn-sm" data-toggle="dropdown"> <i class="fa fa-bell text-white"></i>
                                <!--<span class="bg-danger notification_tags">4</span>-->
                                <span class="tag tag-danger">9</span>
                            </a>
                            <div class="dropdown-menu drop_box_align" role="menu">
                                <div class="popover-title">You have 9 Notifications</div>
                                <div id="notifications">
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/1.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <i class="fa fa-clock-o"></i>
                                            <strong>Remo</strong>
                                            sent you an image
                                            <br>
                                            <small class="primary_txt">just now.</small>
                                            <br></div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/2.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <i class="fa fa-clock-o"></i>
                                            <strong>clay</strong>
                                            business propasals
                                            <br>
                                            <small class="primary_txt">20min Back.</small>
                                            <br></div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/3.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <i class="fa fa-clock-o"></i>
                                            <strong>John</strong>
                                            meeting at Ritz
                                            <br>
                                            <small class="primary_txt">2hrs Back.</small>
                                            <br></div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/6.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <i class="fa fa-clock-o"></i>
                                            <strong>Luicy</strong>
                                            Request Invitation
                                            <br>
                                            <small class="primary_txt">Yesterday.</small>
                                            <br></div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/1.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <i class="fa fa-clock-o"></i>
                                            <strong>Remo</strong>
                                            sent you an image
                                            <br>
                                            <small class="primary_txt">just now.</small>
                                            <br></div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/2.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <i class="fa fa-clock-o"></i>
                                            <strong>clay</strong>
                                            business propasals
                                            <br>
                                            <small class="primary_txt">20min Back.</small>
                                            <br></div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/3.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <i class="fa fa-clock-o"></i>
                                            <strong>John</strong>
                                            meeting at Ritz
                                            <br>
                                            <small class="primary_txt">2hrs Back.</small>
                                            <br></div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/6.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <i class="fa fa-clock-o"></i>
                                            <strong>Luicy</strong>
                                            Request Invitation
                                            <br>
                                            <small class="primary_txt">Yesterday.</small>
                                            <br></div>
                                    </div>
                                    <div class="data">
                                        <div class="col-xs-2">
                                            <img src="img/mailbox_imgs/1.jpg" class="message-img avatar" alt="avatar1"></div>
                                        <div class="col-xs-10 message-data">
                                            <i class="fa fa-clock-o"></i>
                                            <strong>Remo</strong>
                                            sent you an image
                                            <br>
                                            <small class="primary_txt">just now.</small>
                                            <br></div>
                                    </div>
                                </div>

                                <div class="popover-footer">
                                    <a href="#">View All</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="btn-group">
                        <a class="btn btn-default btn-sm messages toggle-right">
                            &nbsp;
                            <i class="fa fa-cog text-white"></i>
                            &nbsp;
                        </a>
                    </div>
                    <div class="btn-group">
                        <div class="user-settings no-bg">
                            <button type="button" class="btn btn-default no-bg micheal_btn" data-toggle="dropdown">
                                <img src="img/admin.jpg" class="admin_img2 rounded-circle avatar-img" alt="avatar"> <strong>Micheal</strong>
                                <span class="fa fa-sort-down white_bg"></span>
                            </button>
                            <div class="dropdown-menu admire_admin">
                                <a class="dropdown-item title" href="#">
                                    Admire Admin</a>
                                <a class="dropdown-item" href="edit_user.html"><i class="fa fa-cogs"></i>
                                    Account Settings</a>
                                <a class="dropdown-item" href="#">
                                    <i class="fa fa-user"></i>
                                    User Status
                                </a>
                                <a class="dropdown-item" href="mail_inbox.html"><i class="fa fa-envelope"></i>
                                    Inbox</a>

                                <a class="dropdown-item" href="lockscreen.html"><i class="fa fa-lock"></i>
                                    Lock Screen</a>
                                <a class="dropdown-item" href="login.html"><i class="fa fa-sign-out"></i>
                                    Log Out</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="collapse navbar-toggleable-sm col-xl-6 col-lg-6 hidden-md-down float-xl-right  top_menu" id="nav-content">
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
                            <a class="nav-link text-white" href="gallery.html">
                                <i class="fa fa-picture-o"></i> <span class="quick_text">Gallery</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- /.container-fluid --> </nav>
        <!-- /.navbar -->
        <!-- /.head --> </div>
    <!-- /#top -->
    <div class="wrapper">
        <div id="left">
            <div class="media user-media bg-dark dker">
                <div class="user-media-toggleHover">
                    <span class="fa fa-user"></span>
                </div>
                <div class="user-wrapper bg-dark">
                    <a class="user-link" href="#">
                        <img class="media-object img-thumbnail user-img rounded-circle admin_img3" alt="User Picture" src="img/admin.jpg"><p class="text-white user-info">Welcome Micheal</p></a>




                    <div class="search_bar col-lg-12">
                        <div class="input-group">
                            <input type="search" class="form-control" placeholder="search">
                            <span class="input-group-btn">
                                <button class="btn without_border" type="button"><span class="fa fa-search" >
                                </span></button>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #menu -->
            <ul id="menu" class="bg-blue dker">
                <li>
                    <a href="index.html">
                        <i class="fa fa-home"></i>
                        <span class="link-title">&nbsp;Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-anchor"></i>
                        <span class="link-title">&nbsp; Components</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="general_components.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; General Components
                            </a>
                        </li>
                        <li>
                            <a href="transitions.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Transitions
                            </a>
                        </li>
                        <li>
                            <a href="buttons.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Buttons
                            </a>
                        </li>
                        <li>
                            <a href="icons.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Icons
                            </a>
                        </li>
                        <li>
                            <a href="animations.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Animations
                            </a>
                        </li>

                        <li>
                            <a href="sliders.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp;  Sliders
                            </a>
                        </li>
                        <li>
                            <a href="notifications.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Notifications
                            </a>
                        </li>
                        <li>
                            <a href="p_notify.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; P-Notify
                            </a>
                        </li>
                        <li>
                            <a href="cropper.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Cropper
                            </a>
                        </li>
                        <li>
                            <a href="modal.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp;  Modals
                            </a>
                        </li>


                        <li>
                            <a href="sortable.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Sortable
                            </a>
                        </li>
                        <li>
                            <a href="sweet_alert.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Sweet alerts
                            </a>
                        </li>
                        <li>
                            <a href="grids_layout.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Grid View
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-th-large"></i>
                        <span class="link-title">&nbsp; Widgets</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="widgets.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Widgets1
                            </a>
                        </li>
                        <li>
                            <a href="widgets2.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Widgets2
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-pencil"></i>
                        <span class="link-title">&nbsp; Forms</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="form_elements.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Form Elements
                            </a>
                        </li>
                        <li>
                            <a href="form_layouts.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Form Layouts
                            </a>
                        </li>
                        <li>
                            <a href="form_validations.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Form Validations
                            </a>
                        </li>
                        <li>
                            <a href="form_editors.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Form Editors
                            </a>
                        </li>
                        <li>
                            <a href="radio_checkbox.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Radio and Checkbox
                            </a>
                        </li>
                        <li>
                            <a href="form_wizards.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Wizards
                            </a>
                        </li>
                        <li>
                            <a href="datetime_picker.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Date Time Picker
                            </a>
                        </li>

                        <li>
                            <a href="ratings.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Ratings
                            </a>
                        </li>

                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-th"></i>
                        <span class="link-title">&nbsp; Tables</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="simple_tables.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Simple Tables
                            </a>
                        </li>
                        <li>
                            <a href="datatables.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Data Tables
                            </a>
                        </li>
                        <li>
                            <a href="advanced_tables.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Advanced Tables
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-bar-chart"></i>
                        <span class="link-title">&nbsp; Charts</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="charts.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Flot Charts
                            </a>
                        </li>
                        <li>
                            <a href="advanced_charts.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Advanced Charts
                            </a>
                        </li>
                        <li>
                            <a href="chartist.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Chartist
                            </a>
                        </li>
                        <li>
                            <a href="rickshaw.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Rickshaw Charts
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="active">
                    <a href="#">
                        <i class="fa fa-user"></i>
                        <span class="link-title">&nbsp; Users</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="users.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; User Grid
                            </a>
                        </li>
                        <li>
                            <a href="add_user.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Add User
                            </a>
                        </li>
                        <li class="active">
                            <a href="view_user.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; User Profile
                            </a>
                        </li>
                        <li>
                            <a href="delete_user.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Delete User
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="calendar.html">
                        <i class="fa fa-calendar"></i>
                        <span class="link-title">&nbsp; Calendar</span>
                        <span class="tag tag-pill tag-primary float-xs-right calendar_tag">7</span>
                    </a>
                </li>
                <li>
                    <a href="gallery.html">
                        <i class="fa fa-picture-o"> </i>
                        &nbsp; Gallery
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-envelope-o"></i>
                        <span class="link-title">&nbsp; Email</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="mail_compose.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Compose
                            </a>
                        </li>
                        <li>
                            <a href="mail_inbox.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Inbox
                            </a>
                        </li>

                        <li>
                            <a href="mail_view.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; View
                            </a>
                        </li>
                        <li>
                            <a href="mail_sent.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp;  Sent
                            </a>
                        </li>
                        <li>
                            <a href="mail_spam.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Spam
                            </a>
                        </li>

                        <li>
                            <a href="mail_draft.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Draft
                            </a>
                        </li>
                        <li>
                            <a href="mail_trash.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp;  Trash
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-map-marker"></i>
                        <span class="link-title">&nbsp; Maps</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="maps.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Google Maps
                            </a>
                        </li>
                        <li>
                            <a href="jqvmaps.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Vector Maps
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-file"></i>
                        <span class="link-title">&nbsp; Pages</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="404.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; 404
                            </a>
                        </li>
                        <li>
                            <a href="500.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; 500
                            </a>
                        </li>
                        <li>
                            <a href="login.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Login
                            </a>
                        </li>
                        <li>
                            <a href="register.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Register
                            </a>
                        </li>
                        <li>
                            <a href="lockscreen.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Lock Screen
                            </a>
                        </li>
                        <li>
                            <a href="invoice.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Invoice
                            </a>
                        </li>
                        <li>
                            <a href="blank.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Blank Page
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="">
                    <a href="javascript:;">
                        <i class="fa fa-th"></i>
                        <span class="link-title">&nbsp; Layouts</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="boxed.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Boxed Layout
                            </a>
                        </li>
                        <li>
                            <a href="fixed-header-boxed.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Boxed &amp; Fixed Header
                            </a>
                        </li>
                        <li>
                            <a href="fixed-header-menu.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Fixed Header &amp; Menu
                            </a>
                        </li>
                        <li>
                            <a href="fixed-header.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Fixed Header
                            </a>
                        </li>
                        <li>
                            <a href="fixed-menu-boxed.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Boxed &amp; Fixed Menu
                            </a>
                        </li>
                        <li>
                            <a href="fixed-menu.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; Fixed Menu
                            </a>
                        </li>
                        <li>
                            <a href="no-header.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; No Header
                            </a>
                        </li>
                        <li>
                            <a href="no-left-sidebar.html">
                                <i class="fa fa-angle-right"></i>
                                &nbsp; No Left Sidebar
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-sitemap"></i>
                        <span class="link-title">&nbsp; Multi Level Menu</span>
                        <span class="fa arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="javascript:;">
                                <i class="fa fa-angle-right"></i>
                                &nbsp;Level 1
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu sub-submenu">
                                <li>
                                    <a href="javascript:;">
                                        <i class="fa fa-angle-right"></i>
                                        &nbsp;Level 2
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <i class="fa fa-angle-right"></i>
                                        &nbsp;Level 2
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <i class="fa fa-angle-right"></i>
                                        &nbsp;Level 2
                                        <span class="fa arrow"></span>
                                    </a>
                                    <ul class="sub-menu sub-submenu">
                                        <li>
                                            <a href="javascript:;">
                                                <i class="fa fa-angle-right"></i>
                                                &nbsp;Level 3
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="fa fa-angle-right"></i>
                                                &nbsp;Level 3
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="fa fa-angle-right"></i>
                                                &nbsp;Level 3
                                                <span class="fa arrow"></span>
                                            </a>
                                            <ul class="sub-menu sub-submenu">
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="fa fa-angle-right"></i>
                                                        &nbsp;Level 4
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="fa fa-angle-right"></i>
                                                        &nbsp;Level 4
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="javascript:;">
                                                        <i class="fa fa-angle-right"></i>
                                                        &nbsp;Level 4
                                                        <span class="fa arrow"></span>
                                                    </a>
                                                    <ul class="sub-menu sub-submenu">
                                                        <li>
                                                            <a href="javascript:;">
                                                                <i class="fa fa-angle-right"></i>
                                                                &nbsp;Level 5
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <i class="fa fa-angle-right"></i>
                                                                &nbsp;Level 5
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;">
                                                                <i class="fa fa-angle-right"></i>
                                                                &nbsp;Level 5
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="javascript:;">
                                                <i class="fa fa-angle-right"></i>
                                                &nbsp;Level 4
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <i class="fa fa-angle-right"></i>
                                        &nbsp;Level 2
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="fa fa-angle-right"></i>
                                &nbsp;Level 1
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="fa fa-angle-right"></i>
                                &nbsp;Level 1
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="sub-menu sub-submenu">
                                <li>
                                    <a href="javascript:;">
                                        <i class="fa fa-angle-right"></i>
                                        &nbsp;Level 2
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <i class="fa fa-angle-right"></i>
                                        &nbsp;Level 2
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <i class="fa fa-angle-right"></i>
                                        &nbsp;Level 2
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- /#menu -->
        </div>
        <!-- /#left -->
        <div id="content" class="bg-container">
            <header class="head">
                <div class="main-bar row">
                    <div class="col-lg-6">
                        <h4 class="nav_top_align skin_txt">
                            <i class="fa fa-user"></i>
                            User Profile
                        </h4>
                    </div>
                    <div class="col-lg-6">
                        <ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fa fa-home" data-pack="default" data-tags=""></i>
                                    Dashboard
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">Users</a>
                            </li>
                            <li class="active breadcrumb-item">User Profile</li>
                        </ol>
                    </div>
                </div>
            </header>
            <div class="outer">
                <div class="inner bg-container">
                    <div class="card">
                        <div class="card-block">
                            <div class="row">
                                <div class="col-lg-6 m-t-35">
                                    <div class="text-xs-center">
                                        <div class="form-group">
                                            <div class="fileinput fileinput-new" data-provides="fileinput">
                                                <div class="fileinput-new thumb_zoom zoom admin_img_width">
                                                    <img src="img/admin.jpg" alt="admin" class="admin_img_width"></div>
                                                <div class="fileinput-preview fileinput-exists thumb_zoom zoom admin_img_width"></div>
                                                <div class="btn_file_position">
                                                    <span class="btn btn-primary btn-file">
                                                        <span class="fileinput-new">Change image</span>
                                                        <span class="fileinput-exists">Change</span>
                                                        <input type="file" name="Changefile">
                                                    </span>
                                                    <a href="#" class="btn btn-warning fileinput-exists"
                                                       data-dismiss="fileinput">Remove</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="view_friends_imgs"><br/>
                                                <p>
                                                    <strong>FRIENDS</strong>
                                                </p>
                                                <div class="friends_img_left">
                                                    <div class="thumb_zoom zoom">
                                                        <img src="img/mailbox_imgs/2.jpg" class="img-rounded" alt="friend">
                                                    </div>
                                                    <div class="thumb_zoom zoom">
                                                        <img src="img/mailbox_imgs/3.jpg" class="img-rounded" alt="friend">
                                                    </div>
                                                    <div class="thumb_zoom zoom">
                                                        <img src="img/mailbox_imgs/5.jpg" class="img-rounded" alt="friend">
                                                    </div>
                                                    <div class="thumb_zoom zoom">
                                                        <img src="img/mailbox_imgs/6.jpg" class="img-rounded" alt="friend">
                                                    </div>
                                                    <div class="thumb_zoom zoom">
                                                        <img src="img/mailbox_imgs/7.jpg" class="img-rounded" alt="friend">
                                                    </div>
                                                    <div class="thumb_zoom zoom">
                                                        <img src="img/mailbox_imgs/8.jpg" class="img-rounded" alt="friend">
                                                    </div>
                                                    <div class="thumb_zoom zoom">
                                                        <img src="img/mailbox_imgs/10.jpg" class="img-rounded" alt="friend">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 m-t-25">
                                    <div>
                                        <ul class="nav nav-inline view_user_nav_padding">
                                            <li class="nav-item card_nav_hover">
                                                <a class="nav-link active" href="#user" id="home-tab"
                                                   data-toggle="tab" aria-expanded="true">User
                                                    Details</a>
                                            </li>
                                            <li class="nav-item card_nav_hover">
                                                <a class="nav-link" href="#tab2" id="hats-tab" data-toggle="tab">About Me</a>
                                            </li>
                                            <li class="nav-item card_nav_hover">
                                                <a class="nav-link" href="#tab3"  id="followers" data-toggle="tab">Followers</a>
                                            </li>
                                        </ul>
                                        <div id="clothing-nav-content" class="tab-content m-t-10">
                                            <div role="tabpanel" class="tab-pane fade in active" id="user">
                                                <table class="table" id="users">
                                                    <tr>
                                                        <td>User Name</td>
                                                        <td class="inline_edit">
                                                        <span class="editable"
                                                              data-title="Edit User Name">Micheal</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>E-mail</td>
                                                        <td>
                                                            <span class="editable" data-title="Edit E-mail">gankunding@hotmail.com</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Phone Number</td>
                                                        <td>
                                                            <span class="editable" data-title="Edit Phone Number">(999)999-9999</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Address</td>
                                                        <td>
                                                            <span class="editable" data-title="Edit Address">Australia</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Created At</td>
                                                        <td>1 month ago</td>
                                                    </tr>
                                                    <tr>
                                                        <td>City</td>
                                                        <td>
                                                            <span class="editable" data-title="Edit City">Nakia</span>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>Pincode</td>
                                                        <td>
                                                            <span class="editable" data-title="Edit Pincode">522522</span>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="tab2">
                                                <div class="card_nav_body_padding">
                                                    <p>
                                                        Howdy, I'm in About Me.
                                                    </p>
                                                    <p class="text-justify">
                                                        Ut wisi enim ad minim veniam, quis nostrud exerci tation
                                                        ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
                                                        consequat. Duis autem vel eum iriure dolor in hendrerit in
                                                        vulputate velit esse molestie consequat. Ut wisi enim ad
                                                        minim veniam, quis nostrud exerci tation.
                                                    </p>
                                                </div>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="tab3">
                                                <div class="card_nav_body_padding follower_images">
                                                    <div class="row">
                                                        <div class="col-sm-3 col-xl-2">
                                                            <div class="img">
                                                                <a href="#">
                                                                    <img src="img/mailbox_imgs/2.jpg" class="rounded-circle" alt="friend">
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-9 col-xl-9">
                                                            <div class="details">
                                                                <div class="name">
                                                                    <a href="#">Scarlett Johansson</a>
                                                                </div>
                                                                <div class="time">
                                                                    <i class="fa fa-clock-o"></i> Last seen: 7 minutes ago
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row m-t-15">
                                                        <div class="col-sm-3 col-xl-2">
                                                            <div class="img">
                                                                <a href="#">
                                                                    <img src="img/mailbox_imgs/3.jpg" class="rounded-circle" alt="friend">
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-9 col-xl-10">
                                                            <div class="details">
                                                                <div class="name">
                                                                    <a href="#">Mila Kunis</a>
                                                                </div>
                                                                <div class="time">
                                                                    <i class="fa fa-clock-o"></i> Online
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row m-t-15">
                                                        <div class="col-xl-2 col-sm-3">
                                                            <div class="img">
                                                                <a href="#">
                                                                    <img src="img/mailbox_imgs/8.jpg" class="rounded-circle" alt="friend">
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="col-xl-10 col-sm-9">
                                                            <div class="details">
                                                                <div class="name">
                                                                    <a href="#">George Clooney</a>
                                                                </div>
                                                                <div class="time">
                                                                    <i class="fa fa-clock-o"></i> Last seen: 1 hour ago
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row m-t-15">
                                                        <div class="col-xl-2 col-sm-3">
                                                            <div class="img">
                                                                <a href="#">
                                                                    <img src="img/mailbox_imgs/6.jpg" class="rounded-circle" alt="friend">
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="col-xl-10 col-sm-9">
                                                            <div class="details">
                                                                <div class="name">
                                                                    <a href="#">Robert Downey Jr.</a>
                                                                </div>
                                                                <div class="time">
                                                                    <i class="fa fa-clock-o"></i> Online
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row m-t-15">
                                                        <div class="col-xl-2 col-sm-3">
                                                            <div class="img">
                                                                <a href="#">
                                                                    <img src="img/mailbox_imgs/5.jpg" class="rounded-circle" alt="friend">
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="col-xl-10 col-sm-9">
                                                            <div class="details">
                                                                <div class="name">
                                                                    <a href="#">Ryan Gossling</a>
                                                                </div>
                                                                <div class="time">
                                                                    <i class="fa fa-clock-o"></i> Last seen: 45 minutes ago
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="card m-t-35">
                                <div class="card-header bg-white">
                                    <div>
                                        <i class="fa fa-calendar"></i>
                                        Upcoming Events
                                    </div>
                                </div>
                                <div class="card-block m-t-35 padding-body view_user_cal">
                                    <div id="calendar_mini" class="bg-primary"></div>
                                    <div class="list-group">
                                        <a href="#" class="list-group-item calendar-list">
                                            <div class="tag tag-pill tag-primary float-xs-right">07:30</div>
                                            Meet a friend
                                        </a>
                                        <a href="#" class="list-group-item calendar-list">
                                            <div class="tag tag-pill tag-primary float-xs-right">10:30</div>
                                            Seminar on market
                                        </a>
                                        <a href="#" class="list-group-item calendar-list">
                                            <div class="tag tag-pill tag-primary float-xs-right">11:30</div>
                                            Meeting with CEO
                                        </a>
                                        <a href="#" class="list-group-item calendar-list">
                                            <div class="tag tag-pill tag-primary float-xs-right">17:30</div>
                                            Sales proposal
                                        </a>
                                        <a href="#" class="list-group-item calendar-list">
                                            <div class="tag tag-pill tag-primary float-xs-right">19:30</div>
                                            Milestone release
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="card m-t-35">
                                <div class="card-header bg-white">
                                    <div>
                                        <i class="fa fa-pencil"></i>
                                        Recent Feeds
                                    </div>
                                </div>
                                <div class="card-block m-t-35 padding">
                                    <div class="feed">
                                        <ul>
                                            <li>
                                                    <span>
                                                        <img src="img/roundicons/flat/Office-27.png" alt="text_image"
                                                             class="rounded-circle img-fluid recent_feeds_img"/>
                                                    </span>
                                                <h5>
                                                    Important Mails
                                                </h5>
                                                <p>
                                                    Mail received from
                                                    <strong>John</strong> .
                                                </p>
                                                <i>1 hr back</i>
                                            </li>
                                            <li>
                                                    <span>
                                                        <img src="img/roundicons/flat/Technology-07.png"
                                                             alt="text_image"
                                                             class="rounded-circle img-fluid recent_feeds_img"/>
                                                    </span>
                                                <h5>
                                                    Documents
                                                </h5>
                                                <p>
                                                    <strong>Documents</strong> have sent to
                                                    <strong>MJ</strong> .
                                                </p>
                                                <i>1 hr ago</i>
                                            </li>
                                            <li>
                                                    <span>
                                                        <img src="img/mailbox_imgs/8.jpg"
                                                             class="rounded-circle img-fluid pull-left recent_feeds_img"
                                                             alt="Image">
                                                    </span>
                                                <h5>
                                                    Mails
                                                </h5>
                                                <p>
                                                    Mail sent to
                                                    <strong>sandy</strong> .
                                                </p>
                                                <i>2 hr back</i>
                                            </li>
                                            <li>
                                                    <span>
                                                        <img src="img/mailbox_imgs/6.jpg"
                                                             class="rounded-circle img-fluid pull-left recent_feeds_img"
                                                             alt="Image">
                                                    </span>
                                                <h5>
                                                    Mails
                                                </h5>
                                                <p>
                                                    Mail sent to
                                                    <strong>John</strong> .
                                                </p>
                                                <i>30 minutes back</i>
                                            </li>

                                            <li>
                                                    <span>
                                                        <img src="img/roundicons/flat/Office-06.png" alt="text_image"
                                                             class="rounded-circle img-fluid recent_feeds_img"/>
                                                    </span>
                                                <h5>
                                                    Notice
                                                </h5>
                                                <p>
                                                    <strong>Lorem Ipsum</strong> is simply dummy text of the printing and
                                                    typesetting industry.
                                                </p>
                                                <i>2 hr back</i>
                                            </li>
                                            <li>
                                                    <span>
                                                        <img src="img/mailbox_imgs/5.jpg"
                                                             class="rounded-circle img-fluid pull-left recent_feeds_img"
                                                             alt="Image">
                                                    </span>
                                                <h5>
                                                    Mails
                                                </h5>
                                                <p>
                                                    Mail sent to
                                                    <strong>Peter</strong> .
                                                </p>
                                                <i>1 hr back</i>
                                            </li>
                                            <li class="no-border">
                                                    <span>
                                                        <img src="img/mailbox_imgs/2.jpg"
                                                             class="rounded-circle img-fluid pull-left recent_feeds_img"
                                                             alt="Image">
                                                    </span>
                                                <h5>
                                                    Important Notice
                                                </h5>
                                                <p>
                                                    <strong>Renny</strong> sent some documents .
                                                </p>
                                                <i>3 hr back</i>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card m-t-35">
                        <div class="card-header bg-white">
                            <i class="fa fa-fw fa-clock-o"></i> Timeline
                        </div>
                        <div class="card-block m-t-35">
                            <!--timeline-->
                            <div>
                                <ul class="timeline">
                                    <li>
                                        <div class="timeline-badge primary">
                                            <i class="fa fa-tag"></i>
                                        </div>
                                        <div class="timeline-panel bg-primary">
                                            <div class="timeline-heading text-white">
                                                <h5 class="timeline-title">Timeline Event One</h5>
                                                <p>
                                                    <small>13 hours ago</small>
                                                </p>
                                            </div>
                                            <div class="timeline-body text-white">
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.  gravida tempor justo, at  justo fringilla at.
                                                    .
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-inverted">
                                        <div class="timeline-badge danger">
                                            <i class="fa fa-fw fa-check-square-o"></i>
                                        </div>
                                        <div class="timeline-panel bg-danger">
                                            <div class="timeline-heading text-white">
                                                <h5 class="timeline-title">Timeline Event Two</h5>
                                                <p>
                                                    <small>June 20,2016</small>
                                                </p>
                                            </div>
                                            <div class="timeline-body text-white">
                                                <p> gravida tempor justo, at  justo fringilla at. gravida tempor justo, at justo fringilla at.</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="timeline-badge info">
                                            <i class="fa fa-thumbs-o-up"></i>
                                        </div>
                                        <div class="timeline-panel bg-info">
                                            <div class="timeline-heading text-white">
                                                <h5 class="timeline-title">Timeline Event Three</h5>
                                                <p>
                                                    <small>June 10 , 2016</small>
                                                </p>
                                            </div>
                                            <div class="timeline-body text-white">
                                                <p>
                                                    Lorem ipsum dolor sit amet.  gravida tempor justo, at bibendum justo fringilla  justo fringilla at.
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-inverted">
                                        <div class="timeline-badge warning">
                                            <i class="fa fa-fw fa-indent"></i>
                                        </div>
                                        <div class="timeline-panel bg-warning">
                                            <div class="timeline-heading text-white">
                                                <h5 class="timeline-title">Timeline Event Four</h5>
                                                <p>
                                                    <small>Apr 20,2016</small>
                                                </p>
                                            </div>
                                            <div class="timeline-body text-white">
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.  gravida tempor justo,  justo fringilla at.
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="timeline-badge success">
                                            <i class="fa fa-pencil-square-o"></i>
                                        </div>
                                        <div class="timeline-panel bg-success">
                                            <div class="timeline-heading text-white">
                                                <h5 class="timeline-title">Timeline Event Five</h5>
                                                <p>
                                                    <small>Mar 15,2016</small>
                                                </p>
                                            </div>
                                            <div class="timeline-body text-white">
                                                <p>
                                                    Lorem Ipsum is simply dummy, vidis litro abertis.consectetur adipiscing elit.  gravida tempor justo, at  justo fringilla at.
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="timeline-inverted">
                                        <div class="timeline-badge mint">
                                            <i class="fa fa-paperclip"></i>
                                        </div>
                                        <div class="timeline-panel bg-mint">
                                            <div class="timeline-heading text-white">
                                                <h5 class="timeline-title">Timeline Event Six</h5>
                                                <p>
                                                    <small>Jan 1,2016</small>
                                                </p>
                                            </div>
                                            <div class="timeline-body text-white">
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.  gravida tempor justo, at  justo fringilla at.
                                                    fringilla at.
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!--timeline ends-->
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.inner -->
        </div>
        <!-- /.outer -->
    </div>
    <!--wrapper-->
</div>
<!-- /#content -->
<div id="right">
    <div class="right_content">
        <div class="alert alert-success white_txt">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <strong>Welcome Micheal
                <br/></strong>
            Set Your Skin Here. Checkout Admin Statistics. Good Day!.
        </div>
        <div class="well well-small dark">
            <div class="xs_skin_hide hidden-sm-up toggle-right"> <i class="fa fa-cog"></i></div>
            <h4 class="brown_txt">
                    <span class="fa-stack fa-sm">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-paint-brush fa-stack-1x fa-inverse"></i>
                </span>
                Skins
            </h4>
            <br/>

            <div class="skinmulti_btn" onclick="javascript:loadjscssfile('blue_black_skin.html','css')">
                <div class="skin_blue skin_size"></div>
                <div class="skin_black skin_size"></div>
            </div>
            <div class="skinmulti_btn" onclick="javascript:loadjscssfile('green_black_skin.html','css')">
                <div class="skin_green skin_size"></div>
                <div class="skin_black skin_size"></div>
            </div>
            <div class="skinmulti_btn" onclick="javascript:loadjscssfile('purple_black_skin.html','css')">
                <div class="skin_purple skin_size"></div>
                <div class="skin_black skin_size"></div>
            </div>
            <div class="skinmulti_btn" onclick="javascript:loadjscssfile('orange_black_skin.html','css')">
                <div class="skin_orange skin_size"></div>
                <div class="skin_black skin_size"></div>
            </div>
            <div class="skinmulti_btn" onclick="javascript:loadjscssfile('red_black_skin.html','css')">
                <div class="skin_red skin_size"></div>
                <div class="skin_black skin_size"></div>
            </div>
            <div class="skinmulti_btn" onclick="javascript:loadjscssfile('mint_black_skin.html','css')">
                <div class="skin_mint skin_size"></div>
                <div class="skin_black skin_size"></div>
            </div>
            <div class="skinmulti_btn" onclick="javascript:loadjscssfile('brown_black_skin.html','css')">
                <div class="skin_brown skin_size"></div>
                <div class="skin_black skin_size"></div>
            </div>
            <div class="skinmulti_btn" onclick="javascript:loadjscssfile('black_skin.html','css')">
                <div class="skin_black skin_size"></div>
                <div class="skin_black skin_size"></div>
            </div>
            <div class="skin_btn skin_blue" onclick="javascript:loadjscssfile('blue_skin.html','css')"></div>
            <div class="skin_btn skin_green" onclick="javascript:loadjscssfile('green_skin.html','css')"></div>
            <div class="skin_btn skin_purple" onclick="javascript:loadjscssfile('purple_skin.html','css')"></div>
            <div class="skin_btn skin_orange" onclick="javascript:loadjscssfile('orange_skin.html','css')"></div>
            <div class="skin_btn skin_red" onclick="javascript:loadjscssfile('red_skin.html','css')"></div>
            <div class="skin_btn skin_mint" onclick="javascript:loadjscssfile('mint_skin.html','css')"></div>
            <div class="skin_btn skin_brown" onclick="javascript:loadjscssfile('brown_skin.html','css')"></div>
            <div class="skin_btn skin_black" onclick="javascript:loadjscssfile('black_skin.html','css')"></div>

        </div>
        <div class="well well-small dark">
            <h4 class="brown_txt margin15_bottom">
                <img src="img/admin.jpg" width="32" height="32" class="rounded-circle avatar-img" alt="avatar"> &nbsp;Admin
                Statistics</h4>
            <br/>
            <ul class="list-unstyled">
                <li class="green_txt margin15_bottom">
                <span class="fa-stack fa-sm">
                    <i class="fa fa-circle fa-stack-2x text-mint"></i>
                    <i class="fa fa-lock fa-stack-1x fa-inverse"></i>
                </span>
                    &nbsp; Last Login
                    <span class="inlinesparkline float-xs-right">2hrs Back</span>
                </li>
                <li class="warning_txt margin15_bottom">
                        <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-brown"></i>
                      <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                    </span>
                    &nbsp; Pending Tasks
                    <span class="dynamicsparkline float-xs-right">12</span>
                </li>
                <li class="primary_txt margin15_bottom">
                        <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-primary"></i>
                      <i class="fa fa-cloud fa-stack-1x fa-inverse"></i>
                    </span>
                    &nbsp; Weather Today
                    <span class="dynamicbar float-xs-right">Rainy</span>
                </li>
                <li class="margin15_bottom">
                        <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-brown"></i>
                      <i class="fa fa-calendar fa-stack-1x fa-inverse"></i>
                    </span>
                    &nbsp; Events
                    <span class="inlinebar float-xs-right">Team Out</span>
                </li>
                <li class="success_txt margin15_bottom">
                        <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-success"></i>
                      <i class="fa fa-bell fa-stack-1x fa-inverse"></i>
                    </span>
                    &nbsp; Notifications
                    <span class="inlinebar float-xs-right">5</span>
                </li>
            </ul>
        </div>
        <div class="well well-small dark right_progressbar_section">
            <h4 class="brown_txt">
                    <span class="fa-stack fa-sm">
                      <i class="fa fa-circle fa-stack-2x text-brown"></i>
                      <i class="fa fa-hand-o-down fa-stack-1x fa-inverse"></i>
                    </span>
                Alerts
            </h4>
            <br/>
            <span>Sales Improvement</span>
            <span class="float-xs-right">
                <small>20%</small>
            </span>
            <div class="progress xs">
                <progress class="progress progress-striped progress-primary" value="20" max="100"></progress>
            </div>
            <span>Server Load</span>
            <span class="float-xs-right">
                <small>80%</small>
            </span>
            <div class="progress xs">
                <progress class="progress  progress-striped progress-mint" value="80" max="100"></progress>
            </div>
            <span>Traffic Improvement</span>
            <span class="float-xs-right">
                <small>55%</small>
            </span>
            <div class="progress xs">
                <progress class="progress  progress-striped progress-danger" value="55" max="100"></progress>
            </div>
        </div>
    </div>
</div>
<!-- # right side -->
<!--Global scripts-->
<script type="text/javascript" src="js/components.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<!--End of Global scripts-->
<!--Plugin scripts-->
<script type="text/javascript" src="vendors/jasny-bootstrap/js/jasny-bootstrap.min.js"></script>
<script type="text/javascript" src="vendors/bootstrap_calendar/js/bootstrap_calendar.min.js"></script>
<script type="text/javascript" src="vendors/moment/js/moment.min.js"></script>
<script type="text/javascript" src="vendors/fullcalendar/js/fullcalendar.min.js"></script>
<!--End of Plugin scripts-->
<!--Page level scripts-->
<script type="text/javascript" src="js/pages/mini_calendar.js"></script>
<!--End of Page level scripts-->
</body>


<!-- Mirrored from dev.lorvent.com/admire/view_user.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 17 Dec 2016 17:27:11 GMT -->
</html>