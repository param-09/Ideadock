<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div class="clearfix"></div>
<%
    String color2 = "";

    try {
        color2 = (String) session.getAttribute("color");

    } catch (Exception e) {
        e.printStackTrace();
    }%>
<!-- START - footer -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="footer-description">
                    <img class="footer-logo" src="img/themes/logo-orange.png" alt="Footer logo" />
                    <!-- span>---------------------------</span> -->
                    <div class="widget" id="text-footer">
                        <p></p>
                    </div>
                </div>
                <div class="footer-details">
                    <ul class="list-unstyled footer-list">
                        <li><i class="fa fa-angle-double-right"></i><a href="<%=request.getContextPath()%>/Controller?actioncode=viewallidea">Home</a></li>
                        <li><i class="fa fa-angle-double-right"></i><a href="aboutus.jsp">About Us</a></li>
                        <li><i class="fa fa-angle-double-right"></i><a href="<%=request.getContextPath()%>/Controller?actioncode=viewfaquser">F.A.Q.</a></li>
                        <li><i class="fa fa-angle-double-right"></i><a href="contact.jsp">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <h5>Newsletter</h5>
                <p>Subscribe to our newsletter to get important news, amazing offers & inside scoops:</p>
                <!-- START - Subscribe -->
                <div class="input-group margin-bottom-20">
                    <input type="text" class="form-control" placeholder="Enter your email address...">
                    <span class="input-group-btn">
                        <button class="btn-e btn-e-primary" type="button"><i class="fa fa-send-o"></i></button>
                    </span>
                </div>
                <!-- END - Subscribe -->
<!--                <div class="footer-social-networks">
                    <a href="#"><i class="fa fa-facebook fa-2x icon-square"></i></a>
                    <a href="#"><i class="fa fa-twitter fa-2x icon-square"></i></a>
                    <a href="#"><i class="fa fa-google-plus fa-2x icon-square"></i></a>
                    <a href="#"><i class="fa fa-instagram fa-2x icon-square"></i></a>
                    <a href="#"><i class="fa fa-linkedin fa-2x icon-square"></i></a>
                </div>-->
            </div>
        </div>
    </div>
    <div class="subfooter">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="footer-brand">
                        <p><a href="#">IdeaDock</a> &copy; 2018 - All rights reserved.</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <ul class="list-inline sponsors-icons">
<!--                        <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                        <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>-->

                    </ul>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- END - footer -->

<!-- START - to top -->
<a href="#" class="toTop">
    <i class="fa fa-chevron-up"></i>
</a>
<!-- END - to top -->

<!-- jQuery -->
<script src="js/jquery.min.js"></script>

<!-- BOOTSTRAP -->
<script src="js/bootstrap/js/bootstrap.min.js"></script>

<!-- jQuery Easing -->
<script src="js/jquery.easing-1.3.min.js"></script>

<!-- REVOLUTION JS FILES -->
<script type="text/javascript" src="js/revolution/jquery.themepunch.tools.min.js"></script>
<script type="text/javascript" src="js/revolution/jquery.themepunch.revolution.min.js"></script>

<script>
    setTimeout(function () {
        //  alert("color Changed");
        $(".nicescroll-cursors").css({
            "background-color": "<%=color2%>"
        });
    }, 3000);


</script>
<!-- SLIDER REVOLUTION 5.0 EXTENSIONS  
    (Load Extensions only on Local File Systems ! 
    The following part can be removed on Server for On Demand Loading) -->
<script type="text/javascript" src="js/revolution/revolution.extension.actions.min.js"></script>
<script type="text/javascript" src="js/revolution/revolution.extension.carousel.min.js"></script>
<script type="text/javascript" src="js/revolution/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript" src="js/revolution/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="js/revolution/revolution.extension.migration.min.js"></script>
<script type="text/javascript" src="js/revolution/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="js/revolution/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="js/revolution/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="js/revolution/revolution.extension.video.min.js"></script>
<script type="text/javascript" src="js/toastr_notifications.js"></script>  
<script type="text/javascript" src="js/moment.min.js"></script>
<script type="text/javascript" src="js/jquery.noty.packaged.min.js"></script>
<script type="text/javascript" src="js/toastr.min.js"></script>

<!--End of plugin scripts-->
<!--Page level scripts-->


<!-- CUSTOM REVOLUTION JS FILES -->
<script>
    $(document).ready(function () {
        $("#rev-slider").revolution({
            sliderType: "standard",
            sliderLayout: "auto",
            delay: 9000,
            navigation: {
                keyboardNavigation: "on",
                keyboard_direction: "horizontal",
                mouseScrollNavigation: "off",
                onHoverStop: "off",
                touch: {
                    touchenabled: "on",
                    swipe_threshold: 75,
                    swipe_min_touches: 1,
                    swipe_direction: "horizontal",
                    drag_block_vertical: false
                },
                arrows: {
                    style: "hephaistos",
                    enable: true,
                    hide_onmobile: false,
                    hide_onleave: false,
                    tmp: '',
                    left: {
                        h_align: "left",
                        v_align: "center",
                        h_offset: 30,
                        v_offset: 0
                    },
                    right: {
                        h_align: "right",
                        v_align: "center",
                        h_offset: 30,
                        v_offset: 0
                    }
                },
                bullets: {
                    enable: true,
                    hide_onmobile: false,
                    style: "hephaistos",
                    hide_onleave: false,
                    direction: "horizontal",
                    h_align: "center",
                    v_align: "bottom",
                    h_offset: 20,
                    v_offset: 30,
                    space: 5,
                    tmp: ''
                }
            },
            gridwidth: 1230,
            gridheight: 720
        });
    });
</script>

<!-- Parallax -->
<script src="js/parallax/jquery.parallax-1.1.3.js"></script>
<script src="js/parallax/setting.js"></script>

<!-- Owl Carousel -->
<script src="js/owlcarousel/js/owl.carousel.min.js"></script>
<script src="js/owlcarousel/js/setting.js"></script>
<script type="text/javascript" src="js/owlcar.js"></script>

<!-- PrettyPhoto -->
<script src="js/prettyPhoto/js/jquery.prettyPhoto.js"></script>
<script src="js/prettyPhoto/js/setting.js"></script>

<!-- Masonry -->
<script src="../js/masonry/js/masonry.min.js"></script>
<script src="js/masonry/js/masonry.filter.js"></script>
<script src="js/masonry/js/setting.js"></script>

<!-- Custom JavaScript for this theme -->
<script src="js/custom.js"></script>

<!-- Nicescroll -->
<script src="js/nicescroll/jquery.nicescroll.min.js"></script>
<script src="js/nicescroll/settings.js">
</script>
<script>

    var colorBack = "";
</script>
<!-- Theme option-->
<script src="js/style-switcher/js/style-switcher.js"></script>
<!--<script>
    var styleSwitcher = function () {
        return {
                    //Style Switcher
                    initStyleSwitcher: function () {
                        var panel = $('.style-switcher');
                        $('.style-switcher-btn').on('click', function () {
                            panel.show();
                        });
                        $('.style-switcher-close').on('click', function () {
                            panel.hide();
                        });
                        $('li', panel).on('click', function () {

                            color = $(this).attr('data-style');
                            setColor(color);
                            $('.list-unstyled li', panel).removeClass('theme-active');
                            $(this).addClass('theme-active');
                        });
                        var setColor = function (color) {
                            $('#skin').attr('href', 'css/theme-colors/' + color + '.css');
                        }
                    }

        };
    }();
</script>-->
<script>
    $(document).ready(function () {
        styleSwitcher.initStyleSwitcher();
    });
</script>
</body>
<script src="plugins/parsley/dist/parsley.js"></script>
<script src="js/apps.min.js"></script>
<!-- ================== BEGIN BASE JS ================== -->
<script src="plugins/jquery/jquery-1.9.1.min.js"></script>
<script src="plugins/jquery/jquery-migrate-1.1.0.min.js"></script>
<script src="plugins/jquery-ui/ui/minified/jquery-ui.min.js"></script>
<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
<!--[if lt IE 9]>
        <script src="assets/crossbrowserjs/html5shiv.js"></script>
        <script src="assets/crossbrowserjs/respond.min.js"></script>
        <script src="assets/crossbrowserjs/excanvas.min.js"></script>
<![endif]-->
<script src="../plugins/slimscroll/jquery.slimscroll.min.js"></script>
<script src="plugins/jquery-cookie/jquery.cookie.js"></script>
<script src="js/flexslider/js/jquery.flexslider-min.js"></script>
<script src="js/customjs.js"></script>
<!-- Mirrored from ecada.encodeslife.com/v1.1/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 16 Jan 2018 14:20:33 GMT -->
</html>
