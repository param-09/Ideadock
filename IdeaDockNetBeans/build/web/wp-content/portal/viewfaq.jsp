<%@include file="common/header.jsp" %>
<%@include file="common/sidebar.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page
	import="javax.servlet.http.*, com.modal.Faq, java.util.Iterator,java.util.List"%>
    	<%
    	 List<Faq> faqs =(List<Faq>)session.getAttribute("faqs"); 	
%>

 
 <div id="content" class="bg-container">
                <header class="head">
                    <div class="main-bar row">
                        <div class="col-lg-6 col-md-4 col-sm-4">
                            <h4 class="nav_top_align">
                            <i class="fa fa-th"></i>
                            FAQs Tables
                        </h4>
                        </div>
                        <div class="col-lg-6 col-md-8 col-sm-8">
                            <ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
                                <li class="breadcrumb-item">
                                    <a href="index.html">
                                        <i class="fa fa-home" data-pack="default" data-tags=""></i> Dashboard
                                    </a>
                                </li>
                                <li class="breadcrumb-item">
                                    <a href="#">Tables</a>
                                </li>
                                <li class="breadcrumb-item active">FAQs Tables</li>
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
                                        <i class="fa fa-table"></i> Query Table
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
                                                    <th>Faq_Id</th>
                                                    <th>Question</th>
                                                    <th>Answer</th>
                                                    <th>Button</th>
                                                   
                                                </tr>
                                            </thead>
                                                <tbody>
                                                 <%
				if (!faqs.isEmpty() && faqs != null) {
					Iterator<Faq> it = faqs.iterator();
					Faq faqObj = null;
					while (it.hasNext()) {
						faqObj = (Faq) it.next();
			%>
                                                     <tr>
                                                     
                                                       <td> <%=faqObj.getFaq_id()%></td>
                                                       <td><%=faqObj.getFaq_que()%> </td>
                                                       <td><%=faqObj.getFaq_ans()%> </td>
                                                       <td> <a href="<%=request.getContextPath()%>/Controller?actioncode=deletefaq&user_id=<%=faqObj.getFaq_id()%>" class="btn btn-danger"><i class="fa fa-trash-o"></i>Delete</a></td>
                                                     
                                                     </tr>
                                                     <%
}}%>
    
                                                </tbody>
                                        </table>
                                    </div>
                                </div>
                                </div>
                                </div>
                                </div>
                                </div>
                                <%@include file="common/footer.jsp" %>
