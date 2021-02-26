<%@ include file="common/header.jsp" %>
<%@ page
    import="javax.servlet.http.*, com.modal.Users, java.util.Iterator,java.util.List"%>
    <%
        List<Users> user = (List<Users>) session.getAttribute("user");
    %>
    <!-- START - Inner Head -->
    <div class="parallax inner-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <img src="img/testimonials/img01.jpg" alt="Icon" class="img-responsive"> 

                    <h4>My Profile</h4>
                    <ol class="breadcrumb">
                        <li><a href="<%=request.getContextPath()%>/Controller?actioncode=viewallidea">Home</a></li>
                        <li class="active">profile</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- END - Inner Head -->
    <%	String atype = "";
        if (!user.isEmpty() && user != null) {
            Iterator<Users> it = user.iterator();
            Users userObj = null;
            //	while (it.hasNext()) {
            userObj = (Users) it.next();
            atype = userObj.getType();
            int i = 1;
    %>
    <div class="container ">
        <div class="form-group  has-feedback">
            <% if (atype.equals("investor")) {%>	<h4  class="col-offset-sm-6">Your Account Type : User (Investor)</h4><%} %>
            <% if (atype.equals("users")) {%>	<h4  class="col-offset-sm-6">Your Account Type : User (ideaholder)</h4><%}%>
        </div>

        <div class="row">
            <div class="col-sm-3">
                                <!--<img src="profilepic/<%=photo%>" height="470" width="640"/>-->

                <img src="<%=request.getContextPath()%>/wp-content/info/profilepic/<%=photo%>" class="img-responsive" alt="Thumbnail colored" height="200" width="200">
            </div>

        </div>

        <div class="myprofile">
            <%if (photo.equals("")) {
            %>
            <form enctype="multipart/form-data" id="profilepic" class="form-horizontal" method="post"   action="<%=request.getContextPath()%>/Controller" >
                <div class="form-group">
                    <label for="profilepic" class="col-sm-3 control-label">Profile Pic</label>
                    <div class="col-sm-8">
                        <input type="hidden" value="insertprofilepic" name="actioncode" /> 

                        <input type="hidden" value=<%=user_id%> name="user_id" /> 
                        <input type="file" class="form-control" id="profilepic" name="profilepic" required="">
                        <button type="submit" class="btn-e btn-block btn-e-primary" id="addpic" name="addpic">Upload image</button>
                    </div>
                </div>
            </form>
            <%} else {
            %>
            <form enctype="multipart/form-data" id="profilepic" class="form-horizontal" method="post"   action="<%=request.getContextPath()%>/Controller" >

                <div class="form-group">
                    <label for="profilepic" class="col-sm-3 control-label">Profile Pic</label>
                    <div class="col-sm-8">
                        <input type="hidden" value="updateprofilepic" name="actioncode" /> 
                        <input type="hidden" value=<%=user_id%> name="user_id" /> 
                        <input type="file" class="form-control" id="profilepic" name="profilepic" required="">
                        <button type="submit" class="btn-e btn-block btn-e-primary" id="addpic" name="addpic">Change image</button>
                    </div>
                </div>
            </form>
            <%}%>
            <form id="update1" class="form-horizontal" method="post"   action="<%=request.getContextPath()%>/Controller" >

                <input type="hidden" value="updateprofile" name="actioncode" /> 
                <input type="hidden" value=<%=user_id%> name="user_id" />      
                <input type="hidden" value=<%=userObj.getType()%> name="type" />      
                <div class="form-group has-feedback ">
                    <label for="inputName" class="col-sm-3 control-label">Full Name <span class="text-danger small">*</span></label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="fullname" name="fullname" placeholder="First Name" value=<%=userObj.getFullname()%> required="">
                        <i class="fa fa-pencil form-control-feedback"></i>
                    </div>
                </div>
                <div class="form-group has-feedback">
                    <label for="inputUserName" class="col-sm-3 control-label">User Name <span class="text-danger small">*</span></label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="username" name="username" placeholder="User Name" required="" disebled="" value=<%=userObj.getUsername()%>>
                        <i class="fa fa-user form-control-feedback"></i>
                    </div>
                </div>
                <div class="form-group has-feedback">
                    <label for="inputEmail" class="col-sm-3 control-label">E-mail <span class="text-danger small">*</span></label>
                    <div class="col-sm-8">
                        <input type="email" class="form-control" id="email" name="email" placeholder="E-mail" required="" value=<%=userObj.getEmail()%>>
                        <i class="fa fa-envelope form-control-feedback"></i>
                    </div>
                </div>
                <div class="form-group has-feedback">
                    <label for="inputPassword" class="col-sm-3 control-label">Password <span class="text-danger small">*</span></label>
                    <div class="col-sm-8">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Password" required="" value=<%=userObj.getPassword()%>>
                        <i class="fa fa-lock form-control-feedback"></i>
                    </div>
                </div>

                <div class="form-group has-feedback">
                    <label for="inputPassword" class="col-sm-3 control-label">Mobile <span class="text-danger small">*</span></label>
                    <div class="col-sm-8">
                        <input type="text" class="form-control" id="mobile" name="mobile" placeholder="contact no" required="" value=<%=userObj.getMobile()%>>
                        <i class="fa fa-mobile form-control-feedback"></i>
                    </div>
                </div>
                <div class="form-group  has-feedback">
                    <label for="inputPassword" class="col-sm-3 control-label">Gender</label>
                    <div class=" col-sm-2">
                        <div class="radio">
                            <div class="custom-radio">
                                <label>Male
                                    <input type="radio" name="gender" id="gender" value="male" checked>
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-offset-1 col-sm-2">
                        <div class="radio">
                            <div class="custom-radio">
                                <label>Female
                                    <input type="radio" name="gender" id="gender" value="female" >
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-8">
                        <button type="submit"  class="btn-e btn-block btn-e-primary">Update</button>
                    </div>
                </div>
            </form>
        </div>
        <%}//} %>
    </div>

    <!--   <div class="container">       
     <h2>Add Interests</h2>
            <button type="button" class="btn-e btn-e-primary" data-toggle="modal" data-target=".bs-example-modal-lg">Click to Add<button>
     </div>   --> 
    <%@ include file="common/footer.jsp" %>
    <script src="js/validation/js/jquery.js"></script>
    <script src="js/validation/js/jquery.validate.js"></script>
    <script src="js/validation/js/jquery.validate.min.js"></script> 
    <script src="js/validation/js/setting.js"></script> 

    <script type="text/javascript">

        $("#update1").validate({
            rules: {
                fullname: "required",
                gender: "required",
                username: {
                    required: true,
                    minlength: 5
                },
                password: {
                    required: true,
                    minlength: 6,
                    regexp: /^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z])$/
                },
                email: {
                    required: true,
                    email: true
                },
                mobile: {
                    required: true,
                    length: 10,
                    regexp: /[0-9]/
                }
            },
            messages: {
                fullname: "Please enter your firstname",
                gender: "Please select your gender",
                password: {
                    required: "Please provide a password",
                    minlength: "Your password must be at least 6 characters long",
                    regexp: "With 2 letters in Upper Case 1 Special Character (!@#$&*) 2 numerals (0-9) 3 letters in Lower Case"
                },
                email: "Please enter a valid email address",
                mobile: {
                    length: "Mobile No should 10 digit",
                    regexp: "mobile no contain only numbers"
                }
            }
        });
    </script>
    <%
        try {
            String msg = request.getParameter("msg");
            String p = request.getParameter("p");

            if (msg.equals("1")) {
    %>
    <script type="text/javascript">
        toastr["success"]("sucessfully image inserted", "inserted");
    </script>
    <%} else if (msg.equals("0")) {%>
    <script type="text/javascript">
        toastr["error"]("Image Size LImit reached", " not inserted");
    </script>
    <% } else {
    %>
    <script type="text/javascript">
        toastr["error"]("Error in uploading image", " not inserted");
    </script>
    <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>