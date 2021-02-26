
<%@ include file="common/header.jsp" %>
<%@ page
    import="javax.servlet.http.*, com.modal.MakeProposal,com.modal.Useridea,com.modal.Users, java.util.Iterator,java.util.List"%>
    <%
        List<Object> prop = (List<Object>) session.getAttribute("prop");
        List<Users> user = (List<Users>) session.getAttribute("user");
        List<Useridea> idea = (List<Useridea>) session.getAttribute("idea");
    %>   
    <div class="parallax inner-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <i class="fa fa-users"></i>
                    <h4>Current <span>Ideas</span></h4>
                    <ol class="breadcrumb">
                        <li class="active">Detailss</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
        <h4>If You Enjoyed using ideadock so you can Donate us by clicking below</h4>
        <div class="col-sm-4 col-sm-offset-5">
            <div class='pm-button'><a href='https://www.payumoney.com/paybypayumoney/#/A376A255484ED8D28FB1A2155639FFB6'><img src='https://www.payumoney.com/media/images/payby_payumoney/new_buttons/21.png' /></a></div> 
        </div>
        </div>
    </div>
    <div class="container margin-top-40">




        <%
            if (!prop.isEmpty() && prop != null) {
                Iterator<Object> it = prop.iterator();
                Object[] ideaObj = null;
                int i = 1;
                while (it.hasNext()) {

                    ideaObj = (Object[]) it.next();
                    int a = (Integer) ideaObj[9];
                    int b = (Integer) ideaObj[10];
        %>
        <h3><%=ideaObj[4]%></h3>
        <div class="tab-default">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#tab<%=i%>" role="tab" data-toggle="tab">Idea Description</a></li>
                <li role="presentation"><a href="#tab<%=i + 1%>" role="tab" data-toggle="tab">Idea Details</a></li>
                <li role="presentation"><a href="#tab<%=i + 2%>" role="tab" data-toggle="tab">user/investor info</a></li>
                <li role="presentation"><a href="#tab<%=i + 3%>" role="tab" data-toggle="tab">Extra</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="tab<%=i%>">
                    <p>
                        <%=ideaObj[7]%>
                    </p>
                </div>
                <div role="tabpanel" class="tab-pane" id="tab<%=i + 1%>">
                    <h6>Technical detail</h6>
                    <table class="parameter-product">
                        <tr class="active">
                            <td><strong>username</strong></td>
                            <td>  <%=ideaObj[0]%></td>
                        </tr>

                        <tr class="active">
                            <td><strong>Field</strong></td>
                            <td>  <%=ideaObj[5]%></td>
                        </tr>
                        <tr class="active">
                            <td><strong>Estimated Cost</strong></td>
                            <td>  <%=ideaObj[6]%></td>
                        </tr>

                    </table>
                    <h6>Techical Description</h6>
                    <p>
                        <%=ideaObj[8]%>
                    </p>
                </div>
                <div role="tabpanel" class="tab-pane" id="tab<%=i + 2%>">
                    <h6>Investor detail</h6>
                    <table class="parameter-product">
                        <tr class="active">
                            <td><strong>investor id</strong></td>
                            <%

                                                if (a != user_id) {%>
                            <td><a href="<%=request.getContextPath()%>/Controller?actioncode=investor_detail&investor_id=<%=a%>"><%=a%></a></td>
                                <%} else {%>
                            <td><a href="<%=request.getContextPath()%>/Controller?actioncode=investor_detail&investor_id=<%=b%> "><%=b%></a></td>
                                <%}%>
                        </tr>
                    </table>
                </div>
                <div role="tabpanel" class="tab-pane" id="tab<%=i + 3%>">
                    <p>
                        <%=ideaObj[3]%>
                    </p>
                    <a class="btn-e btn-block btn-e-primary margin-top-10" href="<%=request.getContextPath()%>/Controller?actioncode=viewstorypage&proposal_id=<%=ideaObj[11]%>" target="_blank"> Add Success Story</a>
                </div>
            </div>
        </div>

        <% i = i + 4;
                }
            }
        %> 


<!--        <div class="row">
            <div class="col-sm-4 col-sm-offset-5">
                <div class='pm-button'><a href='https://www.payumoney.com/paybypayumoney/#/A376A255484ED8D28FB1A2155639FFB6'><img src='https://www.payumoney.com/media/images/payby_payumoney/new_buttons/21.png' /></a></div> 
            </div>
        </div>-->
    </div>
    <%@ include file="common/footer.jsp" %>