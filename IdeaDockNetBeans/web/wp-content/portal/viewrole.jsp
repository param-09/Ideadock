<%@include file="common/header.jsp" %>
<%@include file="common/sidebar.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page
	import="javax.servlet.http.*, com.modal.Role, java.util.Iterator,java.util.List"%>
    	<%
    	 List<Role> roles =(List<Role>)session.getAttribute("roles"); 	
%>

 
 <div id="content" class="bg-container">
                <header class="head">
                    <div class="main-bar row">
                        <div class="col-lg-6 col-md-4 col-sm-4">
                            <h4 class="nav_top_align">
                            <i class="fa fa-th"></i>
                            Roles
                            </h4>
                        </div>
                        <div class="col-lg-6 col-md-8 col-sm-8">
                            <ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
                                <li class="breadcrumb-item">
                                    <a href="index.html">
                                        <i class="fa fa-home" data-pack="default" data-tags=""></i> Dashboard
                                    </a>
                                </li>
<!--                                <li class="breadcrumb-item">
                                    <a href="#">Tables</a>
                                </li>-->
                                <li class="breadcrumb-item active">Role Table</li>
                            </ol>
                        </div>
                    </div>
                </header>
                <div class="outer">
                    <div class="inner bg-light lter bg-container">
                        <div class="row">
                            <div class="col-xs-12 data_tables">
                                <!-- BEGIN EXAMPLE1 TABLE PORTLET-->
                                <div class="card">
                                    <div class="card-header bg-white">
                                        <i class="fa fa-table"></i> Role Table
                                    </div>
                                    <div class="card-block p-t-25">
                                        <div class="">
                                            <div class="pull-sm-right">
                                                <div class="tools pull-sm-right"></div>
                                            </div>
                                        </div>
                                        <table class="table table-striped table-bordered table-hover" id="sample_1">
                                            <thead>
                                                <tr>
                                                    <th>Role Id</th>
                                                    <th>Role Type</th>
                                                    <th>ActiveFlag</th>
                                                    <th>Action</th>
                                                   
                                                </tr>
                                            </thead>
                                                <tbody>
                                                 <%
				if (!roles.isEmpty() && roles != null) {
					Iterator<Role> it = roles.iterator();
					Role roleObj = null;
					while (it.hasNext()) {
						roleObj = (Role) it.next();
						

			%>
                                                     <tr>
                                                       <td> <%=roleObj.getRole_id()%></td>
                                                       <td><%=roleObj.getRole_type()%> </td>
                                                       <td><%=roleObj.getActive_flag()%> </td>
                                                      <td> <a href="<%=request.getContextPath()%>/Controller?actioncode=deleterole&role_id=<%=roleObj.getRole_id()%>" class="btn btn-danger">Delete</a>
                                                      	<a href="<%=request.getContextPath()%>/Controller?actioncode=updaterole&role_id=<%=roleObj.getRole_id()%>" class="btn btn-success">Update</a>
                                                      </td>
                                                     
                                                     </tr>
                                                     <%
}}%>
    
                                                </tbody>
                                        </table>
                                    </div>
                                </div>
                                <%@include file="common/footer.jsp" %>
