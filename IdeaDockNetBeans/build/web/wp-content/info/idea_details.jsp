<%@ include file="common/header.jsp" %>  
<%@page import="com.modal.ProfilePhoto"%>

<%@ page
    import="javax.servlet.http.*,java.sql.*, com.modal.Useridea,com.modal.AddComment,com.modal.Users,com.dao.Dao, java.util.Iterator,java.util.List"%>
    <%
        List<Useridea> idea = (List<Useridea>) session.getAttribute("idea");
        List<AddComment> comment = (List<AddComment>) session.getAttribute("comment");
        Dao dao = new Dao();
    %>   
    <%
        String DBURL = "jdbc:mysql://localhost:3306/project";
        Connection conn;
        Class.forName("com.mysql.jdbc.Driver");//Register Driver
        conn = DriverManager.getConnection(DBURL, "root", "");
        PreparedStatement pst;
        ResultSet rs;


    %>



    <!-- START - Inner Head -->
    <div class="parallax inner-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <i class="fa fa-shopping-cart"></i>
                    <h4>Idea <span>detail</span></h4>
                    <ol class="breadcrumb">
                        <li><a href="<%=request.getContextPath()%>/Controller?actioncode=viewallidea">Home</a></li>
                        <li class="active">idea details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- END - Inner Head -->

    <!-- START - Contain Wrapp -->
    <div class="contain-wrapp">
        <div class="container">
            <%                    
                if (!idea.isEmpty() && idea != null) {
                    Iterator<Useridea> it = idea.iterator();
                    Useridea ideaObj = null;
                    while (it.hasNext()) {
                        ideaObj = (Useridea) it.next();
                        int i = 1;
            %>
            <h4>  <%=ideaObj.getTitle()%></h4>
            <input type="hidden" id="idea_id" value="<%=ideaObj.getId()%>"/>
            <!-- Start product description -->
            <!-- Start tabber -->
            <div class="tab-default">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#desc" role="tab" data-toggle="tab"><i class="fa fa-file-text"></i> Description</a></li>
                    <li role="presentation"><a href="#detail" role="tab" data-toggle="tab"><i class="fa fa-briefcase"></i> Detail</a></li>
                    <li role="presentation"><a href="#review" role="tab" data-toggle="tab"><i class="fa fa-comments"></i> Reviews</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="desc">
                        <% if (ideaObj.getUser_id() == user_id) {%>
                        <button type="button" class="btn-e btn-e-primary btn-bordered" id="descsave" style="display: none"><i class="fa fa-cloud">Save</i> </button>

                        <button type="button" class="btn-e btn-e-teal btn-bordered" id="descedit"><i class="fa fa-pencil-square-o"></i> Edit </button>

                        <h6>Description</h6>
                        <p id="descp">
                            <%=ideaObj.getDescription()%>
                        </p>
                        <div class="panel-body" style="display: none" id="desctab">
                            <textarea class="textarea form-control" name="description" id="description" placeholder="Enter text ..." required="">
                                <%=ideaObj.getDescription()%>
                            </textarea>
                        </div>
                        <%} else {
                        %><h6>Description</h6>
                        <p id="descp">
                            <%=ideaObj.getDescription()%>
                        </p>
                        <%
                            }%>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="detail">
                        <h6>Technical detail</h6>
                        <% if (ideaObj.getUser_id() == user_id) {%>
                        <button type="button" class="btn-e btn-e-teal btn-bordered" id="ideaedit"><i class="fa fa-pencil-square-o"></i> Edit </button>
                        <%}%>
                        <div class="ideadetails">
                            <table class="parameter-product">
                                <tr class="active">
                                    <td><strong>user_id</strong></td>
                                    <td>  <%=ideaObj.getUser_id()%></td>
                                </tr>
                                <tr class="active">
                                    <td><strong>Field</strong></td>
                                    <td>  <%=ideaObj.getField()%></td>
                                </tr>
                                <tr class="active">
                                    <td><strong>Estimated Cost</strong></td>
                                    <td>  <%=ideaObj.getCost()%></td>
                                </tr>
                                 <tr class="active">
                                    <td><strong>Idea created</strong></td>
                                    <td>  <%=ideaObj.getCreated_date()%></td>
                                </tr>
                                 <tr class="active">
                                    <td><strong>Last Updated</strong></td>
                                    <td>  <%=ideaObj.getUpdated_date()%></td>
                                </tr>

                            </table>
                            <h6>Techical Description</h6>
                            <p>
                                <%=ideaObj.getTechdescription()%>
                            </p>
                        </div>
                        <form action="<%=request.getContextPath()%>/Controller" method="post" style="display: none" id="editidea">
                            <h4>Edit Details:</h4>

                            <input type="hidden" value="updateideaDetails" name="actioncode" />
                            <input type="hidden" value=<%=ideaObj.getId()%> name="idea_id" />

                            <!-- begin row -->
                            <div class="row">
                                <!-- begin col-4 -->
                                <div class="col-md-4">
                                    <div class="form-group block1">
                                        <label>Title</label>
                                        <input type="text" name="title" id="title" placeholder="Title" class="form-control" data-parsley-group="wizard-step-1" value="<%=ideaObj.getTitle()%>" required />
                                    </div>
                                </div>
                                <!-- end col-4 -->
                                <!-- begin col-4 -->
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Field of Working</label>
                                        <input type="text" name="field" placeholder="Ex.Civil , Mechanical etc" class="form-control" value=<%=ideaObj.getField()%> data-parsley-group="wizard-step-1" required />
                                    </div>
                                </div>
                                <!-- end col-4 -->
                                <!-- begin col-4 -->
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Estimated cost</label>
                                        <input type="number" name="cost" placeholder="in Rupee" class="form-control" data-parsley-group="wizard-step-1" value="<%=ideaObj.getCost()%>" required />
                                    </div>
                                </div>
                                <!-- end col-4 -->
                            </div>
                            <!-- end row -->
                            <div class="row">
                                <!-- begin col-12 -->
                                <div class="col-md-12">
                                    <h4 class="panel-title">Enter Technical Details & requirement</h4>
                                    <div class="panel-body">
                                        <textarea class="textarea form-control" name="techdescription" id="wysihtml5" placeholder="Enter Details ..." rows="12">
                                            <%=ideaObj.getTechdescription()%>
                                        </textarea>
                                    </div>
                                    <button type="submit" class="btn-e btn-e-primary margin-top-10 pull-right">Submit</button>

                                </div>
                            </div>
                        </form>
                    </div>
                    <div role="tabpanel" class="tab-pane" id="review">
                        <!-- START - Leave Comments -->
                        <%
                            if (user_type.equals("users") && ideaObj.getUser_id() == user_id) {

                        %>
                        <h5>Make Proposal to Investor</h5>
                        <%} else if(user_type.equals("investor")) { %>
                        <h5>Make Proposal to Ideaholder</h5>
                        <%} %>
                        <%if (!user_type.equals("users") || ideaObj.getUser_id() == user_id) {%>
                        <form class="row" method="post" action="<%=request.getContextPath()%>/Controller" id="proposal_form">
                            <input type="hidden" name="actioncode" value="makeproposal" >
                            <input type="hidden" name="idea_id" value=<%=ideaObj.getId()%>>
                            <input type="hidden" name="from_id" value=<%=user_id%>>
                            <div class="col-md-4 margin-bottom-30">
                                <input class="form-control" type="text" name="name" id="name" placeholder="Enter your full name" />
                            </div>
                            <div class="col-md-4 margin-bottom-30">
                                <input class="form-control" type="email" name="email" id="email" placeholder="Enter your active e-mail" />
                            </div>
                            <div class="col-md-4 margin-bottom-30">
                                <input class="form-control" type="number" name="to_id" id="to_id" placeholder="Enter id of investor / User" />
                            </div>
                            <div class="col-md-12 margin-bottom-30">
                                <textarea class="form-control" rows="9" name="message" id="message" placeholder="Your comment here"></textarea>
                            </div>

                            <div class="col-md-12">
                                <input type="submit"  class="btn-e btn-rounded btn-e-primary" value="Make proposal"/>
                            </div>
                        </form>
                        <%} %>
                        <!-- END - Leave Comments -->

                        <!-- START - Comments -->
                        <%
                            if (!comment.isEmpty() && comment != null) {
                                Iterator<AddComment> it1 = comment.iterator();
                                AddComment comObj = null;

                                while (it1.hasNext()) {
                                    comObj = (AddComment) it1.next();
                                    if (comObj.getIdea_id() == ideaObj.getId()) {
                                        List<Users> user = dao.viewuser(comObj.getUser_id());
                                        Iterator<Users> it2 = user.iterator();
                                        Users userObj = (Users) it2.next();
                                        if (userObj.getType().equals("investor")) {
                                            List<ProfilePhoto> pic = dao.getProfilepic(comObj.getUser_id());
                                            String ppic = "";
                                            if (!pic.isEmpty()) {
                                                Iterator itr1 = pic.iterator();
                                                ProfilePhoto pobj = null;
                                                pobj = (ProfilePhoto) itr1.next();
                                                ppic = pobj.getPath();
                                            }
                        %>
                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="profilepic/<%=ppic%>" alt="" height="112" width="112" />
                                </a>
                            </div>
                            <div class="media-body">
                                <h6 class="media-heading"><a href="<%=request.getContextPath()%>/Controller?actioncode=investor_detail&investor_id=<%=comObj.getUser_id()%>"><%=comObj.getUser_name()%></a> 
                                </h6>

                                <p>
                                    <%=comObj.getMessage()%>
                                </p>
                                <p class="reply"><a href="#"><i class="icon-link"></i> Reply</a></p>
                            </div>
                        </div>
                        <%}
                                    }
                                }
                            } %> 

                        <!--                                    <div class="media">
                                                                <div class="media-left">
                                                                    <a href="#">
                                                                        <img class="media-object" src="img/testimonials/img04.jpg" alt="" />
                                                                    </a>
                                                                </div>
                                                                <div class="media-body">
                                                                    <h6 class="media-heading"><a href="#">Jane Roe</a></h6>
                                                                    <p>
                                                                        Ea meis menandri mei, ex nec malis legendos, quot inani ancillae cu sed. Suas scaevola ius ex aeque.
                                                                    </p>
                                                                    <p class="reply"><a href="#"><i class="icon-link"></i> Reply</a></p>
                                                                </div>
                                                            </div>-->
                        <!-- END - Comments -->
                    </div>
                </div>
            </div>
            <!-- End tabber -->

            <%
                    }
                }%>

        </div>
    </div>
</div>
<!-- End gray contain wrapp -->

<div class="clearfix"></div>
<%@ include file="common/footer.jsp" %>
<script src="js/validation/js/jquery.js"></script>
<script src="js/validation/js/jquery.validate.js"></script>
<script src="js/validation/js/jquery.validate.min.js"></script> 
<script src="js/validation/js/setting.js"></script> 

<<script type="text/javascript">

    $("#proposal_form").validate({
        rules: {
            name: "required",
            to_id: "required",
            email: {
                required: true,
                email: true
            },
            message: "required"
        },
        messages: {
            name: "Please enter your name",
            to_id: "Please enter investor/customer id",
            email: "Please enter a valid email address",
            message: "please enter Message"
        }
    });
    $("#descedit").click(function () {
        $("#desctab").toggle();
        $("#descp").toggle();
        $("#descsave").toggle();

    });
    $("#descsave").click(function () {
        var id = $("#idea_id").val();
        var desc = $("#description").val();
        //toastr.error('Discription must not null', 'Please Enter Some description', {timeOut: 10000})
        var re = /^\s+$/;
        if (desc.match(re)) {
            toastr.error('Discription must not null', 'Please Enter Some description', {timeOut: 10000})
        } else {
            $.ajax({
                type: "POST",
                url: "<%=request.getContextPath()%>/Controller?actioncode=editIdeaDesc",
                data: {
                    id: id,
                    desc: desc
                },
                success: function (msg) {
                    console.log();
                    toastr.success('Discription updated Successfully', 'Done!', {timeOut: 10000})

                    $("#description").val(desc);
                    $("#desctab").toggle();
                    $("#descp").text(desc);
                    $("#descp").toggle();
                    $("#descsave").toggle();
                },
                error: function (msg) {
                    console.log();
                }
            });
        }

    });
    $("#editidea").validate({
        rules: {
            title: "required",
            field: "required",
            techdescription: "required",
            cost: {
                required: true,
                regexp: /[0-9]/
            }
        },
        messages: {
            title: "Please enter title",
            field: "Please enter field",
            cost: {
                required: "please enter cost",
                regexp: "Cost should have only money"
            }
        }
    });
    $("#ideaedit").click(function () {
        $("#editidea").toggle();
    });

</script>
<%
    String msg = "";

    try {
        msg = request.getParameter("msg");
        if (msg.equals("1")) {
%>
<script type="text/javascript">
    toastr.error('Error in updating Details', 'Please try again!!', {timeOut: 10000})
</script>
<%} else if (msg.equals("0")) {%>
<script type="text/javascript">
    toastr.success('Details updated', "Done", {timeOut: 10000})
</script>
<%} else if (msg.equals("7")) {%>
<script type="text/javascript">
    toastr.error('Error in Making proposal', "Error", {timeOut: 10000})
</script>
<%}
    } catch (Exception e) {
        e.printStackTrace();
    }
%>