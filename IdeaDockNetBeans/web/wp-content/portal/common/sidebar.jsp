<% 
String photo1 = "";
try{
        photo1 = (String)session.getAttribute("photo");
}
catch(Exception e){
	e.printStackTrace();
}
%>
<div id="left">
    <div class="media user-media bg-dark dker">
        <div class="user-media-toggleHover">
            <span class="fa fa-user"></span>
        </div>
        <div class="user-wrapper bg-dark">
            <a class="user-link" href="">
                <img class="media-object img-thumbnail user-img rounded-circle admin_img3" alt="User Picture"
                     src="<%=request.getContextPath()%>/wp-content/portal/profilepic/<%=photo1%>">

                <p class="text-white user-info">Welcome</p>
            </a>
            <div class="search_bar col-lg-12">
                <div class="input-group">
                    <input type="search" class="form-control" placeholder="search">
                    <span class="input-group-btn">
                        <button class="btn without_border" type="button"><span class="fa fa-search">
                            </span></button>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <!-- #menu -->
    <ul id="menu" class="bg-blue dker">
        <li class="active">
            <a href="index.jsp">
                <i class="fa fa-home"></i>
                <span class="link-title">&nbsp;Admin Home</span>
            </a>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-tasks"></i>
                <span class="link-title">&nbsp; Role</span>
                <span class="fa arrow"></span>
            </a>
            <ul>
                <li>
                    <a href="addrole.jsp">
                        <i class="fa fa-angle-right"></i> &nbsp; Add Role
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewrole">
                        <i class="fa fa-angle-right"></i> &nbsp; View Role
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-user-circle-o"></i>
                <span class="link-title">&nbsp; Users</span>
                <span class="fa arrow"></span>
            </a>
            <ul>
                <li>
                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewinvestor">
                        <i class="fa fa-angle-right"></i> &nbsp; Manage Investor
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewusertoadmin">
                        <i class="fa fa-angle-right"></i> &nbsp; Manage Users
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-database"></i>
                <span class="link-title">&nbsp; Manage IdeaDB</span>
                <span class="fa arrow"></span>
            </a>
            <ul>
                <li>
                    <a href="<%=request.getContextPath()%>/Controller?actioncode=manageidea">
                        <i class="fa fa-angle-right"></i> &nbsp; View Ideas
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewstoryadmin&user_id=0">
                        <i class="fa fa-angle-right"></i> &nbsp; View Stories  
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-question-circle"></i>
                <span class="link-title">&nbsp; Feedback & Queries</span>
                <span class="fa arrow"></span>
            </a>
            <ul>
                <li>
                    <a href="faq.jsp">
                        <i class="fa fa-angle-right"></i> &nbsp; Add Faqs
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewfaq">
                        <i class="fa fa-angle-right"></i> &nbsp; Review Faqs
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewcontactus">
                        <i class="fa fa-angle-right"></i> &nbsp; View User Queries
                    </a>
                </li>

            </ul>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-file-image-o"></i>
                <span class="link-title">&nbsp; Gallery</span>
                <span class="fa arrow"></span>
            </a>
            <ul>

                <li>
                    <a href="addimage.jsp">
                        <i class="fa fa-angle-right"></i> &nbsp; Add Image
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewphoto">
                        <i class="fa fa-angle-right"></i> &nbsp; View Gallary
                    </a>
                </li>


            </ul>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-audio-description"></i>
                <span class="link-title">&nbsp; Advertisement</span>
                <span class="fa arrow"></span>
            </a>
            <ul>
                <li>
                    <a href="<%=request.getContextPath()%>/Controller?actioncode=viewAllAdvertisements">
                        <i class="fa fa-angle-right"></i> &nbsp; View advertisements
                    </a>
                </li>
                <li>
                    <a href="newAdvertisement.jsp">
                        <i class="fa fa-angle-right"></i> &nbsp; Add new advertisement
                    </a>
                </li>      
            </ul>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-rss"></i>
                <span class="link-title">&nbsp; Social Media </span>
                <span class="fa arrow"></span>
            </a>
            <ul>
                <li>
                    <a href="https://www.facebook.com/">
                        <i class="fa fa-angle-right"></i> &nbsp; Facebook
                    </a>
                </li>
                <li>
                    <a href="https://twitter.com/login?lang=en">
                        <i class="fa fa-angle-right"></i> &nbsp; Twitter
                    </a>
                </li>
                <li>
                    <a href="https://www.instagram.com/">
                        <i class="fa fa-angle-right"></i> &nbsp; Instagram
                    </a>
                </li>

            </ul>
        </li>                
    </ul>

    <!-- /#menu -->
</div>
