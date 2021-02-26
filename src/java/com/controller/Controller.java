package com.controller;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dao.Dao;
import com.modal.AddComment;
import com.modal.Admin;
import com.modal.Category;
import com.modal.Faq;
import com.modal.InterestArea;
import com.modal.MakeProposal;
import com.modal.Photo;
import com.modal.Role;
import com.modal.Users;
import com.modal.Useridea;

import javax.mail.*;
import javax.mail.internet.*;

import net.sf.json.JSON;
import net.sf.json.JSONObject;
import antlr.PrintWriterWithSMAP;
import com.mailservices.EmailSendCustom;
import com.mailservices.ReigstrationMail;
import com.modal.AdminPic;
import com.modal.Advertisement;
import com.modal.Contact;
import com.modal.ProfilePhoto;
import com.modal.Story;
import static java.lang.Math.random;
import javax.mail.Message.RecipientType;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, maxFileSize = 1024 * 1024 * 10, maxRequestSize = 1024 * 1024 * 50)
public class Controller extends HttpServlet {

    private static final long serialVersionUID = 1L;
    Dao dao = new Dao();

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        String actioncode = request.getParameter("actioncode");
        HttpSession httpsession = request.getSession();
        String success = "fail";
        Random r = new Random();
        if (actioncode.equals("viewrole")) {

            List<Role> roles = dao.viewrole();
            httpsession.setAttribute("roles", roles);
            response.sendRedirect(request.getContextPath() + "/wp-content/portal/viewrole.jsp");
        }
        if (actioncode.equals("viewidea")) {

            List<Useridea> idea = dao.viewidea();
            httpsession.setAttribute("idea", idea);
            List<AddComment> comment = dao.viewcomment();
            httpsession.setAttribute("comment", comment);
            response.sendRedirect(request.getContextPath() + "/wp-content/info/viewidea.jsp");
        }
        if (actioncode.equals("viewallidea")) {
            List<Advertisement> adver = dao.fetchAllAdevertisements();
            httpsession.setAttribute("adv", adver);
            List<Useridea> idea = dao.viewidea();
            httpsession.setAttribute("idea", idea);
            List<AddComment> comment = dao.viewcomment();
            httpsession.setAttribute("comment", comment);
            response.sendRedirect(request.getContextPath() + "/wp-content/info/index.jsp");
        }
        if (actioncode.equals("manageidea")) {

            List<Useridea> idea = dao.viewidea();
            httpsession.setAttribute("idea", idea);
            List<AddComment> comment = dao.viewcomment();
            httpsession.setAttribute("comment", comment);
            response.sendRedirect(request.getContextPath() + "/wp-content/portal/manageidea.jsp");
        }
        if (actioncode.equals("viewideaDetails")) {

            int ideaId = Integer.parseInt(request.getParameter("ideaId"));
            List<Useridea> idea = dao.viewideaDetails(ideaId);
            httpsession.setAttribute("idea", idea);
            List<AddComment> comment = dao.viewcommentDetail(ideaId);
            httpsession.setAttribute("comment", comment);
            response.sendRedirect(request.getContextPath() + "/wp-content/info/idea_details.jsp");
        }
        if (actioncode.equals("onlyideadetail")) {

            int ideaId = Integer.parseInt(request.getParameter("ideaId"));
            List<Useridea> idea = dao.viewideaDetails(ideaId);
            httpsession.setAttribute("idea", idea);
            List<AddComment> comment = dao.viewcommentDetail(ideaId);
            httpsession.setAttribute("comment", comment);
            response.sendRedirect(request.getContextPath() + "/wp-content/info/onlyideadetail.jsp");
        }

        if (actioncode.equals("viewfaq")) {

            List<Faq> faqs = dao.viewfaq();
            httpsession.setAttribute("faqs", faqs);
            response.sendRedirect(request.getContextPath() + "/wp-content/portal/viewfaq.jsp");
        }

        if (actioncode.equals("investor_detail")) {
            int user_id = Integer.parseInt(request.getParameter("investor_id"));
            List<Users> user = dao.viewuser(user_id);
            httpsession.setAttribute("user", user);
            List<InterestArea> area = dao.investordetail(user_id);
            httpsession.setAttribute("area", area);
            response.sendRedirect(request.getContextPath() + "/wp-content/info/investor_detail.jsp");
        }

        if (actioncode.equals("viewfaquser")) {

            List<Faq> faqs = dao.viewfaq();
            httpsession.setAttribute("faqs", faqs);
            response.sendRedirect(request.getContextPath() + "/wp-content/info/faq.jsp");
        }
        if (actioncode.equals("viewphoto")) {

            List<Photo> photos = dao.viewphoto();
            httpsession.setAttribute("photos", photos);
            response.sendRedirect(request.getContextPath() + "/wp-content/portal/viewphoto.jsp");
        }
        if (actioncode.equals("viewuser")) {
            int p = Integer.parseInt(request.getParameter("p"));

            int user_id = Integer.parseInt(request.getParameter("user_id"));
            List<ProfilePhoto> photo = dao.getProfilepic(user_id);
            if (!photo.isEmpty()) {
                Iterator itr1 = photo.iterator();
                ProfilePhoto pobj = null;
                while (itr1.hasNext()) {
                    pobj = (ProfilePhoto) itr1.next();
                    httpsession.setAttribute("photo", pobj.getPath());
                }
            } else {
                httpsession.setAttribute("photo", "");
            }
            List<Users> user = dao.viewuser(user_id);
            httpsession.setAttribute("user", user);
            response.sendRedirect(request.getContextPath() + "/wp-content/info/myprofile.jsp?p=" + p);
        }
        if (actioncode.equals("viewinvestor")) {

            String type = "investor";
            List<Users> user = dao.viewinvestor(type);
            httpsession.setAttribute("user", user);
            response.sendRedirect(request.getContextPath() + "/wp-content/portal/manageinvestor.jsp");
        }
        if (actioncode.equals("viewusertoadmin")) {

            String type = "users";
            List<Users> user = dao.viewinvestor(type);
            httpsession.setAttribute("user", user);
            response.sendRedirect(request.getContextPath() + "/wp-content/portal/manageuser.jsp");
        }
        if (actioncode.equals("viewinterest")) {
            int a = Integer.parseInt(request.getParameter("user_id"));
            List<InterestArea> area = dao.viewinterest(a);
            httpsession.setAttribute("area", area);
            response.sendRedirect(request.getContextPath() + "/wp-content/info/viewinterest.jsp");

        }
        if (actioncode.equals("viewproposedidea")) {
            //int a = Integer.parseInt(request.getParameter("user_id"));
            List<MakeProposal> prop = dao.viewproposedidea();
            httpsession.setAttribute("prop", prop);
            response.sendRedirect(request.getContextPath() + "/wp-content/info/proposed_idea.jsp");

        }
        if (actioncode.equals("viewselectidea")) {
            int a = Integer.parseInt(request.getParameter("user_id"));
            List prop = dao.viewselectidea(a);
            httpsession.setAttribute("prop", prop);
            response.sendRedirect(request.getContextPath() + "/wp-content/info/currentidea.jsp");

        }
        if (actioncode.equals("viewstory")) {
            int a = Integer.parseInt(request.getParameter("user_id"));
            List st = dao.viewstory(a);
            httpsession.setAttribute("st", st);
            response.sendRedirect(request.getContextPath() + "/wp-content/info/viewstory.jsp");

        }
         if (actioncode.equals("viewstoryadmin")) {
            int a = Integer.parseInt(request.getParameter("user_id"));
            List st = dao.viewstory(a);
            httpsession.setAttribute("st", st);
            response.sendRedirect(request.getContextPath() + "/wp-content/portal/viewstory.jsp");

        }

        if (actioncode.equals("deleterole")) {

            String role_id = request.getParameter("role_id");
            String active_flag = null;
            int role = dao.deleterole(role_id);
            if (role == 1) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewrole");
            }
        }
        if (actioncode.equals("deleteuser")) {

            int user_id = Integer.parseInt(request.getParameter("user_id"));
            String active_flag = null;
            int role = dao.deleteuser(user_id);
            //if(role==1){
            response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewusertoadmin");
            //	}

        }
        if (actioncode.equals("deleteinvestor")) {

            int user_id = Integer.parseInt(request.getParameter("user_id"));
            String active_flag = null;
            int role = dao.deleteuser(user_id);
            //if(role==1){
            response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewinvestor");
            //	}

        }
        if (actioncode.equals("blockuser")) {

            int user_id = Integer.parseInt(request.getParameter("user_id"));
            int active_flag = 1;
            int role = dao.blockuser(user_id, active_flag);
            //if(role==1){
            response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewusertoadmin");
            //	}

        }
        if (actioncode.equals("unblockuser")) {

            int user_id = Integer.parseInt(request.getParameter("user_id"));
            int active_flag = 0;
            int role = dao.blockuser(user_id, active_flag);
            //if(role==1){
            response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewusertoadmin");
            //	}

        }
        if (actioncode.equals("blockinvestor")) {

            int user_id = Integer.parseInt(request.getParameter("user_id"));
            int active_flag = 1;
            int role = dao.blockuser(user_id, active_flag);
            //if(role==1){
            response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewinvestor");
            //	}

        }
        if (actioncode.equals("unblockinvestor")) {

            int user_id = Integer.parseInt(request.getParameter("user_id"));
            int active_flag = 0;
            int role = dao.blockuser(user_id, active_flag);
            //if(role==1){
            response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewinvestor");
            //	}

        }
        if (actioncode.equals("deletephoto")) {

            String photo_id = request.getParameter("photo_id");
            String active_flag = null;
            int photo = dao.deletephoto(photo_id);
            if (photo == 1) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewphoto");
            }
        }
        if (actioncode.equals("deleteAdvertisement")) {
            int id = Integer.parseInt(request.getParameter("id"));
            int i = dao.deletAdv(id);
            response.sendRedirect(request.getContextPath() + "/Controller?actionCode=viewAllAdvertisements");
        }
        if (actioncode.equals("logout")) {
            httpsession.removeAttribute("username");
            httpsession.invalidate();
            HttpSession httpsession2 = request.getSession();

            httpsession2.setAttribute("logout", "logout");

            response.sendRedirect(request.getContextPath() + "/wp-content/portal/login.jsp");
        }
        if (actioncode.equals("logoutuser")) {
            httpsession.removeAttribute("username");
            httpsession.removeAttribute("user_id");
            httpsession.removeAttribute("type");
            httpsession.removeAttribute("email");
            httpsession.invalidate();
            HttpSession httpsession2 = request.getSession();

            httpsession2.setAttribute("logout", "logout");

            response.sendRedirect(request.getContextPath() + "/wp-content/info/login.jsp");
        }
        if (actioncode.equals("updaterole")) {

            int role_id = Integer.parseInt(request.getParameter("role_id"));
            List<Role> roles = dao.updaterole(role_id);
            httpsession.setAttribute("roles", roles);
            response.sendRedirect(request.getContextPath() + "/wp-content/portal/updaterole.jsp");
        }
        if (actioncode.equals("viewcontactus")) {

            List<Contact> cont = dao.viewcontactus(0);
            httpsession.setAttribute("cont", cont);
            if (cont != null) {
                response.sendRedirect(request.getContextPath() + "/wp-content/portal/viewquery.jsp");
            } else {
                response.sendRedirect(request.getContextPath() + "/wp-content/portal/index.jsp");
            }
        }
        if (actioncode.equals("viewstorypage")) {

            int pid = Integer.parseInt(request.getParameter("proposal_id"));
            List prop = dao.viewstoryadd(pid);
            httpsession.setAttribute("prop", prop);
            response.sendRedirect(request.getContextPath() + "/wp-content/info/addStory.jsp");

        }
        if (actioncode.equals("viewAllAdvertisements")) {

            List<Advertisement> adver = dao.fetchAllAdevertisements();
            httpsession.setAttribute("adv", adver);
            response.sendRedirect(request.getContextPath() + "/wp-content/portal/viewAdvertisements.jsp");

        }
        if (actioncode.equals("adminprofile")) {
            int id = Integer.parseInt(request.getParameter("id"));
            List<AdminPic> photo = dao.getProfilepicadmin(id);
            if (!photo.isEmpty()) {
                Iterator itr1 = photo.iterator();
                AdminPic pobj = null;
                while (itr1.hasNext()) {
                    pobj = (AdminPic) itr1.next();
                    httpsession.setAttribute("photo", pobj.getPath());
                }
            } else {
                httpsession.setAttribute("photo", "");
            }
            List<Admin> admin = dao.getAdminProfile(id);
            httpsession.setAttribute("admin", admin);
            response.sendRedirect(request.getContextPath() + "/wp-content/portal/editprofile.jsp?i=" + r.nextInt());
        }

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     * response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NullPointerException {
        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        String actioncode = request.getParameter("actioncode");
        HttpSession httpsession = request.getSession();

        if (actioncode.equals("insertrole")) {
            Role role = new Role();
            Integer role_id = 0;
            role.setActive_flag("0");
            role.setRole_type(request.getParameter("role_type"));
            role_id = dao.insertrole(role);
            if (role_id > 0) {
                response.sendRedirect("wp-content/portal/addrole.jsp?msg=sucess");
            } else {
                response.sendRedirect("wp-content/portal/addrole.jsp?msg=failed");
            }
        }
        if (actioncode.equals("updateroledata")) {

            Role role = new Role();

            role.setRole_id(Integer.parseInt(request.getParameter("role_id")));
            role.setRole_type(request.getParameter("role_type"));
            role.setActive_flag("0");
            String sucess = "";
            sucess = dao.updateroledata(role);

            response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewrole");
        }
        if (actioncode.equals("updateprofile")) {

            Users user = new Users();
            Date date = new Date();

            int user_id = Integer.parseInt(request.getParameter("user_id"));
            user.setUser_id(user_id);
            user.setUsername(request.getParameter("username"));
            user.setFullname(request.getParameter("fullname"));
            user.setPassword(request.getParameter("password"));
            user.setGender(request.getParameter("gender"));
            user.setType(request.getParameter("type"));
            user.setEmail(request.getParameter("email"));
            user.setMobile(request.getParameter("mobile"));
            user.setUpdated_date(date);
            String sucess = "";
            sucess = dao.updateprofile(user);
            if (sucess.equals("success")) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewuser&p=0&user_id=" + user_id);
            }
        }
        if (actioncode.equals("updateadmin")) {

            Admin admin = new Admin();

            int admin_id = Integer.parseInt(request.getParameter("admin_id"));
            admin.setAdmin_id(admin_id);
            admin.setUsername(request.getParameter("username"));
            admin.setPassword(request.getParameter("password"));
            admin.setEmail(request.getParameter("email"));
            admin.setPnumber(request.getParameter("mobile"));
            String sucess = "";
            sucess = dao.updateadmin(admin);
            if (sucess.equals("success")) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=adminprofile&id=" + admin_id);
            }
        }
        if (actioncode.equals("insertfaq")) {
            Faq faq = new Faq();
            Integer faq_id = 0;

            faq.setFaq_que(request.getParameter("faq_que"));
            faq.setFaq_ans(request.getParameter("faq_ans"));
            faq_id = dao.insertfaq(faq);
            if (faq_id > 0) {
                response.sendRedirect("wp-content/portal/faq.jsp");
            }
        }
        if (actioncode.equals("insertuser")) {
            Users user = new Users();
            Date date = new Date();

            int flag = 0;
            user.setUsername(request.getParameter("username"));
            user.setFullname(request.getParameter("fullname"));
            user.setPassword(request.getParameter("password"));
            user.setGender(request.getParameter("gender"));
            user.setType(request.getParameter("type"));
            user.setEmail(request.getParameter("email"));
            user.setMobile(request.getParameter("mobile"));
            user.setCreated_date(date);
            user.setColor("orange");
            user.setActive_flag(0);
            flag = dao.insertuser(user);
            if (flag > 0) {
                String sendTo = request.getParameter("email");
                String mess = "Your User Account is Created"
                        + "    Welcome to ideadock .";
                String subject = "Registration Sucessful";
                boolean a = EmailSendCustom.sendMail(mess, sendTo, subject);
                if (a == true) {
                    response.sendRedirect("wp-content/info/login.jsp");
                } else {
                    response.sendRedirect("wp-content/info/register.jsp");
                }
            }
        }
        if (actioncode.equals("insertidea")) {
            Useridea idea = new Useridea();

            int flag = 0;
            Date date = new Date();
            idea.setTitle(request.getParameter("title"));
            idea.setUser_id(Integer.parseInt(request.getParameter("user_id")));
            idea.setField(request.getParameter("field"));
            idea.setCost(Integer.parseInt(request.getParameter("cost")));
            idea.setDescription(request.getParameter("description"));
            idea.setTechdescription(request.getParameter("techdescription"));
            idea.setCreated_date(date);

            flag = dao.insertidea(idea);
            if (flag > 0) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewidea");
            } else {
                response.sendRedirect(request.getContextPath() + "/wp-content/info/add_idea.jsp?msg=0");

            }
        }
        if (actioncode.equals("addStory")) {
            int user_id = Integer.parseInt(request.getParameter("user_id"));
            int proposal_id = Integer.parseInt(request.getParameter("proposal_id"));
            String story = request.getParameter("description");
            Date date = new Date();

            int flag = 0;

            Story s = new Story();
            s.setProposal_id(proposal_id);
            s.setUser_id(user_id);
            s.setStory(story);
            s.setLikes(0);
            s.setCreated_date(date);

            flag = dao.insertStory(s);

            if (flag > 0) {
                response.sendRedirect("wp-content/info/addStory.jsp?msg=success");
            } else {
                response.sendRedirect("wp-content/info/addStory.jsp?msg=failure");
            }

        }
        if (actioncode.equals("makeproposal")) {
            MakeProposal prop = new MakeProposal();

            int flag = 0;
            Date date = new Date();
            int ideaId = Integer.parseInt(request.getParameter("idea_id"));
            prop.setIdea_id(ideaId);
            prop.setFrom_id(Integer.parseInt(request.getParameter("from_id")));
            prop.setTo_id(Integer.parseInt(request.getParameter("to_id")));
            prop.setName(request.getParameter("name"));
            prop.setMessage(request.getParameter("message"));
            prop.setEmail(request.getParameter("email"));
            prop.setAccept_status(0);
            prop.setCreated_date(date);
            flag = dao.addproposal(prop);
            int id = Integer.parseInt(request.getParameter("to_id"));
            List<Object> Email = dao.selectPropEmail(id);
            String toEmail = "";
            if (!Email.isEmpty() && Email != null) {
                Iterator<Object> it = Email.iterator();
                Object ideaObj = null;
                int i = 1;
                while (it.hasNext()) {
                    ideaObj = (Object) it.next();

                    toEmail = ideaObj.toString();
                }
            }
            if (flag > 0) {

                String sendTo = toEmail;
                String mess = "Welcome,\n"
                        + "Someone made proposal to you."
                        + "please Check Now";
                String subject = "Proposal Notification";
                boolean a = EmailSendCustom.sendMail(mess, sendTo, subject);
                if (a == true) {
                    response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewideaDetails&ideaId=" + ideaId);
                } else {
                    response.sendRedirect(request.getContextPath() + "/wp-content/info/idea_details.jsp?msg=7");
                }
            }
        }
        if (actioncode.equals("currentidea")) {

        }
        if (actioncode.equals("acceptproposal")) {
            int id = Integer.parseInt(request.getParameter("id"));
            int area = dao.acceptproposal(id);
            //httpsession.setAttribute("area",area);
            out.print(area);
            //response.sendRedirect(request.getContextPath() + "/wp-content/info/investor_detail.jsp");
        }
        if (actioncode.equals("editIdeaDesc")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String desc = request.getParameter("desc");
            Date date = new Date();
            int result = dao.editIdeaDesc(id, desc, date);
            //httpsession.setAttribute("area",area);
            if (result > 0) {
                out.print("done");
            } else {
                out.print(0);
            }
            //response.sendRedirect(request.getContextPath() + "/wp-content/info/investor_detail.jsp");
        }
        if (actioncode.equals("updateideaDetails")) {
            int idea_id = Integer.parseInt(request.getParameter("idea_id"));
            String tdesc = request.getParameter("techdescription");
            String title = request.getParameter("title");
            String field = request.getParameter("field");
            int cost = Integer.parseInt(request.getParameter("cost"));
            Date date = new Date();
            int result = dao.updateIdea(idea_id, title, field, cost, tdesc, date);
            //httpsession.setAttribute("area",area);
            if (result > 0) {
                List<Useridea> idea = dao.viewideaDetails(idea_id);
                httpsession.setAttribute("idea", idea);
                List<AddComment> comment = dao.viewcommentDetail(idea_id);
                httpsession.setAttribute("comment", comment);
                response.sendRedirect(request.getContextPath() + "/wp-content/info/idea_details.jsp?msg=0");
            } else {
                response.sendRedirect("wp-content/info/idea_details.jsp?msg=1");
            }
            //response.sendRedirect(request.getContextPath() + "/wp-content/info/investor_detail.jsp");
        }
        if (actioncode.equals("rejectproposal")) {
            int id = Integer.parseInt(request.getParameter("id"));
            int area = dao.rejectproposal(id);
            //httpsession.setAttribute("area",area);
            out.print(area);
            //response.sendRedirect(request.getContextPath() + "/wp-content/info/investor_detail.jsp");
        }
        if (actioncode.equals("insertadmin")) {
            Admin admin = new Admin();
            Integer admin_id = 0;

            admin.setUsername(request.getParameter("username"));
            admin.setPassword(request.getParameter("password"));
            admin.setPnumber(request.getParameter("pnumber"));
            admin.setEmail(request.getParameter("email"));
            admin_id = dao.insertadmin(admin);
            if (admin_id > 0) {
                String sendTo = request.getParameter("email");
                String mess = "Your Admin Account is Created"
                        + "    Welcome to ideadock Team.";
                String subject = "Admin Registration Sucessful";
                boolean a = EmailSendCustom.sendMail(mess, sendTo, subject);
                if (a == true) {
                    response.sendRedirect("wp-content/portal/login.jsp");
                }
            }

        }
        if (actioncode.equals("checkadmin")) {
            int a = 0;
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            List admin = dao.getAdmin(email, password);
            if (!admin.isEmpty()) {

                Iterator itr = admin.iterator();
                Admin adminObject = null;

                while (itr.hasNext()) {
                    adminObject = (Admin) itr.next();
                    if (email.equals(adminObject.getEmail()) && password.equals(adminObject.getPassword())) {
                        List<AdminPic> photo = dao.getProfilepicadmin(adminObject.getAdmin_id());
                        if (!photo.isEmpty()) {
                            Iterator itr1 = photo.iterator();
                            AdminPic pobj = null;
                            while (itr1.hasNext()) {
                                pobj = (AdminPic) itr1.next();
                                httpsession.setAttribute("photo", pobj.getPath());
                            }
                        } else {
                            httpsession.setAttribute("photo", "");
                        }
                        List<Useridea> idea = dao.viewidea();
                        httpsession.setAttribute("idea", idea);
                        List<Users> user = dao.getUsers();
                        httpsession.setAttribute("user", user);
                        List<MakeProposal> prop = dao.getSuccessProp();
                        httpsession.setAttribute("prop", prop);
                        List<Story> st = dao.getSuccessStory();
                        httpsession.setAttribute("st", st);
                        httpsession.setAttribute("username", adminObject.getUsername());
                        httpsession.setAttribute("email", adminObject.getEmail());
                        httpsession.setAttribute("admin_id", adminObject.getAdmin_id());
                        response.sendRedirect("wp-content/portal/index.jsp");
                    }
                }
            } else {
                response.sendRedirect("wp-content/portal/login.jsp?msg=1");
            }
        }
        if (actioncode.equals("checkUsername")) {
            int a = 0;
            String username = request.getParameter("username");
            List user = dao.checkUser(username);
            //out.print(username);
            if (user.isEmpty()) {
                out.print(1);
            } else {
                out.print(0);
            }

        }
        if (actioncode.equals("deletecontact")) {
            int cid = Integer.parseInt(request.getParameter("id"));
            int cont = dao.deletecontactus(cid);
            if (cont == 0) {
                out.print(0);
            } else {
                out.print(1);
            }
        }
        if (actioncode.equals("checkEmail")) {
            int a = 0;
            String email = request.getParameter("email");
            List user = dao.checkEmail(email);
            //out.print(username);
            if (user.isEmpty()) {
                out.print(1);
            } else {
                out.print(0);
            }

        }
        if (actioncode.equals("contactus")) {
            String email = request.getParameter("email");
            String name = request.getParameter("name");
            String mes = request.getParameter("message");
            int flg = 0;
            Date date = new Date();
            Contact ct = new Contact();
            ct.setEmail(email);
            ct.setMes(mes);
            ct.setName(name);
            ct.setStatus(0);
            ct.setCreated_date(date);
            flg = dao.insertContact(ct);

//            if (flg > 0) {
//              boolean a =   ReigstrationMail.sendEmail( "hiii",email);
//            if(a == true){
//                response.sendRedirect("wp-content/info/contact.jsp?msg=failure");
//              }
//            }
            if (flg > 0) {
                String sendTo = email;
                String mess = "ThankYou for Contacting us."
                        + "We Will get back to you Soon";
                String subject = "Contact IdeaDock";
                boolean a = EmailSendCustom.sendMail(mess, email, subject);
                if (a == true) {
                    response.sendRedirect("wp-content/info/contact.jsp?msg=suceess");
                }
            }
        }

        if (actioncode.equals("forgotpass")) {
            String email = request.getParameter("email");
            List user = dao.forgotUser(email);
            if (!user.isEmpty()) {
                Iterator itr = user.iterator();
                Users adminObject = null;
                String password = "";
                while (itr.hasNext()) {
                    adminObject = (Users) itr.next();
                    if (email.equals(adminObject.getEmail())) {
                        password = adminObject.getPassword();
                        String sendTo = email;
                        String mess = "Dear user Your password is::"
                                + password;
                        String subject = "Contact IdeaDock";
                        boolean a = EmailSendCustom.sendMail(mess, email, subject);
                        if (a == true) {
                            response.sendRedirect("wp-content/info/login.jsp?msg=6");
                        } else {
                            response.sendRedirect("wp-content/info/forgot.jsp?msg=5");
                        }
                    }
                }
            } else {
                response.sendRedirect("wp-content/info/forgot.jsp?msg=7");
            }
        }
        if (actioncode.equals("forgotpassAdmin")) {
            String email = request.getParameter("email");
            List user = dao.forgotAdmin(email);
            if (!user.isEmpty()) {
                Iterator itr = user.iterator();
                Admin adminObject = null;
                String password = "";
                while (itr.hasNext()) {
                    adminObject = (Admin) itr.next();
                    if (email.equals(adminObject.getEmail())) {
                        password = adminObject.getPassword();
                        String sendTo = email;
                        String mess = "Dear user Your password is::"
                                + password;
                        String subject = "Contact IdeaDock";
                        boolean a = EmailSendCustom.sendMail(mess, email, subject);
                        if (a == true) {
                            response.sendRedirect("wp-content/portal/login.jsp?msg=6");
                        } else {
                            response.sendRedirect("wp-content/portal/forgot.jsp?msg=5");
                        }
                    }
                }
            } else {
                response.sendRedirect("wp-content/portal/forgot.jsp?msg=7");
            }
        }

        //checkuser
        if (actioncode.equals("checkuser")) {
            int a = 0;
            int b = 1;
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String type = request.getParameter("type");

            if (type.equals("users")) {
                List user = dao.getUser(email, password, type);
                if (!user.isEmpty()) {
                    Iterator itr = user.iterator();
                    Users adminObject = null;

                    while (itr.hasNext()) {
                        adminObject = (Users) itr.next();
                        if (email.equals(adminObject.getEmail()) && password.equals(adminObject.getPassword()) && adminObject.getActive_flag() == 0) {
                            List<ProfilePhoto> photo = dao.getProfilepic(adminObject.getUser_id());
                            if (!photo.isEmpty()) {
                                Iterator itr1 = photo.iterator();
                                ProfilePhoto pobj = null;
                                while (itr1.hasNext()) {
                                    pobj = (ProfilePhoto) itr1.next();
                                    httpsession.setAttribute("photo", pobj.getPath());
                                }
                            } else {
                                httpsession.setAttribute("photo", "");
                            }
                            httpsession.setAttribute("color", adminObject.getColor());
                            httpsession.setAttribute("username", adminObject.getUsername());
                            httpsession.setAttribute("email", adminObject.getEmail());
                            httpsession.setAttribute("user_id", adminObject.getUser_id());
                            httpsession.setAttribute("type", adminObject.getType());
                            a = 1;
                        } else {
                            b = 0;
                        }

                    }

                }
            } else {
                response.sendRedirect("wp-content/info/login.jsp?msg=0");
            }
            if (a == 1) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewallidea");
            } else if (b == 0) {
                response.sendRedirect("wp-content/info/login.jsp?msg=8");
            } else {
                response.sendRedirect("wp-content/info/login.jsp?msg=1");
            }
        }
        if (actioncode.equals("updatethemeColor")) {
            String color = request.getParameter("color");
            int user_id = Integer.parseInt(request.getParameter("user_id"));
            int a = dao.updateTheme(user_id, color);
            if (a > 0) {
                out.print(1);
            } else {
                out.print(2);
            }

        }
        if (actioncode.equals("addinterest")) {
            Date date = new Date();
            InterestArea area = new InterestArea();
            int a = Integer.parseInt(request.getParameter("user_id"));
            area.setTopic(request.getParameter("topic"));
            area.setAmount(request.getParameter("amount"));
            area.setDescription(request.getParameter("description"));
            area.setUser_id(a);
            area.setCreated_date(date);
            int flag = dao.addinterest(area);

            if (flag > 0) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewinterest&user_id=" + a);
            }

        }
        if (actioncode.equals("addcomment")) {
            AddComment comment = new AddComment();
            //int a = Integer.parseInt(request.getParameter("user_id"));
            Date date = new Date();
            comment.setIdea_id(Integer.parseInt(request.getParameter("idea_id")));
            comment.setUser_id(Integer.parseInt(request.getParameter("user_id")));
            comment.setUser_name(request.getParameter("user_name"));
            comment.setMessage(request.getParameter("message"));
            comment.setCreated_date(date);
            int flag = dao.addinterest(comment);

            if (flag > 0) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewallidea");
            }

        }
        if (actioncode.equals("checkinvestor")) {
            int a = 0;
            int b = 1;
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String type = request.getParameter("type");
            if (type.equals("investor")) {
                List user = dao.getUser(email, password, type);
                if (!user.isEmpty()) {
                    Iterator itr = user.iterator();
                    Users adminObject = null;

                    while (itr.hasNext()) {
                        adminObject = (Users) itr.next();
                        if (email.equals(adminObject.getEmail()) && password.equals(adminObject.getPassword()) && adminObject.getActive_flag() == 0) {
                            List<ProfilePhoto> photo = dao.getProfilepic(adminObject.getUser_id());
                            if (!photo.isEmpty()) {
                                Iterator itr1 = photo.iterator();
                                ProfilePhoto pobj = null;
                                while (itr1.hasNext()) {
                                    pobj = (ProfilePhoto) itr1.next();
                                    httpsession.setAttribute("photo", pobj.getPath());
                                }
                            } else {
                                httpsession.setAttribute("photo", "");
                            }
                            httpsession.setAttribute("color", adminObject.getColor());

                            httpsession.setAttribute("username", adminObject.getUsername());
                            httpsession.setAttribute("email", adminObject.getEmail());
                            httpsession.setAttribute("user_id", adminObject.getUser_id());
                            httpsession.setAttribute("type", adminObject.getType());
                            a = 1;
                            b = 1;
                        } else {
                            b = 0;
                        }

                    }

                }
            } else {
                response.sendRedirect("wp-content/info/login.jsp?msg=2");
            }
            if (a == 1) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewallidea");
            } else if (b == 0) {
                response.sendRedirect("wp-content/info/login.jsp?msg=8");
            } else {
                response.sendRedirect("wp-content/info/login.jsp?msg=1");
            }
        }
        ////////////////////////////////////////////////////////////////
        //addimage   
        if (actioncode.equals("insertprofilepic")) {
            //G:\Eclipse project\IdeaDock\WebContent\wp-content\portal
//            E:\workspac\IdeaDock\WebContent\wp-content\portal
//E:\netbeansideadock\IdeaDockNetBeans\web\wp-content\info\profilepic
            ProfilePhoto photo = new ProfilePhoto();
            photo.setActive_flag(0);
            String savePath1 = "E:" + File.separator + "netbeansideadock" + File.separator + "IdeaDockNetBeans"
                    + File.separator + "web" + File.separator + "wp-content" + File.separator + "info" + File.separator + "profilepic";

            File fileSaveDir2 = new File(savePath1);
            if (!fileSaveDir2.exists()) {

                fileSaveDir2.mkdir();
            }
            Part part2 = request.getPart("profilepic");
            long imgsize = (part2.getSize()) / 1048576;
//            if (imgsize > 0) {
//                response.sendRedirect("wp-content/info/myprofile.jsp?msg=0");
//            } else {

            String fileName2 = extractFileName(part2);
            part2.write(savePath1 + File.separator + fileName2);
            String Filepath2 = savePath1 + File.separator + fileName2;
            photo.setPath(fileName2);
            //   }
            Integer photo_id = 0;
            Date date = new Date();
            photo.setUser_id(Integer.parseInt(request.getParameter("user_id")));
            photo.setUpdated_date(date);
            int user_id = Integer.parseInt(request.getParameter("user_id"));
            photo_id = dao.insertpic(photo);

            if (photo_id.intValue() > 0) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewuser&user_id=" + user_id);
            } else {
                response.sendRedirect("wp-content/info/myprofile.jsp?msg=2");
            }
        }
        if (actioncode.equals("updateprofilepic")) {
            //G:\Eclipse project\IdeaDock\WebContent\wp-content\portal
//            E:\workspac\IdeaDock\WebContent\wp-content\portal
//E:\netbeansideadock\IdeaDockNetBeans\web\wp-content\info\profilepic
            int user_id = Integer.parseInt(request.getParameter("user_id"));

            List<ProfilePhoto> file = dao.getProfilepic(user_id);
            int id = 0;
            String filename = "";
            if (!file.isEmpty()) {
                Iterator itr1 = file.iterator();
                ProfilePhoto pobj = null;
                while (itr1.hasNext()) {
                    pobj = (ProfilePhoto) itr1.next();
                    id = pobj.getId();
                    filename = pobj.getPath();
                }
            }
            ProfilePhoto photo = new ProfilePhoto();
            photo.setActive_flag(0);
            String savePath1 = "E:" + File.separator + "netbeansideadock" + File.separator + "IdeaDockNetBeans"
                    + File.separator + "web" + File.separator + "wp-content" + File.separator + "info" + File.separator + "profilepic";
            File fdelete = new File(savePath1 + File.separator + filename);

            File fileSaveDir2 = new File(savePath1);
            if (!fileSaveDir2.exists()) {

                fileSaveDir2.mkdir();
            }
            Part part2 = request.getPart("profilepic");
            long imgsize = (part2.getSize()) / 1048576;
//            if (imgsize > 0) {
//                response.sendRedirect("wp-content/info/myprofile.jsp?msg=0");
//            } else {

            String fileName2 = extractFileName(part2);
            part2.write(savePath1 + File.separator + fileName2);
            String Filepath2 = savePath1 + File.separator + fileName2;
            photo.setPath(fileName2);
            //   }
            int photo_id = 0;
            Date date = new Date();
            photo.setId(id);
            photo.setUser_id(Integer.parseInt(request.getParameter("user_id")));
            photo.setUpdated_date(date);
            photo.setActive_flag(0);
            photo_id = dao.updatepic(photo);

            if (photo_id > 0) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=viewuser&p=1&user_id=" + user_id);
            } else {
                response.sendRedirect("wp-content/info/myprofile.jsp?msg=2");
            }
        }
        if (actioncode.equals("insertprofilepicadmin")) {
            //G:\Eclipse project\IdeaDock\WebContent\wp-content\portal
//            E:\workspac\IdeaDock\WebContent\wp-content\portal
//E:\netbeansideadock\IdeaDockNetBeans\web\wp-content\info\profilepic
            AdminPic photo = new AdminPic();
            photo.setActive_flag(0);
            String savePath1 = "E:" + File.separator + "netbeansideadock" + File.separator + "IdeaDockNetBeans"
                    + File.separator + "web" + File.separator + "wp-content" + File.separator + "portal" + File.separator + "profilepic";

            File fileSaveDir2 = new File(savePath1);
            if (!fileSaveDir2.exists()) {

                fileSaveDir2.mkdir();
            }
            Part part2 = request.getPart("profilepic");
            long imgsize = (part2.getSize()) / 1048576;
//            if (imgsize > 0) {
//                response.sendRedirect("wp-content/info/myprofile.jsp?msg=0");
//            } else {

            String fileName2 = extractFileName(part2);
            part2.write(savePath1 + File.separator + fileName2);
            String Filepath2 = savePath1 + File.separator + fileName2;
            photo.setPath(fileName2);
            //   }
            Integer photo_id = 0;
            Date date = new Date();
            photo.setAdmin_id(Integer.parseInt(request.getParameter("user_id")));
            photo.setUpdated_date(date);
            int user_id = Integer.parseInt(request.getParameter("user_id"));
            photo_id = dao.insertpicadmin(photo);

            if (photo_id.intValue() > 0) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=adminprofile&id=" + user_id);
            } else {
                response.sendRedirect("wp-content/portal/editprofile.jsp?msg=2");
            }
        }
        if (actioncode.equals("updateprofilepicadmin")) {
            //G:\Eclipse project\IdeaDock\WebContent\wp-content\portal
//            E:\workspac\IdeaDock\WebContent\wp-content\portal
//E:\netbeansideadock\IdeaDockNetBeans\web\wp-content\info\profilepic
            int user_id = Integer.parseInt(request.getParameter("user_id"));
            int id = 0;
            List<AdminPic> file = dao.getProfilepicadmin(user_id);
            String filename = "";
            if (!file.isEmpty()) {
                Iterator itr1 = file.iterator();
                AdminPic pobj = null;
                while (itr1.hasNext()) {
                    pobj = (AdminPic) itr1.next();
                    filename = pobj.getPath();
                    id = pobj.getId();
                }
            }
            AdminPic photo = new AdminPic();
            photo.setActive_flag(0);
            String savePath1 = "E:" + File.separator + "netbeansideadock" + File.separator + "IdeaDockNetBeans"
                    + File.separator + "web" + File.separator + "wp-content" + File.separator + "portal" + File.separator + "profilepic";
            File fdelete = new File(savePath1 + File.separator + filename);

            if (fdelete.exists()) {
                if (fdelete.delete()) {
                }
            }
            File fileSaveDir2 = new File(savePath1);
            if (!fileSaveDir2.exists()) {

                fileSaveDir2.mkdir();
            }
            Part part2 = request.getPart("profilepic");
            long imgsize = (part2.getSize()) / 1048576;
//            if (imgsize > 0) {
//                response.sendRedirect("wp-content/info/myprofile.jsp?msg=0");
//            } else {

            String fileName2 = extractFileName(part2);
            part2.write(savePath1 + File.separator + fileName2);
            String Filepath2 = savePath1 + File.separator + fileName2;
            photo.setPath(fileName2);
            //   }
            int photo_id = 0;
            Date date = new Date();
            photo.setId(id);
            photo.setAdmin_id(user_id);
            photo.setAdmin_id(Integer.parseInt(request.getParameter("user_id")));
            photo.setUpdated_date(date);
            photo_id = dao.updatepicadmin(photo);

            if (photo_id > 0) {
                response.sendRedirect(request.getContextPath() + "/Controller?actioncode=adminprofile&id=" + user_id);
            } else {
                response.sendRedirect("wp-content/portal/editprofile.jsp?msg=2");
            }
        }
        if (actioncode.equals("insertphoto")) {
            //G:\Eclipse project\IdeaDock\WebContent\wp-content\portal
//            E:\workspac\IdeaDock\WebContent\wp-content\portal
//E:\netbeansideadock\IdeaDockNetBeans\web\wp-content\portal\photo

/**/
            Photo photo = new Photo();
            photo.setActive_flag("0");

            String savePath1 = "C:" + File.separator + "Users" + File.separator + "HP 15AB522TX"
                    + File.separator + "Documents" + File.separator + "NetBeansProjects" + File.separator + "Ideadock" 
                    +File.separator + "IdeaDockNetBeans" + File.separator + "web" + File.separator + "wp-content" 
                    + File.separator + "portal" + File.separator + "photo";


            File fileSaveDir2 = new File(savePath1);
            if (!fileSaveDir2.exists()) {

                fileSaveDir2.mkdir();
            }
            Part part2 = request.getPart("photo");
            long imgsize = (part2.getSize()) / 1048576;
            if (imgsize > 0) {

                response.sendRedirect(request.getContextPath() + "/wp-content/portal/addimage.jsp?img=0");
            } else {

                String fileName2 = extractFileName(part2);
                part2.write(savePath1 + File.separator + fileName2);
                String Filepath2 = savePath1 + File.separator + fileName2;
                photo.setPhoto(fileName2);
            }
            Integer photo_id = 0;
            photo.setTitle(request.getParameter("title"));

            photo_id = dao.insertphoto(photo);

            if (photo_id.intValue() > 0) {

                response.sendRedirect(request.getContextPath() + "/wp-content/portal/addimage.jsp?msg=sucess");
            } else {
            }
        }

        if (actioncode.equals("addcategory")) {
            Category catogery = new Category();
            Integer role_id = 0;
            catogery.setCategory_name(request.getParameter("catogery_name"));
            role_id = dao.insertcategory(catogery);
            if (role_id > 0) {
                response.sendRedirect("wp-content/portal/addcategory.jsp");
            } else {
                response.sendRedirect("wp-content/portal/addrole.jsp?msg=failed");
            }
        }
        if (actioncode.equals("addAdvertisement")) {

            String title = request.getParameter("title");
            String link = request.getParameter("link");
            Advertisement add = new Advertisement();
            add.setActive(0);
            add.setLink(link);
            add.setTitle(title);
            int id = dao.setAdvertisement(add);

            String savePath1 = "E:" + File.separator + "netbeansideadock" + File.separator + "IdeaDockNetBeans"
                    + File.separator + "web" + File.separator + "wp-content" + File.separator + "portal" + File.separator + "AdvertImage";
            File fileSaveDir2 = new File(savePath1);
            if (!fileSaveDir2.exists()) {

                fileSaveDir2.mkdir();
            }
            Part part2 = request.getPart("photo");
            String fileName2 = title + ".jpg";
            part2.write(savePath1 + File.separator + fileName2);
            String Filepath2 = savePath1 + File.separator + fileName2;

            response.sendRedirect(request.getContextPath() + "/wp-content/portal/newAdvertisement.jsp?msg=success");

        }
        if (actioncode.equals("searchbar")) {
            String term = request.getParameter("searchterm");
            List search = dao.getSearchResult(term);
            httpsession.setAttribute("search", search);
            if (!search.isEmpty()) {
                response.sendRedirect(request.getContextPath() + "/wp-content/info/searchresult.jsp?msg=1");
            } else {
                response.sendRedirect(request.getContextPath() + "/wp-content/info/searchresult.jsp?msg=2");
            }

        }

    }//post method end

    private String extractFileName(Part part) {

        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {

            if (s.trim().startsWith("filename")) {

                Date date = new Date();
                SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyy-hh-mm-ss");
                String strDate = formatter.format(date);
                return strDate + ".jpg";//s.substring(s.indexOf("=") + 2, s.length() - 1);
            }

        }
        return "";
    }
}
