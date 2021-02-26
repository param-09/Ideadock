<%@page import="com.modal.MakeProposal"%>
<%@ include file="common/header.jsp" %>
<%@ page
    import="javax.servlet.http.*, com.modal.InterestArea, java.util.Iterator,java.util.List"%>
    <%
        List<MakeProposal> prop = (List<MakeProposal>) session.getAttribute("prop");
    %>   
    <div class="parallax inner-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <i class="fa fa-users"></i>
                    <h4>Proposed <span>Ideas</span></h4>
                    <ol class="breadcrumb">
                        <li class="active">Details</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="container margin-top-40">
        <%
            if (!prop.isEmpty() && prop != null) {
                Iterator<MakeProposal> it = prop.iterator();
                MakeProposal ideaObj = null;
                while (it.hasNext()) {
                    ideaObj = (MakeProposal) it.next();
                    int i = 1;
                    if (ideaObj.getFrom_id() == user_id || ideaObj.getTo_id() == user_id) {
        %>
        <% if (ideaObj.getFrom_id() == user_id) {%>
        <div class="panel panel-primary margin-bottom-40">
            <div class="panel-heading">
                <h3 class="panel-title">Proposal made by you</h3>
            </div>
            <div class="table-responsive">
                <table class="table table-hoverW">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Investor Id</th>
                            <th>Idea Id</th>
                            <th>Entered name</th>
                            <th>Your email</th>
                            <th>Proposal Description</th>
                            <th>Acceptance status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%=ideaObj.getId()%></td>
                            <td><%=ideaObj.getTo_id()%></td>
                            <td><%=ideaObj.getIdea_id()%></td>
                            <td><%=ideaObj.getName()%></td>
                            <td><%=ideaObj.getEmail()%></td>
                            <td><%=ideaObj.getMessage()%></td>
                            <td><%
                                if (ideaObj.getAccept_status() == 0) {
                                    out.print("No");

                                } else {
                                    out.print("yes");
                                }

                                %></td>


                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <%} else {%>
        <div class="panel panel-primary margin-bottom-40">
            <div class="panel-heading">
                <h3 class="panel-title">Proposal made To you</h3>
            </div>
            <div class="table-responsive">

                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>User* Id</th>
                            <th>Idea Id</th>
                            <th>Entered name</th>
                            <th> User email</th>
                            <th>Proposal Description</th>
                            <th>Acceptance status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><%=ideaObj.getId()%></td>
                            <td><%=ideaObj.getFrom_id()%></td>
                            <td><%=ideaObj.getIdea_id()%></td>
                            <td><%=ideaObj.getName()%></td>
                            <td><%=ideaObj.getEmail()%></td>
                            <td><%=ideaObj.getMessage()%></td>
                            <td id="statusAc"><%
                                if (ideaObj.getAccept_status() == 0) {
                                    out.print("No");

                                } else if (ideaObj.getAccept_status() == 1) {
                                    out.print("yes");
                                } else if (ideaObj.getAccept_status() == 2) {
                                    out.print("Rejected");
                                }


                                %></td>
                                <% if (ideaObj.getAccept_status() == 0) {%>

                            <td id="acceptButton">

                                <a class="btn btn-success" onclick="return accept(<%=ideaObj.getId()%>)"><i class="fa fa-check-circle"></i>Accept</a>
                                <a class="btn btn-danger" onclick="return reject(<%=ideaObj.getId()%>)"><i class="fa fa-ban"></i>Reject</a>
                            </td><%} %>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
        <%}
            } else {%>


        <%}
                }
            }%> 
    </div>
    <%@ include file="common/footer.jsp" %>
    <script type="text/javascript">

        function accept(id) {
            $.ajax({
                type: "POST",
                url: "<%=request.getContextPath()%>/Controller?actioncode=acceptproposal",
                data: {
                    id: id
                },
                success: function (msg) {
                    if (msg == 1) {
                        toastr.success('Proposal accepted', "Success", {timeOut: 10000})
                        $("#acceptButton").html("");
                        $("#statusAc").html("Yes");
                    }
                },
                error: function (msg) {
                    toastr.error('Error Occured', "Error", {timeOut: 10000})
                    console.log();
                }
            });
            return false;
        }
        function reject(id) {
            alert(id);
            $.ajax({
                type: "POST",
                url: "<%=request.getContextPath()%>/Controller?actioncode=rejectproposal",
                data: {
                    id: id
                },
                success: function (msg) {
                    alert(msg);
                    if (msg == 1) {
                        toastr.success('Proposal rejected Successfully', "Success", {timeOut: 10000})
                        $("#acceptButton").html("");
                        $("#statusAc").html("Rejected");
                    }
                },
                error: function (msg) {
                    toastr.error('Error Occured', "Error", {timeOut: 10000})
                    console.log();
                }
            });
            return false;
        }
    </script>