<%-- 
    Document   : addStory
    Created on : Mar 20, 2018, 7:45:30 PM
    Author     : ARPIT-PATEL
--%>

<%@ include file="common/header.jsp" %>
<%@ page
    import="javax.servlet.http.*, com.modal.MakeProposal,com.modal.Useridea,com.modal.Users, java.util.Iterator,java.util.List"%>
    <%
        List<Object> prop = (List<Object>) session.getAttribute("prop");
    %>   
    <div class="parallax inner-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <i class="fa fa-users"></i>
                    <h4>Add <span>Success Story</span></h4>
                    <ol class="breadcrumb">
                        <li class="active">Story</li>
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
                <th>user type</th>
                </thead>
                <tbody>

                    <%
                        String ProjectTitle = "";
                        String idea_id = "";
                        if (!prop.isEmpty() && prop != null) {
                            Iterator<Object> it = prop.iterator();
                            Object[] ideaObj = null;
                            int i = 1;
                            while (it.hasNext()) {

                                ideaObj = (Object[]) it.next();
                                ProjectTitle = ideaObj[1].toString();
                                idea_id = ideaObj[0].toString();
                    %>
                    <tr>
                        <td><%=ideaObj[2]%></td>
                        <td><%=ideaObj[3]%></td>
                        <td><%=ideaObj[4]%></td>
                        <td><%=ideaObj[5]%></td>
                    </tr>
                    <% i = i + 4;
                            }
                        }
                    %>

                </tbody>
            </table>
        </div>
        <h3><%=ProjectTitle%></h3>        
        <form id="addstory" class="form-horizontal" method="post" action="<%=request.getContextPath()%>/Controller">
            <input type="hidden" name="actioncode" value="addStory" /> 
            <input type="hidden" name="user_id" value="<%=user_id%>" /> 
            <input type="hidden" name="proposal_id" value="<%=idea_id%>" /> 

            <div class="form-group has-feedback">
                <h5>Put Story Here</h5>
                <textarea class="textarea form-control" name="description" id="wysihtml5" placeholder="Enter Story ..." rows="12" required=""></textarea>
            </div>
            <div class="form-group">
                <div class="">
                    <button type="submit" class="btn-e btn-e-primary margin-top-10">Add Story</button>
                </div>
            </div>

        </form>

    </div>
    <%@ include file="common/footer.jsp" %>
    <%  try {
            String msg = request.getParameter("msg");
            if (msg.equals("sucess")) {
    %>
    <script type="text/javascript">
        toastr.success('story inserted successfully', "Success", {timeOut: 10000})
    </script>
    <%} else {%>
    <script type="text/javascript">
        toastr.error('story Not inserted successfully', "!Error", {timeOut: 10000})

    </script>
    <% }
        } catch (Exception e) {
            e.printStackTrace();
        }
    %>