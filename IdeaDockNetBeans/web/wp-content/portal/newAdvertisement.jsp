<%@include file="common/header.jsp" %>
<%@include file="common/sidebar.jsp" %>
<div id="content" class="bg-container">
                <header class="head">
                    <div class="main-bar row">
                        <div class="col-sm-5 col-lg-6">
                            <h4 class="nav_top_align">
                                <i class="fa fa-audio-description"></i>
                                Add advertisement
                            </h4>
                        </div>
                        
                    </div>
                </header>
                <div class="outer">
                    <div class="inner bg-container">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    
                                    <div class="card-block m-t-35">
                                        <form enctype="multipart/form-data" action="<%=request.getContextPath()%>/Controller" method="post" class="form-horizontal  login_validator" id="form_block_validator">
                                        <input type="hidden" value="addAdvertisement" name="actioncode">
                                            <div class="form-group row">
                                                <div class="col-lg-4  text-lg-right">
                                                    <label for="required2" class="form-control-label">Title *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="required2" name="title" class="form-control" required>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group row">
                                                <div class="col-lg-4  text-lg-right">
                                                    <label for="required2" class="form-control-label" >Link *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="text" id="required2" name="link" class="form-control" required>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group row">
                                                <div class="col-lg-4  text-lg-right">
                                                    <label for="required2" class="form-control-label">Image *</label>
                                                </div>
                                                <div class="col-lg-4">
                                                    <input type="file" id="required2" name="photo" class="form-control" required>
                                                </div>
                                            </div>
                                           
                                            <div class="form-actions form-group row">
                                                <div class="col-lg-4 push-lg-4">
                                                    <input type="submit" value="Add" class="btn btn-primary">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                        
                         <%@include file="common/footer.jsp" %>
                        
                        <script type="text/javascript">
                         <%
                         try{
                        	String msg = request.getParameter("msg");
                            if (msg.equals("success")){
                            	
                        %>
                        
                        	
                        	toastr["success"]("Advertisement successfully inserted","Done");

                        <%	
                            }
                            else{
                            	
                            	//toastr["error"]("Photo successfully inserted","Done");
                                
                            }
                         }catch(Exception e){}
                        
                        
                        %>
                        </script>
                       
                       
                        
                        
                        
                        
