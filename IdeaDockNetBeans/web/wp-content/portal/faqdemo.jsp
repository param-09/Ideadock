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
                            Data Tables
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
                                <li class="breadcrumb-item active">Data Tables</li>
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
                                        <i class="fa fa-table"></i> Datatable with Table Tools
                                    </div>
                                    <div class="card-block p-t-25">
                                        <div class="">
                                            <div class="pull-sm-right">
                                                <div class="tools pull-sm-right"></div>
                                            </div>
                                        </div>
                                    
										<div class="col-xl-1 col-lg-6 col-md-4 col-sm-6 col-xs-6 m-t-15">
                                                       <button class="btn btn-outline-warning">Edit</button>
                                        </div>
                                        <div class="col-xl-1 col-lg-6 col-md-4 col-sm-6 col-xs-6 m-t-15">
                                                       <button class="btn btn-outline-warning">Delete</button>
                                        </div>
												
                                </div>
                                </div>
                                </div>
                                </div>
                                </div>
                                </div>
                                <%@include file="common/footer.jsp" %>
