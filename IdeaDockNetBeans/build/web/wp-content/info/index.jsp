<%@ include file="common/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0);  // Proxies.
%>

<%@page import="com.modal.Advertisement"%>
<%@page import="com.modal.ProfilePhoto"%>
<%@ page
    import="javax.servlet.http.*, com.modal.Useridea,com.modal.AddComment,com.dao.Dao,com.modal.Users, java.util.Iterator,java.util.List"%>
    <%
       
        List<Useridea> idea = (List<Useridea>) session.getAttribute("idea");
        List<AddComment> comment = (List<AddComment>) session.getAttribute("comment");
        Dao dao = new Dao();
        List<Advertisement> adv = (List<Advertisement>) session.getAttribute("adv");
       
    %>

    <!-- START - Contain Wrapp -->
    <div class="contain-wrapp padding-bottom-40">
        <div class="container">
            <div class="row">
                <!--                <div class="col-sm-2">
                                    <div class="flexslider">
                                        <ul class="slides">
                <%
                    if (!adv.isEmpty() && adv != null) {
                        Iterator<Advertisement> itad = adv.iterator();
                        Advertisement adObj = null;
                        int i = 1;
                        while (itad.hasNext()) {
                            adObj = (Advertisement) itad.next();
                %>

                <li>
                    <a href="<%=adObj.getLink()%>"><img src="<%=request.getContextPath()%>/wp-content/portal/AdvertImage/<%=adObj.getTitle()%>.jpg "/></a>
                </li>
                <%}
                                }%>

            </ul>
        </div>
    </div>-->
                <div class="col-sm-12">

                    <!-- START - Article -->
                    <%                            if (!idea.isEmpty() && idea != null) {
                            Iterator<Useridea> it = idea.iterator();
                            Useridea ideaObj = null;
                            int i = 1;
                            while (it.hasNext()) {
                                ideaObj = (Useridea) it.next();
                    %>

                    <!-- START - Post 1 -->
                    <article class="post post-thumbnail">

                        <h2>Idea <%=i%></h2>
                        <div class="post-frame">
                            <div class="post-heading">
                                <h5><a href="<%=request.getContextPath()%>/Controller?actioncode=viewideaDetails&ideaId=<%=ideaObj.getId()%>"> <%=ideaObj.getTitle()%></a></h5>
                            </div>
                            <p>
                                <%=ideaObj.getDescription()%>
                            </p>

                            <img src="img/gallery/img01_270x270.jpg" class="alignleft" alt="" />

                            <!--                            <div class="footer-post margin-bottom-10">
                                                            <ul>
                                                                <li><a href="#"><i class="fa fa-share-alt"></i> 174</a></li>
                                                                <li><a href="#"><i class="fa fa-comments"></i> 24</a></li>
                                                                <li><a href="#"><i class="fa fa-heart"></i> 8</a></li>
                                                            </ul>
                                                           
                                                        </div>-->
                            <a href="<%=request.getContextPath()%>/Controller?actioncode=viewideaDetails&ideaId=<%=ideaObj.getId()%>" class="btn-e btn-e-primary btn-icon">Read more <i class="fa fa-plus"></i></a>
                        </div>
                    </article>
                    <!-- END - Post 1 -->
                    <% if (ideaObj.getUser_id() == user_id) {
                        } else {%>
                    <!-- START - Leave Comments -->
                    <h5>Leave comment</h5>
                    <form class="row" name="comment" action="<%=request.getContextPath()%>/Controller" method="post">
                        <div class="col-md-12 margin-bottom-30">
                            <input type=hidden name="actioncode" value="addcomment"/>
                            <input type=hidden name="idea_id" value=<%=ideaObj.getId()%>>
                            <input type=hidden name="user_id" value=<%=user_id%>>
                            <input type=hidden name="user_name" value=<%=username%>>
                            <textarea class="form-control" rows="3" name="message" placeholder="Your comment here..." required></textarea>
                        </div>
                        <div class="col-md-12">
                            <!--                            <label>Your Rating :</label>-->
                            <!--<div id="start" class="rate" data-rating="1"></div>-->
                        </div>
                        <div class="col-md-12">
                            <input type="submit" value="Leave comment" class="btn-e btn-rounded btn-e-primary" name="Submit" />
                        </div>
                    </form>
                    <!-- END - Leave Comments -->
                    <%} %>
                    <div class="divider margin-top-25 margin-bottom-40"></div>

                    <!-- START - Comments -->
                    <%
                        if (!comment.isEmpty() && comment != null) {
                            Iterator<AddComment> it1 = comment.iterator();
                            AddComment comObj = null;
                    %>                    <h5>Comments::</h5><%
                        while (it1.hasNext()) {
                            comObj = (AddComment) it1.next();
                            if (comObj.getIdea_id() == ideaObj.getId()) {
                                List<Users> user = dao.viewuser(comObj.getUser_id());
                                Iterator<Users> it2 = user.iterator();
                                Users userObj = (Users) it2.next();
                                List<ProfilePhoto> pic = dao.getProfilepic(comObj.getUser_id());
                                String ppic = "";
                                if (!pic.isEmpty()) {
                                    Iterator itr1 = pic.iterator();
                                    ProfilePhoto pobj = null;
                                    pobj = (ProfilePhoto) itr1.next();
                                    ppic = pobj.getPath();
                                }
                    %>
                    <div class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object" src="<%=request.getContextPath()%>/wp-content/info/profilepic/<%=ppic%>" alt="" height="112" width="112"/>
                            </a>
                        </div>
                        <div class="media-body">
                            <%if (userObj.getType().equals("investor")) {%>
                            <h6 class="media-heading"><a href="<%=request.getContextPath()%>/Controller?actioncode=investor_detail&investor_id=<%=comObj.getUser_id()%>"><%=comObj.getUser_name()%></a> 
                                <%} else {%>
                                <h6 class="media-heading"><a href="<%-- <%=request.getContextPath()%>/Controller?actioncode=investor_detail&investor_id=<%=comObj.getUser_id()%> --%>"><%=comObj.getUser_name()%></a> 
                                    <%}%>
                                    <a href="#" class="pull-right"><%=comObj.getCreated_date()%>&nbsp;&nbsp;<%=userObj.getType()%></a></h6>

                                <p>
                                    <%=comObj.getMessage()%>
                                </p>
                                <p class="reply"><a href="#"><i class="icon-link"></i> Reply</a></p>
                        </div>
                    </div>
                    <%}
                            }
                        } %> 
                    <!--                        <div class="media">
                                                <div class="media-left">
                                                    <a href="#">
                                                        <img class="media-object" src="img/testimonials/img02.jpg" alt="" />
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h6 class="media-heading"><a href="#">Jane Roe</a></h6>
                                                    <p>
                                                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.
                                                    </p>
                                                    <p class="reply"><a href="#"><i class="icon-link"></i> Reply</a></p>
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <a href="#">
                                                                <img class="media-object" src="img/testimonials/img03.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="media-heading"><a href="#">John Doe</a></h6>
                                                            <p>
                                                                Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                                                            </p>
                                                            <p class="reply"><a href="#"><i class="icon-link"></i> Reply</a></p>
                                                        </div>
                                                    </div>
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <a href="#">
                                                                <img class="media-object" src="img/testimonials/img01.jpg" alt="" />
                                                            </a>
                                                        </div>
                                                        <div class="media-body">
                                                            <h6 class="media-heading"><a href="#">Jane Roe</a></h6>
                                                            <p>
                                                                At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.
                                                            </p>
                                                            <p class="reply"><a href="#"><i class="icon-link"></i> Reply</a></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>-->

                    <!--                        <div class="media">
                                                <div class="media-left">
                                                    <a href="#">
                                                        <img class="media-object" src="img/testimonials/img04.jpg" alt="" />
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h6 class="media-heading"><a href="#">Jane Roe</a></h6>
                                                    <p>
                                                        Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
                                                    </p>
                                                    <p class="reply"><a href="#"><i class="icon-link"></i> Reply</a></p>
                                                </div>
                                            </div>-->
                    <!-- END - Comments -->
                    <%
                                i++;
                            }
                        }%>
                    <!-- END - Article -->
                    <!-- START - Article -->
                    <div class="clearfix"></div>

                    <nav>
                        <ul class="pagination pagination-lg pagination-center">
                            <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
                        </ul>
                    </nav>

                </div>
            </div>
        </div>
    </div>
    <!-- END - parallax -->

    <div class="clearfix"></div>

    <%@ include file="common/footer.jsp" %>
