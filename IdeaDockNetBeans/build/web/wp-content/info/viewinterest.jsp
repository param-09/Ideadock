<%@page import="com.modal.InterestArea"%>
<%@ include file="common/header.jsp" %>  
<%@ page
    import="javax.servlet.http.*, com.modal.InterestArea, java.util.Iterator,java.util.List"%>
    <%
        List<InterestArea> area = (List<InterestArea>) session.getAttribute("area");
    %>   
    <!-- START - Inner Head -->
    <div class="parallax inner-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <i class="fa fa-shopping-cart"></i>
                    <h4>Area Of  <span>Interests</span></h4>
                    <ol class="breadcrumb">
                        <li><a href="<%=request.getContextPath()%>/Controller?actioncode=viewallidea">home</a></li>
                        <li class="active">View Interests</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <%
            if (!area.isEmpty() && area != null) {
                Iterator<InterestArea> it = area.iterator();
                InterestArea ideaObj = null;
                while (it.hasNext()) {
                    ideaObj = (InterestArea) it.next();
                    int i = 1;
        %>
        <form action="<%-- <%=request.getContextPath()%>/Controller --%>" method ="post" id="addinterest" class="interest-form">
            <input type="hidden" name="actioncode" value="addinterest"/>
            <input type="hidden" name="actioncode" value="addinterest"/>
            <input type="hidden" value=<%=user_id%> name="user_id" />
            <div class="form-group col-sm-6">
                <label>Interests Topic</label>
                <input type="text" class="form-control" id="topic" name="topic" placeholder="please enter Interest Title/topic" value=<%=ideaObj.getTopic()%> required="required">
            </div>
            <div class="form-group col-sm-6">
                <label>Amount</label>
                <input type="text" class="form-control" id="amount" name="amount" placeholder="amount you want to Invest" value = <%=ideaObj.getAmount()%> required="required">
            </div>
            <label>Description</label>
            <input type="text" class="form-control" rows="7" placeholder="Description about this interest" value=<%=ideaObj.getDescription()%>></textarea>	
            <br><br>
            <button type="submit" class="btn-e btn-e-primary">Submit</button>
        </form>
        <%}
    }else{
        %><h2 class="text-center">You didn't added a interest</h2><%
    }%>
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
                topic: "required",
                description: "required",
                amount: {
                    required: true,
                    regexp: /[0-9]/
                }
            },
            messages: {
                topic: "Please enter topic of Interest",
                description: "Please enter Some description",
                amount: {
                    required: "please enter Amount",
                    regexp: "mobile no contain only numbers"
                }
            }
        });
    </script>    