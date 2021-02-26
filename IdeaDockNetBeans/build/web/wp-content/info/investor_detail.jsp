<%@ include file="common/header.jsp" %>
<%@page import="com.modal.Users"%>

<%@ page
    import="javax.servlet.http.*, com.modal.InterestArea, java.util.Iterator,java.util.List"%>
    <%
        List<InterestArea> area = (List<InterestArea>) session.getAttribute("area");
        List<Users> user = (List<Users>) session.getAttribute("user");
    %>   
    <div class="parallax inner-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <i class="fa fa-users"></i>
                    <h4>About <span>Investor</span></h4>
                    <ol class="breadcrumb">
                        <li class="active">Detailss</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="container margin-top-40">
        <div class="table-responsive">
            <h3>User Details:</h3>
            <table class="table">
                <thead>
                <th>User ID</th>
                <th>User Name</th>
                <th>user Email</th>
                </thead>
                <tbody>

                    <%
                        if (!user.isEmpty() && user != null) {
                            Iterator<Users> it = user.iterator();
                            Users ideaObj = null;
                            int i = 1;
                            while (it.hasNext()) {

                                ideaObj = (Users) it.next();
                    %>
                    <tr>
                        <td><%=ideaObj.getUser_id()%></td>
                        <td><%=ideaObj.getFullname()%></td>
                        <td><%=ideaObj.getEmail()%></td>
                    </tr>
                    <% i = i + 4;
                            }
                        }
                    %>

                </tbody>
            </table>
        </div>
        <%
            if (!area.isEmpty() && area != null) {
                Iterator<InterestArea> it = area.iterator();
                InterestArea ideaObj = null;
                while (it.hasNext()) {
                    ideaObj = (InterestArea) it.next();
                    int i = 1;
        %>

        <div class="panel panel-primary margin-bottom-40">
            <div class="panel-heading">
                <h3 class="panel-title">Investor Interest Details</h3>
            </div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Investor_id</th>
                        <th>Topic</th>
                        <th>Amount</th>
                        <th>Description</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><%=ideaObj.getUser_id()%></td>
                        <td><%=ideaObj.getTopic()%></td>
                        <td><%=ideaObj.getAmount()%></td>
                        <td>
                            <%=ideaObj.getDescription()%> 
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <%}
            }%> 
    </div>
    <%@ include file="common/footer.jsp" %>