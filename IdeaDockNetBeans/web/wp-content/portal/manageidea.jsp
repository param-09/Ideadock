<%@ include file="common/header.jsp" %>
<%@ include file="common/sidebar.jsp" %>
<%@ page
	import="javax.servlet.http.*, com.modal.Useridea,com.modal.AddComment,com.dao.Dao,com.modal.Users, java.util.Iterator,java.util.List"%>
 <%
    	 List<Useridea> idea =(List<Useridea>)session.getAttribute("idea"); 	
 		List<AddComment> comment =(List<AddComment>)session.getAttribute("comment"); 	
 		Dao dao = new Dao();
 %>
 
 
 
 
 <div id="content" class="bg-container">
                <header class="head">
                    <div class="main-bar row">
                        <div class="col-lg-6 col-md-4 col-sm-4">
                            <h4 class="nav_top_align">
                            <i class="fa fa-th"></i>
                            User Idea
                        </h4>
                        </div>
                        <div class="col-lg-6 col-md-8 col-sm-8">
                            <ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
                                <li class="breadcrumb-item">
                                    <a href="">
                                        <i class="fa fa-home" data-pack="default" data-tags=""></i> Dashboard
                                    </a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="#">Idea</a>
                                </li>
                                <li class="breadcrumb-item active">Idea Table</li>
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
                                        <i class="fa fa-table"></i> Idea Table
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
                                                    <th>Idea Id</th>
                                                    <th>User Id</th>
                                                    <th>Title</th>
                                                    <th>Field</th>
                                                    <th>Description</th>
                                                    <th>Technical Description</th>
                                                    <th>Cost</th>
                                                   
                                                </tr>
                                            </thead>
                                                <tbody>
                                                 <%
				if (!idea.isEmpty() && idea != null) {
					Iterator<Useridea> it = idea.iterator();
					Useridea roleObj = null;
					while (it.hasNext()) {
						roleObj = (Useridea) it.next();
						

			%>
                                                     <tr>
                                                       <td> <%=roleObj.getId()%></td>
                                                       <td><%=roleObj.getUser_id()%> </td>
                                                       <td><%=roleObj.getTitle()%> </td>
                                                       <td><%=roleObj.getField()%> </td>
                                                       <td><%=roleObj.getDescription()%> </td>
                                                       <td><%=roleObj.getTechdescription()%> </td>
                                                       <td><%=roleObj.getCost()%> </td>
                                                     <%--  <td> <a href="<%=request.getContextPath()%>/Controller?actioncode=deleterole&role_id=<%=roleObj.getRole_id()%>" class="btn btn-danger">Delete</a>
                                                      	<a href="<%=request.getContextPath()%>/Controller?actioncode=updaterole&role_id=<%=roleObj.getRole_id()%>" class="btn btn-success">Update</a>
                                                      </td> --%>
                                                     
                                                     </tr>
                                                     <%
}}%>
    
                                                </tbody>
                                        </table>
                                    </div>
                                </div>
 
 			 <%@ include file="common/footer.jsp" %>