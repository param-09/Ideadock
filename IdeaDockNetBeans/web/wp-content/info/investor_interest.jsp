 <%@page import="com.modal.InterestArea"%>
<%@ include file="common/header.jsp" %>  
        <!-- START - Inner Head -->
        <div class="parallax inner-head">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <i class="fa fa-shopping-cart"></i>
                        <h4>Area Of  <span>Interests</span></h4>
                        <ol class="breadcrumb">
                            <li><a href="<%=request.getContextPath()%>/Controller?actioncode=viewallidea">Home</a></li>
                            <li class="active">Add Interests</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!-- END - Inner Head -->
	
<div class="container">
	<h6>Entered below will be shown to other user</h6>
    <form action="<%=request.getContextPath()%>/Controller" method ="post" id="addinterest" class="interest-form">
    <input type="hidden" name="actioncode" value="addinterest"/>
          <input type="hidden" value=<%=user_id %> name="user_id" />
        <div class="form-group col-sm-6">
            <label>Interests Topic</label>
            <input type="text" class="form-control" id="topic" name="topic" placeholder="please enter Interest Title/topic" />
        </div>
        <div class="form-group col-sm-6">
            <label>Amount</label>
            <input type="text" class="form-control" id="amount" name="amount" placeholder="amount you want to Invest" />
        </div>
        <label>Description</label>
    	<textarea class="form-control" rows="7" name="description"  placeholder="Description about this interest"></textarea>	
        <br><br>
        <button type="submit" class="btn-e btn-e-primary">Submit</button>
    </form>
</div>

              <!-- End gray contain wrapp -->

        <div class="clearfix"></div>
<%@ include file="common/footer.jsp" %>
 <script src="js/validation/js/jquery.js"></script>
  <script src="js/validation/js/jquery.validate.js"></script>
 <script src="js/validation/js/jquery.validate.min.js"></script> 
  <script src="js/validation/js/setting.js"></script> 
 
 <script type="text/javascript">

 $("#addinterest").validate({
			rules: {
				topic: {
					required:true
				},
				description:{
					required:true
				},
				amount: {
					required: true,
					regexp :/^[0-9]$/
				}
			},
			messages: {
				topic: "Please enter topic of Interest",
				description: "Please enter Some description",
				amount:{
					required: "please enter Amount",
					regexp: "mobile no contain only numbers"
				}
			}
		});
	</script>        