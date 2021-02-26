<%@include file="common/header.jsp" %>
<%@include file="common/sidebar.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page
    import="javax.servlet.http.*, com.modal.Contact, java.util.Iterator,java.util.List"%>
    <%            List<Contact> cont = (List<Contact>) session.getAttribute("cont");
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
                                            <th>Contact Id</th>
                                            <th>User Name</th>
                                            <th>User Email</th>
                                            <th>Message</th>
                                            <th>Status</th>
                                            <th>Action</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            if (!cont.isEmpty() && cont != null) {
                                                Iterator<Contact> it = cont.iterator();
                                                Contact contObj = null;
                                                while (it.hasNext()) {
                                                    contObj = (Contact) it.next();
                                        %>
                                        <tr>

                                            <td> <%=contObj.getCid()%></td>
                                            <td><%=contObj.getName()%> </td>
                                            <td><%=contObj.getEmail()%> </td>
                                            <td><%=contObj.getMes()%> </td>
                                            <td id="status"><%
                                                if (contObj.getStatus() == 0) {
                                                    out.print("Not Resolved");
                                                }
                                                %> </td>
                                            <td id="acceptButton"><a class="btn btn-danger" onclick="return delete1(<%=contObj.getCid()%>)">Delete</a></td>

                                        </tr>
                                        <%                                                }
                                            }%>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="common/footer.jsp" %>
        <script>

            function delete1(id) {
                alert(id);
                $.ajax({
                    type: "POST",
                    url: "<%=request.getContextPath()%>/Controller?actioncode=deletecontact",
                    data: {
                        id: id
                    },
                    success: function (msg) {
                        alert(msg);
                        if (msg == 1) {
                            $("#acceptButton").html("");
                            $("#statusAc").html("Deleted");
                            $("#status").text("Resolved");
                        }
                    },
                    error: function (msg) {
                        console.log();
                    }
                });
                return false;
            }
        </script>