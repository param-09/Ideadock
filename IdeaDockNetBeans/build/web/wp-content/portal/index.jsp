

<%    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
%>

<%@page import="com.modal.Story"%>
<%@page import="com.modal.MakeProposal"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ include file="common/header.jsp" %>
<%@ include file="common/sidebar.jsp" %>
<%@page import="com.modal.Useridea"%>
<%@page import="com.modal.Users"%>
<%
    List<Users> user = (List<Users>) session.getAttribute("user");
    List<Useridea> idea = (List<Useridea>) session.getAttribute("idea");
    List<MakeProposal> prop = (List<MakeProposal>) session.getAttribute("prop");
    List<Story> st = (List<Story>) session.getAttribute("st");

    Iterator userItr = user.iterator();
    Users u = new Users();
    int countuser = 0;
    while (userItr.hasNext()) {
        u = (Users) userItr.next();
        countuser++;
    }
    Iterator userItr1 = idea.iterator();
    Useridea u1 = new Useridea();
    int countidea = 0;
    while (userItr1.hasNext()) {
        u1 = (Useridea) userItr1.next();
        countidea++;
    }
    Iterator userItr2 = prop.iterator();
    MakeProposal u2 = new MakeProposal();
    int countsuccess = 0;
    while (userItr2.hasNext()) {
        u2 = (MakeProposal) userItr2.next();
        countsuccess++;
    }
    Iterator userItr3 = st.iterator();
    Story u3 = new Story();
    int countstory = 0;
    while (userItr3.hasNext()) {
        u3 = (Story) userItr3.next();
        countstory++;
    }
%>
<div id="content" class="bg-container">
    <header class="head">
        <div class="main-bar row">
            <div class="col-xs-6">
                <h4 class="m-t-5">
                    <i class="fa fa-home"></i>
                    Admin Home

                </h4>
            </div>
        </div>
    </header>
    <div class="outer">
        <div class="inner bg-container">
            <div class="row">
                    <div class="row">
                        <div class="col-sm-3 col-xs-12">
                            <div class="bg-primary top_cards">
                                <div class="row icon_margin_left">

                                    <div class="col-lg-5 icon_padd_left">
                                        <div class="float-xs-left">
                                            <span class="fa-stack fa-sm">
                                                <i class="fa fa-circle fa-stack-2x"></i>
                                                <i class="fa fa-bullhorn fa-stack-1x fa-inverse text-primary sales_hover"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 icon_padd_right">
                                        <div class="float-xs-right cards_content">
                                            <span class="number_val text-right" id="sales_count"><%=countidea%></span>
                                            <br/>
                                            <span class="card_description">Ideas</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 col-xs-12">
                            <div class="bg-success top_cards">
                                <div class="row icon_margin_left">
                                    <div class="col-lg-5 icon_padd_left">
                                        <div class="float-xs-left">
                                            <span class="fa-stack fa-sm">
                                                <i class="fa fa-circle fa-stack-2x"></i>
                                                <i class="fa fa-user-circle fa-stack-1x fa-inverse text-success visit_icon"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 icon_padd_right">
                                        <div class="float-xs-right cards_content">
                                            <span class="number_val text-right" id="visitors_count"><%=countuser%></span>
                                            <br/>
                                            <span class="card_description">Users</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 col-xs-12">
                            <div class="bg-warning top_cards">
                                <div class="row icon_margin_left">
                                    <div class="col-lg-5 icon_padd_left">
                                        <div class="float-xs-left">
                                            <span class="fa-stack fa-sm">
                                                <i class="fa fa-circle fa-stack-2x"></i>
                                                <i class="fa fa-handshake-o fa-stack-1x fa-inverse text-warning revenue_icon"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 icon_padd_right">
                                        <div class="float-xs-right cards_content">
                                            <span class="number_val text-right" id="revenue_count"><%=countsuccess%></span>
                                            <br/>
                                            <span class="card_description">Successful Ideas</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 col-xs-12">
                            <div class="bg-mint top_cards">
                                <div class="row icon_margin_left">
                                    <div class="col-lg-5 icon_padd_left">
                                        <div class="float-xs-left">
                                            <span class="fa-stack fa-sm">
                                                <i class="fa fa-circle fa-stack-2x"></i>
                                                <i class="fa fa fa-file-text-o  fa-stack-1x fa-inverse text-mint sub"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-lg-7 icon_padd_right">
                                        <div class="float-xs-right cards_content">
                                            <span class="number_val text-right" id="subscribers_count"><%=countstory%></span>
                                            <br/>
                                            <span class="card_description">Success Stories</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
<!--                <div class="col-xl-6 col-lg-5 col-xs-12 stat_align">
                    <div class="card weather_section md_align_section">
                        <div class="card-block">
                            <div class="row margin_align">
                                <div class="col-xs-12">
                                    <div class="row">
                                        <div class="col-xs-6">
                                            <div class="icon sun-shower">
                                                <div class="cloud"></div>
                                                <div class="sun">
                                                    <div class="rays"></div>
                                                </div>                                                        
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            <div class="weather-value">
                                                <span class=" text-white"><span class="degree">40&deg;</span>
                                                </span>
                                            </div>
                                            <div class="weather_location">
                                                <span class="text-white"><i class="fa fa-map-marker"></i> Ahmedabad</span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row weekly_report">
                                        <div class="col-xs-3">
                                            <span>Mon</span>
                                            <br/>
                                            <img src="img/w4.png" alt="weather">
                                            <p>37&deg;</p>
                                        </div>
                                        <div class="col-xs-3">
                                            <span>Tue</span>
                                            <br/>
                                            <img src="img/w4.png" alt="weather">
                                            <p>39&deg;</p>
                                        </div>
                                        <div class="col-xs-3">
                                            <span>Wed</span>
                                            <br/>
                                            <img src="img/w4.png" alt="weather">
                                            <p>35&deg;</p>
                                        </div>
                                        <div class="col-xs-3">
                                            <span>Thu</span>
                                            <br/>
                                            <img src="img/w4.png" alt="weather">
                                            <p>38&deg;</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-xs-12 m-t-35">
                <div class="card">
                    <div class="card-header bg-white">
                        Server Load
                    </div>
                    <div class="card-block">
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="server_item text-danger">
                                    <span>Total Usage</span>
                                    <p>72GB</p>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="server_item text-success">
                                    <span>Total Space</span>
                                    <p>600GB</p>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="server_item text-info">
                                    <span>CPU</span>
                                    <p>57%</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-xs-12 m-t-35">
                <div class="card">
                    <div class="card-header bg-white">
                        Browsers Stats
                    </div>
                    <div class="card-block">
                        <ul class="Browser_stats_ul">
                            <li><span><img alt="google" src="img/chrome.png"/>Google Crome</span><span
                                    class="float-xs-right text-mint">32%</span>
                                <hr/>
                            </li>
                            <li><span><img alt="firebox" src="img/firefox.png">Firefox</span><span
                                    class="float-xs-right text-danger">25%</span>
                                <hr/>
                            </li>
                            <li><span><img alt="safari" src="img/safari2.png">Safari</span><span
                                    class="float-xs-right text-mint">13%</span>
                                <hr/>
                            </li>
                            <li><span><img alt="opera" src="img/opera.png">Opera</span><span
                                    class="float-xs-right text-mint">9%</span>
                                <hr/>
                            </li>
                            <li><span><img alt="ie" src="img/Ie.png">Internet Explorer</span><span
                                    class="float-xs-right text-danger">8%</span>
                                <hr/>
                            </li>
                            <li><span><img alt="mobile" src="img/mobile1.png">Mobile Browser</span><span
                                    class="float-xs-right text-mint">5%</span>
                                <hr/>
                            </li>
                            <li><span><img alt="others" src="img/others.png">Others</span><span
                                    class="float-xs-right text-mint">8%</span></li>
                        </ul>
                    </div>
                </div>
            </div>-->


        </div>
    </div>
</div>

<%@ include file="common/footer.jsp" %>