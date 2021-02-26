<%@ include file="common/header.jsp" %>
<%@ include file="common/sidebar.jsp" %>
<div id="content" class="bg-container">
                <header class="head">
                    <div class="main-bar row">
                        <div class="col-sm-5 col-lg-6">
                            <h4 class="nav_top_align">
                                <i class="fa fa-pencil"></i>
								gallery                                
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
                                <li class="active breadcrumb-item">Image Upload</li>
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
                                        Add Image
                                    </div>
                                    <div class="card-block m-t-35">
                                        <form enctype="multipart/form-data" action="<%=request.getContextPath()%>/Controller" class="form-horizontal" id="popup-validation" method="post">
                                            <input type="hidden" value="insertphoto" name="actioncode" />
                                            <div class="form-group row">
                                                <div class="col-xl-4 text-xl-right">
                                                    <label for="req" class="form-control-label">Title</label>
                                                </div>
                                                <div class="col-xl-4">
                                                    <input type="text" class="validate[required] form-control" name="title" id="title">
                                                </div>
                                            </div>
                                               <div class="form-group row">
                                                <div class="col-xl-4 text-xl-right">
                                                    <label for="req" class="form-control-label">Photo </label>
                                                </div>
                                                <div class="col-xl-4">
                                                    <input type="file" class="validate[required] form-control" name="photo" id="photo">
                                                </div>
                                            </div>
                                            <div class="form-actions form-group row">
                                                <div class="col-xl-4 push-xl-4">
                                                    <input type="submit" value="Add" class="btn btn-primary"></div>
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