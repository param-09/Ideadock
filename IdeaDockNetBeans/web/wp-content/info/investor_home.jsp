<%@ include file="common/header.jsp" %>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setDateHeader("Expires", 0); // Proxies. %>
  <%@ page
	import="javax.servlet.http.*, com.modal.Useridea, java.util.Iterator,java.util.List"%>
 <%
    	 List<Useridea> idea =(List<Useridea>)session.getAttribute("idea"); 	
%>
   
      <!-- START - Contain Wrapp -->
        <div class="contain-wrapp padding-bottom-40">
            <div class="container">
                <div class="row">
                    <!-- START - Article -->
                                    <%
				if (!idea.isEmpty() && idea != null) {
					Iterator<Useridea> it = idea.iterator();
					Useridea ideaObj = null;
					while (it.hasNext()) {
						ideaObj = (Useridea) it.next();
				%>
                    
                    <div class="col-md-12">
                        <!-- START - Post 1 -->
                        <article class="post post-thumbnail">
                            <div class="img-wrapper">
                                <div class="post-share">
                                    <span>Share:</span>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </div>
                            <h2>Idea </h2>
                            <div class="post-frame">
                                <div class="post-heading">
                                    <h5><a href="<%=request.getContextPath()%>/Controller?actioncode=viewideaDetails&ideaId=<%=ideaObj.getId()%>"> <%=ideaObj.getTitle()%></a></h5>
                                 </div>
                                <p>
                                   <%=ideaObj.getDescription()%>
                                </p>
                              
                                <img src="img/gallery/img01_270x270.jpg" class="alignleft" alt="" />
                              
                                <div class="footer-post margin-bottom-10">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-share-alt"></i> 174</a></li>
                                        <li><a href="#"><i class="fa fa-comments"></i> 24</a></li>
                                        <li><a href="#"><i class="fa fa-heart"></i> 8</a></li>
                                    </ul>
                                    <div class="rating-large-2 pull-right">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </div>
                                </div>
                                <a href="#" class="btn-e btn-e-primary btn-icon">Read more <i class="fa fa-plus"></i></a>
                            </div>
                        </article>
                        <!-- END - Post 1 -->
						<!-- START - Leave Comments -->
                        <h5>Leave comment</h5>
                        <form class="row">
                            <div class="col-md-6 margin-bottom-30">
                                <input class="form-control" type="text" name="name" placeholder="Enter your full name..." />
                            </div>
                            <div class="col-md-6 margin-bottom-30">
                                <input class="form-control" type="text" name="name" placeholder="Enter your e-mail..." />
                            </div>
                            <div class="col-md-12 margin-bottom-30">
                                <textarea class="form-control" rows="9" name="message" placeholder="Your comment here..."></textarea>
                            </div>
                            <div class="col-md-12">
                                <label>Your Rating :</label>
                                <div id="start" class="rate" data-rating="1"></div>
                            </div>
                            <div class="col-md-12">
                                <input type="submit" value="Leave comment" class="btn-e btn-rounded btn-e-primary" name="Submit" />
                            </div>
                        </form>
                        <!-- END - Leave Comments -->
                      <div class="divider margin-top-25 margin-bottom-40"></div>

                        <!-- START - Comments -->
                        <h5>Replies (5)</h5>
                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="img/testimonials/img01.jpg" alt="" />
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
                        </div>

                        <div class="media">
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
                        </div>
                        <!-- END - Comments -->
                    </div>
                                                          <%
}}%>
                    <!-- END - Article -->
                      <!-- START - Article -->
                
                </div>
            </div>
        </div>
        <!-- END - parallax -->

        <div class="clearfix"></div>

<%@ include file="common/footer.jsp" %>
