<%@include file="common/header.jsp" %>
<%@include file="common/sidebar.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page
	import="javax.servlet.http.*, com.modal.Advertisement,java.util.*"%>
    	<%
    
    	 List<Advertisement> adv =(List<Advertisement>)session.getAttribute("adv"); 	
%>

 
 <div id="content" class="bg-container">
                <header class="head">
                   
                        <div class="col-lg-6 col-md-4 col-sm-4">
                            <h4 class="nav_top_align">
                            <i class="fa fa-audio-description"></i>
                            Advertisements
                        </h4>
                        </div>
                        
                    
                </header>
                <div class="outer">
                    <div class="inner  bg-light lter bg-container">
                        <div class="row">
                            <div class="col-xs-12 ">
                                <!-- BEGIN EXAMPLE1 TABLE PORTLET-->
                                <div class="card">
                                    
                                    <div class="card-block">
                                        
                                        <div class="table-responsive m-t-35">
                                            <table class="table">
                                            <thead>
                                                <tr>
                                                	<th>#</th>
                                                    <th>Title</th>
                                                    <th>Link</th>
                                                    <th>Photo</th> 
                                                    <th>Action</th>                                                  
                                                </tr>
                                            </thead>
                                                <tbody>
                                                 <%
                                                 int a=0;
				if (adv != null) {
					Iterator itr = adv.iterator();
					Advertisement advObj = new Advertisement();
					int i=1;
					while (itr.hasNext()) {
						a++;
						advObj = (Advertisement) itr.next();
			%>
                                                     <tr>
                                                       <td><%=i %></td>
                                                       <td><%=advObj.getTitle()%> </td>
                                                       <td><%=advObj.getLink()%></td>
                                                       <td><img src="AdvertImage/<%=advObj.getTitle()%>.jpg" height="50" width="40"></td>
                  <td> <a href="<%=request.getContextPath()%>/Controller?actioncode=deleteAdvertisement&id=<%=advObj.getId()%>" class="btn btn-danger">Delete</a>
                    </td>
                                                     </tr>
               <%
					i++;               
					}
				}
				%>
    
                                                </tbody>
                                        </table>
                                    </div>
                                    <%
                                    if(a==0){
				%>
					<span style="font-size:20px;">No advertisements to display !</span>
				<%	
				}
				%>
                                </div>
                            </div></div></div></div></div>
                                <%@include file="common/footer.jsp" %>
