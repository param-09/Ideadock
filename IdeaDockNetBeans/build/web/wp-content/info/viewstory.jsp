<%@ include file="common/header.jsp" %>
<%@ page
    import="javax.servlet.http.*,java.util.Iterator,java.util.List"%>
    <%
        List<Object> st = (List<Object>) session.getAttribute("st");
    %>
    <!-- START - Inner Head -->
    <div class="parallax inner-head">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <i class="fa fa-list-ol"></i>
                    <h4><span>Story</span></h4>
                    <ol class="breadcrumb">
                        <li><a href="<%=request.getContextPath()%>/Controller?actioncode=viewallidea">Home</a></li>
                        <li class="active">Story</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!-- END - Inner Head -->

    <!-- START - Contain Wrapp -->
    <div class="contain-wrapp padding-bottom-40">
        <div class="container">
            <div class="row">
                <!-- START - Article -->
                <%
                    if (!st.isEmpty() && st != null) {
                        Iterator<Object> it = st.iterator();
                        Object[] ideaObj = null;
                        int i = 1;
                        while (it.hasNext()) {

                            ideaObj = (Object[]) it.next();
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
                        <div class="post-frame">
                            <div class="post-heading">
                                <h5><a href="<%=request.getContextPath()%>/Controller?actioncode=onlyideadetail&ideaId=<%=ideaObj[7]%>"> <%=ideaObj[6]%></a><span class="pull-right">Author:<%=ideaObj[8]%></span></h5>

                            </div>
                            <p>
                                <%=ideaObj[4]%>
                            </p>

                            <img src="img/gallery/img01_270x270.jpg" class="alignleft" alt="" />

                            <div class="footer-post margin-bottom-10">
                                <ul>
                                    <li><a href="#"><i class="fa fa-heart"></i><%=ideaObj[3]%></a></li>
                                    <li><a href="#"><i class="fa fa-clock">Posted time:: &nbsp;</i><%=ideaObj[5]%></a></li>
                                </ul>
                                <!--                                <div class="rating-large-2 pull-right">
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star"></i>
                                                                    <i class="fa fa-star-half-o"></i>
                                                                </div>-->
                            </div>
                        </div>
                    </article>
                    <!-- END - Post 1 -->


                </div>
                <!-- END - Comments -->
            </div>
            <%
                    }
                }
            %>
            <!-- END - Article -->
            <!-- START - Article -->
            <nav>
                <ul class="pagination pagination-lg pagination-center">
                    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                    <li class="active"><a href="#">1</a></li>
<!--                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>-->
                    <li><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>
<!-- END - Contain Wrapp -->

<div class="clearfix"></div>
<%@ include file="common/footer.jsp" %>