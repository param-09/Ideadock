<%@ include file="common/header.jsp" %> 
     <%@ page
	import="javax.servlet.http.*, com.modal.Faq, java.util.Iterator,java.util.List"%>
    	<%
    	 List<Faq> faqs =(List<Faq>)session.getAttribute("faqs"); 	
%>
      <!-- START - Inner Head -->
        <div class="parallax inner-head">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <i class="fa fa-question"></i>
                        <h4>FAQs <span>& Queries</span></h4>
                        <ol class="breadcrumb">
                            <li><a href="<%=request.getContextPath()%>/Controller?actioncode=viewallidea">Home</a></li>
                            <li class="active">Page F.A.Q.</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!-- END - Inner Head -->

        <!-- START - Contain Wrapp -->
        <div class="contain-wrapp padding-bottom-50">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="icon-box box-primary">
                            <div class="icon-box-contain">
                                <i class="fa fa-pie-chart fa-3x"></i>
                                <h5>What is IdeaDock About ?</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus justo vel tincidunt consectetur.</p>
                            </div>
                            <i class="fa fa-pie-chart icon-bg"></i>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="icon-box box-primary">
                            <div class="icon-box-contain">
                                <i class="fa fa-rocket fa-3x"></i>
                                <h5>The Features of IdeaDock Platform</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus justo vel tincidunt consectetur.</p>
                            </div>
                            <i class="fa fa-rocket icon-bg"></i>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="icon-box box-primary">
                            <div class="icon-box-contain">
                                <i class="fa fa-paper-plane fa-3x"></i>
                                <h5>How to use Website ?</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dapibus justo vel tincidunt consectetur.</p>
                            </div>
                            <i class="fa fa-paper-plane icon-bg"></i>
                        </div>
                    </div>
                    <!-- Start faq 1 -->
                    <div class="col-sm-12">
                        <h5>System Related Queries</h5>
                        <div class="panel-group" id="accordion1" role="tablist">
                               <%
                                int i = 1;
				if (!faqs.isEmpty() && faqs != null) {
					Iterator<Faq> it = faqs.iterator();
					Faq faqObj = null;
					while (it.hasNext()) {
						faqObj = (Faq) it.next();
			%>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="heading1">
                                    <h6 class="panel-title">
                                        <a role="button" data-toggle="collapse" data-parent="#accordion1" href="#collapse<%=i%>">
                                            <i class="fa fa-plus plus"></i>
                                            <i class="fa fa-minus minus"></i>
                                           <%=faqObj.getFaq_que()%>
                                        </a>
                                    </h6>
                                </div>
                                <div id="collapse<%=i%>" class="panel-collapse collapse" role="tabpanel">
                                    <div class="panel-body">
                                        <p>
                                            <%=faqObj.getFaq_ans()%> e.
                                        </p>
                                    </div>
                                </div>
                            </div>
                     <%
                         i++;
}}%>         
                        </div>
                    </div>
                    <!-- End faq 1 -->

                    <!-- Start faq 2 -
                    <!-- End faq 4 -->
                </div>
            </div>
        </div>
        <!-- END - Contain Wrapp -->

        <div class="clearfix"></div>
  <%@ include file="common/footer.jsp" %>