<%-- 
    Document   : editprofile
    Created on : Mar 31, 2018, 9:22:01 AM
    Author     : ARPIT-PATEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="common/header.jsp" %>
<%@include file="common/sidebar.jsp" %>
<%@page import="com.modal.Admin"%>
<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>
<%    List<Admin> admin = (List<Admin>) session.getAttribute("admin");
    try {
        photo = (String) session.getAttribute("photo");
    } catch (Exception e) {
    }
%>
<style>
    .error{
        color:red;
    }
</style>
<div id="content" class="bg-container">
    <header class="head">
        <div class="main-bar row">

            <div class="col-lg-6">

            </div>
        </div>
    </header>
    <div class="outer">
        <div class="inner bg-container">
            <div class="card">
                <div class="card-block m-t-25">
                    <div>
                        <h4>Personal Information</h4>
                    </div>
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="form-group row m-t-15">
                                <div class="col-xs-12 col-lg-3 text-xs-center text-lg-right">
                                    <label class="form-control-label">Profile Pic</label>
                                </div>
                                <div class="col-xs-12 col-lg-6 text-xs-center text-lg-left">
                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                        <div class="fileinput-new img-thumbnail text-xs-center">
                                            <img src="profilepic/<%=photo%>" data-src="<%=request.getContextPath()%>/wp-content/portal/profilepic/<%=photo%>" alt="not found" style="height: 100%;width: 100%"></div>
                                        <div class="fileinput-preview fileinput-exists img-thumbnail"></div>
                                        <!--                                        <div class="m-t-20 text-xs-center">
                                                                                    <span class="btn btn-primary btn-file">
                                                                                        <span class="fileinput-new">Select image</span>
                                                                                        <span class="fileinput-exists">Change</span>
                                                                                        <input type="file" name="...">
                                                                                    </span>
                                                                                    <a href="#" class="btn btn-warning fileinput-exists" data-dismiss="fileinput">Remove</a>
                                                                                </div>-->
                                    </div>
                                </div>
                            </div>
                            <%if (photo.equals("")) {
                            %>
                            <form enctype="multipart/form-data" id="profilepic" class="form-horizontal" method="post"   action="<%=request.getContextPath()%>/Controller" >
                                <div class="form-group row m-t-25">
                                    <div class="col-xs-12 col-lg-3 text-lg-right">
                                        <label for="u-name" class="form-control-label">Profile pic *</label>
                                    </div>
                                    <div class="col-xs-12 col-xl-6 col-lg-8">
                                        <div class="input-group">                           
                                            <input type="hidden" value="insertprofilepicadmin" name="actioncode" /> 

                                            <input type="hidden" value=<%=admin_id%> name="user_id" />

                                            <input type="file" class="form-control" id="profilepic" name="profilepic" required="">
                                            <button type="submit" class="btn btn-primary btn-file" id="addpic" name="addpic">Upload image</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <%} else {
                            %>
                            <form enctype="multipart/form-data" id="profilepic" class="form-horizontal" method="post"   action="<%=request.getContextPath()%>/Controller" >

                                <div class="form-group row m-t-25">
                                    <div class="col-xs-12 col-lg-3 text-lg-right">
                                        <label for="profilepic" class=" control-label">Profile Pic</label>
                                    </div>
                                    <div class="col-xs-12 col-xl-6 col-lg-8">
                                        <div class="input-group">        
                                            <input type="hidden" value="updateprofilepicadmin" name="actioncode" /> 
                                            <input type="hidden" value=<%=admin_id%> name="user_id" /> 
                                            <input type="file" class="form-control" id="profilepic" name="profilepic" required="">
                                            <button type="submit" class="btn btn-primary btn-file" id="addpic" name="addpic">Change image</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            <%}%>
                            <%                                if (!admin.isEmpty() && admin != null) {
                                    Iterator<Admin> it = admin.iterator();
                                    Admin adminObj = null;
                                    while (it.hasNext()) {
                                        adminObj = (Admin) it.next();
                            %>
                            <form class="form-horizontal login_validator" id="profile1" action="<%=request.getContextPath()%>/Controller" method="post"  >
                                <input type="hidden" name="actioncode" value="updateadmin">
                                <input type="hidden" name="admin_id" value="<%=admin_id%>">
                                <div class="form-group row m-t-25">
                                    <div class="col-xs-12 col-lg-3 text-lg-right">
                                        <label for="u-name" class="form-control-label">UserName *</label>
                                    </div>
                                    <div class="col-xs-12 col-xl-6 col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-addon"> <i class="fa fa-user text-primary"></i>
                                            </span>
                                            <input type="text" class="form-control" id="username" name="username" placeholder="User Name" value="<%=adminObj.getUsername()%>" required="">
                                        </div>
                                        <span id="usernameErr" class="error"></span>

                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-xs-12 col-lg-3 text-lg-right">
                                        <label for="email" class="form-control-label">Email *
                                        </label>
                                    </div>
                                    <div class="col-xs-12 col-xl-6 col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-envelope text-primary"></i></span>
                                            <input type="email"  id="email" name="email" class="form-control" required="" value="<%=adminObj.getEmail()%>">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-xs-12 col-lg-3 text-lg-right">
                                        <label for="pwd" class="form-control-label">Password *</label>
                                    </div>
                                    <div class="col-xs-12 col-xl-6 col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock text-primary"></i></span>
                                            <input type="password" class="form-control" id="password" name="password" placeholder="Password" required value="<%=adminObj.getPassword()%>">
                                        </div>
                                        <span id="passErr" class="error"></span>

                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-xs-12 col-lg-3 text-lg-right">
                                        <label for="cpwd" class="form-control-label">Confirm Password *</label>
                                    </div>
                                    <div class="col-xs-12 col-xl-6 col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-lock text-primary"></i></span>
                                            <input type="password" class="form-control" id="repassword" name="repassword" placeholder="Confirm Password" onkeyup="passvalidate()" required>
                                        </div>
                                        <span id="repassErr" class="error"></span>                                    

                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-xs-12 col-lg-3 text-lg-right">
                                        <label for="phone" class="form-control-label">Mobile *</label>
                                    </div>
                                    <div class="col-xs-12 col-xl-6 col-lg-8">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-phone text-primary"></i></span>
                                            <input type="text" class="form-control" id="mobile" name="mobile" placeholder="contact no" required value="<%=adminObj.getPnumber()%>">
                                        </div>
                                        <span id="mobileErr" class="error"></span>                    

                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-xs-12 col-lg-9 push-lg-3">
                                        <button class="btn btn-primary" id="signup" type="submit">
                                            Save
                                        </button>
                                        <input type="reset" class="btn btn-warning" value='Reset' id="clear" />
                                    </div>
                                </div>
                            </form>
                            <%
                                    }
                                }%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="common/footer.jsp" %>
    <script>
        $("form#profile1").submit(function (event) {
            var username = $("#username").val();
            var password = $("#password").val();
            // var regexp = /^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z])$/;
            var regexp = "";
            var mobile = $("#mobile").val();

            if (!password.match(regexp)) {
                $("#password").css({
                    "border": "1px solid #f7931d"
                });
                $("#passErr").text("With 2 letters in Upper Case 1 Special Character (!@#$&*) 2 numerals (0-9) 3 letters in Lower Case");
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
        function passvalidate() {
            if ($("#password").val() != $("#repassword").val()) {
                $("#repassErr").text("Both password must be same");
                $("#signup").attr("disabled", "disabled");

            } else {
                $("#repassErr").text("");
                $('#signup').removeAttr('disabled');
            }
        }
    </script>