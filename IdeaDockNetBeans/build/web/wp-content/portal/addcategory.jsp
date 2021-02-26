<%@ include file="common/header.jsp" %>
<%@ include file="common/sidebar.jsp" %>
<div id="content" class="bg-container">
                <header class="head">
                    <div class="main-bar row">
                        <div class="col-sm-5 col-lg-6">
                            <h4 class="nav_top_align">
                                <i class="fa fa-pencil"></i>
                                Form Validations
                            </h4>
                        </div>
                        <div class="col-sm-7 col-lg-6">
                            <ol  class="breadcrumb float-xs-right nav_breadcrumb_top_align">
                                <li class="breadcrumb-item">
                                    <a href="index.html">
                                        <i class="fa fa-home" data-pack="default" data-tags=""></i>
                                        Dashboard
                                    </a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="#">Forms</a>
                                </li>
                                <li class="active breadcrumb-item">Form Validations</li>
                            </ol>
                        </div>
                    </div>
                </header>
                <div class="outer">
                    <div class="inner bg-container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card m-t-35">
                                    <div class="card-header bg-white">
                                        <i class="fa fa-file-text-o"></i>
                                        Popup Validation
                                    </div>
                                    <div class="card-block m-t-35">
                                        <form action="<%=request.getContextPath()%>/Controller" class="form-horizontal" id="popup-validation" method="post">
                                            <input type="hidden" value="addcategory" name="actioncode" />
                                            <div class="form-group row">
                                                <div class="col-xl-4 text-xl-right">
                                                    <label for="req" class="form-control-label">Name *</label>
                                                </div>
                                                <div class="col-xl-4">
                                                    <input type="text" class="validate[required] form-control" name="category_name" id="category_name">
                                                </div>
                                            </div>
                                            
                                            <div class="form-actions form-group row">
                                                <div class="col-xl-4 push-xl-4">
                                                    <input type="submit" value="Submit" class="btn btn-primary"></div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                       </div>
                            <!-- /.col-lg-12 -->
                        </div>
 <%@ include file="common/footer.jsp" %>
 <% 
 try{
	 String msg=request.getParameter("msg");
	 if(msg.equals("sucess")){
		 %>
		 <script type="text/javascript">
		toastr["success"]("sucessfully data inserted","inserted");
		 </script>
		 <%}
	 else {%>
	 <script type="text/javascript">
		toastr["error"]("sucessfully not inserted"," not inserted");
		 </script>
	 <% }
 }
 catch(Exception e){
	 e.printStackTrace();
	 }
 %>