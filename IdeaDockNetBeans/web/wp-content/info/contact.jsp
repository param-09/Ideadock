<%@ include file="common/header.jsp" %>


<!-- START - Inner Head -->
<div class="parallax inner-head">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <i class="fa fa-send"></i>
                <h4>Contact <span>Us</span></h4>
                <ol class="breadcrumb">
                    <li><a href="<%=request.getContextPath()%>/Controller?actioncode=viewallidea">Home</a></li>
                    <li class="active">Contact</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!-- END - Inner Head -->

<!-- START - Contain Wrapp -->
<div class="contain-wrapp padding-bottom-50">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-7">
                <form method="post" id="contactForm" action="<%=request.getContextPath()%>/Controller">
                    <div class="clearfix"></div>
                    <input type="hidden" name="actioncode" value="contactus" />
                    <div id="success"></div>
                    <div class="row wrap-form">
                        <div class="form-group col-sm-6">
                            <label for="inputName">Full Name</label>
                            <input type="text" name="name" id="name" class="form-control required" placeholder="Enter your full name...">
                            <span id="nameErr" class="error"></span>
                            <span data-for="name" class="error"></span>
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="inputEmail">E-mail Address</label>
                            <input type="email" name="email" id="email" class="form-control required" placeholder="Enter your e-mail address...">
                            <span id="emailErr" class="error"></span>
                            <span data-for="email" class="error"></span>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="inputMessage">Your Message</label>
                            <textarea name="message" id="message" class="form-control required" placeholder="Write something for us..." rows="9"></textarea>
                            <span data-for="message" class="error"></span>
                        </div>
                        <span id="mesError" class="error"></span>
                        <div class="form-group col-md-12">
                            <input type="submit" value="Send Message" id="submit" class="btn-e btn-e-primary" />
                            <div class="status-progress"></div>
                        </div>
                    </div>
                </form>
                <iframe style="margin-top: 50px" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14691.67383230441!2d72.4865706!3d22.9900258!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x872df2d55fbb0008!2sLJ+Institute+of+Engineering+And+Technology!5e0!3m2!1sen!2sin!4v1522573347622" width="1000" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
            <div class="col-md-4 col-sm-5">
                <div class="contact-detail">
                    <div class="contact-sparator"></div>
                    <ul class="list-unstyled">
                        <li>
                            <h6><i class="fa fa-home fa-2x fa-primary"></i> Our location</h6>
                            <p>
                                S.G. Road,<br> Between Sarkhej Circle & Kataria Motors,<br> Makarba, Ahmedabad,<br> Gujarat 382210
                            </p>
                        </li>
                        <li>
                            <h6><i class="fa fa-phone fa-2x fa-primary"></i> Call center</h6>
                            <p>
                                (0123)-123-456-789
                            </p>
                        </li>
                        <li>
                            <h6><i class="fa fa-envelope fa-2x fa-primary"></i> E-mail address</h6>
                            <p>
                                support@idea_dock.com
                            </p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END - Contain Wrapp -->

<!-- START - Google Map -->
<!--<div class="map-wrapper">
    <div class="maps map-primary" data-address="Juniper Valley Rd 80, New York, United States" data-zoom="15"></div>
</div>-->
<!-- END - Google Map -->

<!--<div class="clearfix"></div>-->
<%@ include file="common/footer.jsp" %>
<script src="js/validation/js/jquery.js"></script>
<script src="js/validation/js/jquery.validate.js"></script>
<script src="js/validation/js/jquery.validate.min.js"></script> 
<script src="js/validation/js/setting.js"></script> 
<script>
    $("form#contactForm").submit(function (event) {
        var name = $("#name").val();
        var email = $("#email").val();
        var message = $("#message").val();


        if (name.length < 6) {
            $("#name").css({
                "border": "1px solid #f7931d"
            });
            $("#nameErr").text(" Your name must consist of at least 5 characters");
            event.preventDefault();
        } else {
            $("#name").css({
                "border": "1px solid #636363"
            });
            $("#nameErr").text("");
        }
        if (email.length == "") {
            $("#email").css({
                "border": "1px solid #f7931d"
            });
            $("#emailErr").text("Email must be not null");
            event.preventDefault();
        } else {
            $("#email").css({
                "border": "1px solid #636363"
            });
            $("#emailErr").text("");
        }
        if (message.length == "") {
            $("#message").css({
                "border": "1px solid #f7931d"
            });
            $("#mesErr").text("message must be not null");
            event.preventDefault();
        } else {
            $("#message").css({
                "border": "1px solid #636363"
            });
            $("#mesErr").text("");
        }

    });
</script>
<%
    try {
        String msg = request.getParameter("msg");
        if (msg.equals("suceess")) {
%>
<script type="text/javascript">
    alert("Response sucessfully submitted");
</script>
<%} else {%>
<script type="text/javascript">
    alert("OOPS something gone wrong");
</script>
<% }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>