<%@ include file="common/header.jsp" %>

<!-- START - Inner Head -->
<div class="parallax inner-head">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <i class="fa fa-question"></i>
                <h4>New Idea</h4>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a></li>
                    <li class="active">add ideas</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!-- END - Inner Head -->
<fieldset class="container myaddideaform">
    <legend class="pull-left width-full">Enter New Idea Here</legend>
    <!-- begin row -->
    <form action="<%=request.getContextPath()%>/Controller" method="post" id="addidea">
        <input type="hidden" value="insertidea" name="actioncode" />
        <% out.println(user_id);%>
        <input type="hidden" value=<%=user_id%> name="user_id" />

        <!-- begin row -->
        <div class="row">
            <!-- begin col-4 -->
            <div class="col-md-4">
                <div class="form-group block1">
                    <label>Title</label>
                    <input type="text" name="title" id="title" placeholder="Title" class="form-control" data-parsley-group="wizard-step-1" required />
                </div>
            </div>
            <!-- end col-4 -->
            <!-- begin col-4 -->
            <div class="col-md-4">
                <div class="form-group">
                    <label>Field of Working</label>
                    <input type="text" name="field" placeholder="Ex.Civil , Mechanical etc" class="form-control" data-parsley-group="wizard-step-1" required />
                </div>
            </div>
            <!-- end col-4 -->
            <!-- begin col-4 -->
            <div class="col-md-4">
                <div class="form-group">
                    <label>Estimated cost</label>
                    <input type="number" name="cost" placeholder="in Rupee" class="form-control" data-parsley-group="wizard-step-1" required />
                </div>
            </div>
            <!-- end col-4 -->
        </div>
        <!-- end row -->
        <div class="row">
            <!-- begin col-12 -->
            <div class="col-md-12">

                <h4 class="panel-title">Enter Description</h4>
                <div class="panel-body">
                    <textarea class="textarea form-control" name="description" id="wysihtml5" placeholder="Enter text ..." rows="12"></textarea>
                </div>
                <h4 class="panel-title">Enter Technical Details & requirement</h4>
                <div class="panel-body">
                    <textarea class="textarea form-control" name="techdescription" id="wysihtml5" placeholder="Enter Details ..." rows="12"></textarea>
                </div>
                <button type="submit" class="btn-e btn-e-light-green btn-bordered pull-right">Submit</button>

            </div>
        </div>
    </form>
</fieldset>
<div class="clearfix"></div>
<%@ include file="common/footer.jsp" %>
<script src="js/validation/js/jquery.js"></script>
<script src="js/validation/js/jquery.validate.js"></script>
<script src="js/validation/js/jquery.validate.min.js"></script> 
<script src="js/validation/js/setting.js"></script> 

<script type="text/javascript">
    $("#addidea").validate({
        rules: {
            title: "required",
            field: "required",
            description: "required",
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
</script>
