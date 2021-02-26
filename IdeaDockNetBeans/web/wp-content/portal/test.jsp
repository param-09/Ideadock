<%@ include file="common/header.jsp" %>
<%@ include file="common/sidebar.jsp" %>
                            <div>
                                <h4>Personal Information</h4>
    
                            <form class="form-horizontal login_validator" id="tryitForm" action="http://dev.lorvent.com/admire/add_user.html"
                                  method="post">
                                <!--<form role="form" id="tryitForm" action="add_user.html" class="form-horizontal" method="post" auete="on">-->
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="form-group row m-t-25">
                                            <div class="col-lg-3 text-xs-center text-lg-right">
                                                <label class="form-control-label">Profile Pic</label>
                                            </div>
                                            <div class="col-lg-6 text-xs-center text-lg-left">
                                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                                    <div class="fileinput-new img-thumbnail text-xs-center">
                                                        <img src="#" data-src="holder.js/100%x100%"  alt="not found"></div>
                                                    <div class="fileinput-preview fileinput-exists img-thumbnail"></div>
                                                    <div class="m-t-20 text-xs-center">
                                                        <span class="btn btn-primary btn-file">
                                                            <span class="fileinput-new">Select image</span>
                                                            <span class="fileinput-exists">Change</span>
                                                            <input type="file" name="..."></span>
                                                        <a href="#" class="btn btn-warning fileinput-exists"
                                                           data-dismiss="fileinput">Remove</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row m-t-25">
                                            <div class="col-lg-3 text-lg-right">
                                                <label for="u-name" class="form-control-label">User
                                                    Name *</label>
                                            </div>
                                            <div class="col-xl-6 col-lg-8">
                                                <div class="input-group">
                                    <span class="input-group-addon"> <i class="fa fa-user text-primary"></i>
                                    </span>
                                                    <input type="text" name="firstName" id="u-name"
                                                           class="form-control">
                                                </div>

                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-3 text-lg-right">
                                                <label for="email" class="form-control-label">Email
                                                    *</label>
                                            </div>
                                            <div class="col-xl-6 col-lg-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-envelope text-primary"></i></span>
                                                    <input type="text" placeholder=" " id="email" name="email"
                                                           class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-3 text-lg-right">
                                                <label for="pwd" class="form-control-label">Password
                                                    *</label>
                                            </div>
                                            <div class="col-xl-6 col-lg-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-lock text-primary"></i></span>
                                                    <input type="password" name="password" id="pwd"
                                                           class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-3 text-lg-right">
                                                <label for="cpwd" class="form-control-label">Confirm
                                                    Password *</label>
                                            </div>
                                            <div class="col-xl-6 col-lg-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-lock text-primary"></i></span>
                                                    <input type="password" name="confirmpassword" placeholder=" " id="cpwd"
                                                           class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-3 text-lg-right">
                                                <label for="phone" class="form-control-label">Phone
                                                    *</label>
                                            </div>
                                            <div class="col-xl-6 col-lg-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-phone text-primary"></i></span>
                                                    <input type="text" placeholder=" " id="phone" name="cell"
                                                           class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group gender_message row">
                                            <div class="col-lg-3 text-lg-right">
                                                <label class="form-control-label">Gender *</label>
                                            </div>
                                            <div class="col-xl-6 col-lg-8">
                                                <div class="custom-controls-stacked">
                                                    <label class="custom-control custom-radio">
                                                        <input id="radio1" type="radio" name="gender"
                                                               class="custom-control-input">
                                                        <span class="custom-control-indicator"></span>
                                                        <span class="custom-control-description">Male</span>
                                                    </label>
                                                    <label class="custom-control custom-radio">
                                                        <input id="radio2" type="radio" name="gender"
                                                               class="custom-control-input">
                                                        <span class="custom-control-indicator"></span>
                                                        <span class="custom-control-description">Female</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-3 text-lg-right">
                                                <label for="address" class="form-control-label">Address
                                                    *</label>
                                            </div>
                                            <div class="col-xl-6 col-lg-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-plus text-primary"></i></span>
                                                    <input type="text" placeholder=" "  id="address" name="address1"  class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-3 text-lg-right">
                                                <label for="city" class="form-control-label">City
                                                    *</label>
                                            </div>
                                            <div class="col-xl-6 col-lg-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-plus text-primary"></i></span>
                                                    <input type="text" placeholder=" " name="city" id="city"
                                                           class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-3 text-lg-right">
                                                <label for="pincode" class="form-control-label">Pincode
                                                    *</label>
                                            </div>
                                            <div class="col-xl-6 col-lg-8">
                                                <div class="input-group">
                                                    <span class="input-group-addon"><i class="fa fa-plus text-primary"></i></span>
                                                    <input type="text" placeholder=" " name="pincode" id="pincode"
                                                           class="form-control">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-xl-6 col-lg-8 add_user_checkbox_error push-lg-3">
                                                <div>
                                                    <label class="custom-control custom-checkbox">
                                                        <input id="checkbox1" type="checkbox" name="check_active"
                                                               class="custom-control-input">
                                                        <span class="custom-control-indicator"></span>
                                                        <span class="custom-control-description">Activate your account</span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <div class="col-lg-9 push-lg-3">
                                                <button class="btn btn-primary" type="submit">
                                                    <i class="fa fa-user"></i>
                                                    Add User
                                                </button>
                                                <button class="btn btn-warning" type="reset" id="clear">
                                                    <i class="fa fa-refresh"></i>
                                                    Reset
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                            </div>
 <%@ include file="common/footer.jsp" %>