<%-- 
    Document   : onlyideadetail
    Created on : Mar 23, 2018, 6:06:56 PM
    Author     : ARPIT-PATEL
--%>
 <%@ include file="common/header.jsp" %>  
 <%@ page
	import="javax.servlet.http.*,java.sql.*, com.modal.Useridea,com.modal.AddComment,com.modal.Users,com.dao.Dao, java.util.Iterator,java.util.List"%>
    	<%
    	 List<Useridea> idea =(List<Useridea>)session.getAttribute("idea"); 	
    	List<AddComment> comment =(List<AddComment>)session.getAttribute("comment"); 
    	Dao dao = new Dao();
%>   
     <%
     
     String DBURL="jdbc:mysql://localhost:3306/project";
     	Connection conn;
    	 Class.forName("com.mysql.jdbc.Driver");//Register Driver
     	conn=DriverManager.getConnection(DBURL,"root","");
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
						int i =1;
				%>
            		<h4>  <%=ideaObj.getTitle()%></h4>
                    <!-- Start product description -->
                       <!-- Start tabber -->
                        <div class="tab-default">
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#desc" role="tab" data-toggle="tab"><i class="fa fa-file-text"></i> Description</a></li>
                                <li role="presentation"><a href="#detail" role="tab" data-toggle="tab"><i class="fa fa-briefcase"></i> Detail</a></li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="desc">
                                    <h6>Description</h6>
                                    <p>
                                          <%=ideaObj.getDescription()%>
                                    </p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="detail">
                                    <h6>Technical detail</h6>
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
                                        
                                    </table>
                                     <h6>Techical Description</h6>
                                    <p>
                                         <%=ideaObj.getTechdescription()%>
                                    </p>
                                </div>
                                
                            </div>
                        </div>
                        <!-- End tabber -->

                                                                       <%
}}%>
        
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
 
        
