<%@page import="java.util.Iterator"%>
<%@page import="com.modal.Role"%>
<%@page import="java.util.List"%>
<%@include file="common/header.jsp" %>
<%@include file="common/sidebar.jsp" %>
<% List<Role> roles=(List<Role>)session.getAttribute("roles"); %>
<% 
int role_id=0;
String role_type =null;
%>
<%
if (!roles.isEmpty() && roles != null) {
	Iterator<Role> it = roles.iterator();
	Role roleObj = null;
	while (it.hasNext()) {
		roleObj = (Role) it.next();
		role_id=roleObj.getRole_id();
		role_type=roleObj.getRole_type();
	}
}
%>

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
  <form action="<%=request.getContextPath()%>/Controller" method="post" class="form-horizontal" id="popup-validation">
                                            <input type="hidden" name="actioncode" value="updateroledata">
                                            <input type="hidden" name="role_id" value="<%=role_id%>">
                                            <div class="form-group row">
                                                <div class="col-xl-4 text-xl-right">
                                                    <label for="req" class="form-control-label">Role NAME *</label>
                                                </div>
                                                <div class="col-xl-4">
                                                    <input type="text" class="validate[required] form-control" value="<%=role_type%>" name="role_type" id="req">
                                                </div>
                                            </div>
                                           
                                            <div class="form-actions form-group row">
                                                <div class="col-xl-4 push-xl-4">
                                                    <input type="submit" value="Update" class="btn btn-primary"></div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                  </div>
 	     </div>
 	     </div>
 <%@include file="common/footer.jsp" %>
 <%
 try{
	 String msg=request.getParameter("msg");
	 if(msg.equals("success")){
		 %>
		 <script type="text/javascript">
		 toastr["success"]("successfully data inserted","updated");
		 </script>
	 <%}
	 else{
		 %>
		 <script type="text/javascript">
		  toastr["error"]("successfully data not inserted","not updated");
		 </script>
	<%}}catch (Exception e){
	 e.printStackTrace();
	 } %>
