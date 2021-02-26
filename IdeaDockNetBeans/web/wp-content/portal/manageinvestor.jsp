<%@ include file="common/header.jsp" %>
<%@ include file="common/sidebar.jsp" %>
<%@ page
    import="javax.servlet.http.*, com.modal.Users, java.util.Iterator,java.util.List"%>
    <%            List<Users> user = (List<Users>) session.getAttribute("user");
    %>
    <div id="content" class="bg-container">
        <header class="head">
            <div class="main-bar row">
                <div class="col-lg-6 col-md-4 col-sm-4">
                    <h4 class="nav_top_align">
                        <i class="fa fa-th"></i>
                        Investor
                    </h4>
                </div>
                <div class="col-lg-6 col-md-8 col-sm-8">
                    <ol class="breadcrumb float-xs-right nav_breadcrumb_top_align">
                        <li class="breadcrumb-item">
                            <a href="index.html">
                                <i class="fa fa-home" data-pack="default" data-tags=""></i> Index
                            </a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#">Manage Investors</a>
                        </li>
                        <li class="breadcrumb-item active">Investor</li>
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
                                <i class="fa fa-table"></i> Investor Details
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
                                            <th>User Id</th>
                                            <th>Username</th>
                                            <th>Password</th>
                                            <th>Fullname</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Gender</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            if (!user.isEmpty() && user != null) {
                                                Iterator<Users> it = user.iterator();
                                                Users roleObj = null;
                                                while (it.hasNext()) {
                                                    roleObj = (Users) it.next();


                                        %>
                                        <tr>
                                            <td><%=roleObj.getUser_id()%></td>
                                            <td><%=roleObj.getUsername()%></td>
                                            <td><%=roleObj.getPassword()%></td>
                                            <td><%=roleObj.getFullname()%></td>
                                            <td><%=roleObj.getEmail()%></td>
                                            <td><%=roleObj.getMobile()%></td>
                                            <td><%=roleObj.getGender()%></td>
                                            <td>
                                                <a href="<%=request.getContextPath()%>/Controller?actioncode=deleteinvestor&user_id=<%=roleObj.getUser_id()%>" class="btn btn-danger">Delete</a>
                                                <% if (roleObj.getActive_flag() == 0) {%>
                                                <a href="<%=request.getContextPath()%>/Controller?actioncode=blockinvestor&user_id=<%=roleObj.getUser_id()%>" class="btn btn-info"><i class="fa fa-ban"></i>Block</a>
                                                <% }
                                                        if (roleObj.getActive_flag() == 1) {%>
                                                <a href="<%=request.getContextPath()%>/Controller?actioncode=unblockinvestor&user_id=<%=roleObj.getUser_id()%>" class="btn btn-success"><i class="fa fa-unlock-alt"></i>Unblock</a>
                                                <% }%>
                                            </td>
                                        </tr>
                                        <% }
                      }%>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="common/footer.jsp" %>