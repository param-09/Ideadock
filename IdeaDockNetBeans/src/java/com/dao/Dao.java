package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import java.util.Date;
import com.modal.AddComment;
import com.modal.Admin;
import com.modal.AdminPic;
import com.modal.Advertisement;
import com.modal.Category;
import com.modal.Contact;
import com.modal.Faq;
import com.modal.InterestArea;
import com.modal.MakeProposal;
import com.modal.Photo;
import com.modal.ProfilePhoto;
import com.modal.Role;
import com.modal.Story;
import com.modal.Useridea;
import com.modal.Users;
import com.mysql.jdbc.log.Log;
import com.util.HibernateConnection;

public class Dao {

    HibernateConnection hibernateConnection = new HibernateConnection();
    SessionFactory sessionFactory = hibernateConnection.getSessionFactory();

    public Integer insertrole(Role role) {
        // TODO Auto-generated method stub
        Session session = null;
        Transaction transaction = null;
        int role_id = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            role_id = (Integer) session.save(role);
            transaction.commit();
            return role_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public List<Role> viewrole() {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Role> roles = session.createCriteria(Role.class).add(Restrictions.eq("active_flag", "0")).list();
            return roles;
        } finally {
            session.close();
        }

    }

    public List<Useridea> viewideaDetails(int ideaId) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Useridea> idea = session.createCriteria(Useridea.class).add(Restrictions.eq("id", ideaId)).list();
            //String sql = "SELECT id,user_id,field,cost,description,techdescription FROM useridea";
            //List<Useridea> idea = session.createQuery(sql).list();
            return idea;

        } finally {
            session.close();
        }
    }

    public List<Useridea> viewidea() {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Useridea> idea = session.createCriteria(Useridea.class).list();
            return idea;

        } finally {
            session.close();
        }
    }

    public List<Contact> viewcontactus(int a) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Contact> idea = session.createCriteria(Contact.class).list();
            return idea;

        } finally {
            session.close();
        }
    }

    public List<MakeProposal> viewproposedidea() {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<MakeProposal> idea = session.createCriteria(MakeProposal.class).add(Restrictions.eq("accept_status", 0)).list();
            return idea;

        } finally {
            session.close();
        }
    }

    public List<MakeProposal> getSuccessProp() {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<MakeProposal> idea = session.createCriteria(MakeProposal.class).add(Restrictions.eq("accept_status", 1)).list();
            return idea;

        } finally {
            session.close();
        }
    }

    public List<Story> getSuccessStory() {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Story> idea = session.createCriteria(Story.class).list();
            return idea;

        } finally {
            session.close();
        }
    }

    public int deletecontactus(int id) {

        Session session = null;
        Transaction transaction = null;
        int sucess = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            Date date = new Date();
            Query query = session.createSQLQuery("update Contact set status=:status ,updated_date=:date where cid=:id");
            query.setParameter("status", 1);
            query.setParameter("id", id);
            query.setParameter("date", date);
            sucess = query.executeUpdate();
            transaction.commit();
            session.close();
            return sucess;
        } catch (Exception e) {
        }

        return 0;
    }

    public int updateTheme(int id, String color) {

        Session session = null;
        Transaction transaction = null;
        int sucess = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            Date date = new Date();
            Query query = session.createSQLQuery("update user_info set color =:color ,updated_date=:date WHERE user_id = :user_id");
            query.setParameter("user_id", id);
            query.setParameter("color", color);
            query.setParameter("date", date);

            sucess = query.executeUpdate();
            transaction.commit();
            session.close();
            return sucess;
        } catch (Exception e) {
        }

        return 0;
    }

    public List<Object> selectPropEmail(int user_id) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            String hql1 = "SELECT email from user_info WHERE user_id = :user_id";
            Query query = session.createSQLQuery(hql1);
            query.setParameter("user_id", user_id);

            List results = query.list();
            return results;

        } finally {
            session.close();
        }
    }

    public List<Object> viewselectidea(int user_id) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            String hql = "SELECT i.username,p.name,p.email,p.message,u.title,u.field,u.cost,"
                    + "u.description , u.techdescription,p.from_id,p.to_id,p.id FROM user_info i "
                    + "INNER JOIN Useridea u ON i.user_id = u.user_id"
                    + " INNER JOIN proposal p ON p.idea_id = u.id "
                    + " WHERE accept_status = 1 AND (p.from_id = :user_id OR p.to_id = :user_id)";
            Query query = session.createSQLQuery(hql);
            query.setParameter("user_id", user_id);

            List results = query.list();
            return results;

        } finally {
            session.close();
        }
    }

    public List<Object> getSearchResult(String term2) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            String hql = "SELECT i.*,c.id AS 'cid',c.user_id AS 'cuid',c.idea_id,c.user_name,c.message,c.created_date AS 'cdate',ui.type,p.path "
                    + "from `comment` c  "
                    + " inner join `user_info`ui on c.user_id= ui.user_id "
                    + " inner join `profilephoto` p on ui.user_id = p.user_id "
                    + " RIGHT join  `useridea` i ON  c.idea_id = i.id "
                    + "WHERE MATCH(i.title) AGAINST (:term2 IN NATURAL LANGUAGE MODE) OR"
                    + " MATCH(i.description) AGAINST (:term2 IN NATURAL LANGUAGE MODE) OR"
                    + " MATCH(i.techdescription) AGAINST (:term2 IN NATURAL LANGUAGE MODE)";
//            String hql = "SELECT i.*,c.id AS 'cid',c.user_id AS 'cuid',c.idea_id,c.user_name,c.message,c.created_date AS 'cdate',ui.type,p.path "
//                  + " from `comment` c"
//                  +"inner join `user_info`ui on c.user_id= ui.user_id "
//                  +"inner join `profilephoto` p on ui.user_id = p.user_id "
//                  +"Right JOIN `useridea` i ON c.idea_id = i.id "
//                  +"WHERE MATCH(i.title) AGAINST (:term2 IN NATURAL LANGUAGE MODE) OR"
//                   +"MATCH(i.description) AGAINST (:term2 IN NATURAL LANGUAGE MODE) OR"
//                   +"MATCH(i.techdescription) AGAINST (:term2 IN NATURAL LANGUAGE MODE)";
            Query query = session.createSQLQuery(hql);
            query.setParameter("term2", term2);

            List results = query.list();
            return results;

        } finally {
            session.close();
        }
    }

    public List<Object> viewstoryadd(int pid) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            String hql = "SELECT p.id,u.title,ui.user_id,ui.fullname,ui.email,ui.type FROM `proposal` p INNER JOIN `useridea` u ON u.id = p.idea_id INNER JOIN `user_info` ui ON (p.to_id = ui.user_id OR p.from_id = ui.user_id) WHERE p.id = :pid";
            Query query = session.createSQLQuery(hql);
            query.setParameter("pid", pid);

            List results = query.list();
            return results;

        } finally {
            session.close();
        }
    }

    public List<Users> viewuser(int id) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Users> user = session.createCriteria(Users.class).add(Restrictions.eq("user_id", id)).list();
            return user;

        } finally {
            session.close();
        }
    }

    public List<Users> viewinvestor(String id) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Users> user = session.createCriteria(Users.class).add(Restrictions.eq("type", id)).list();
            return user;

        } finally {
            session.close();
        }
    }

    public List<InterestArea> investordetail(int id) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<InterestArea> area = session.createCriteria(InterestArea.class).add(Restrictions.eq("user_id", id)).list();
            return area;
        } finally {
            session.close();
        }
    }

    public Integer insertfaq(Faq faq) {
        Session session = null;
        Transaction transaction = null;
        int faq_id = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            faq_id = (Integer) session.save(faq);
            transaction.commit();
            return faq_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public Integer addinterest(AddComment comment) {
        Session session = null;
        Transaction transaction = null;
        int faq_id = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            faq_id = (Integer) session.save(comment);
            transaction.commit();
            return faq_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public Integer insertContact(Contact ct) {
        Session session = null;
        Transaction transaction = null;
        int faq_id = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            faq_id = (Integer) session.save(ct);
            transaction.commit();
            return faq_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public Integer addproposal(MakeProposal prop) {
        Session session = null;
        Transaction transaction = null;
        int faq_id = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            faq_id = (Integer) session.save(prop);
            transaction.commit();
            return faq_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public Integer insertStory(Story s) {
        Session session = null;
        Transaction transaction = null;
        int faq_id = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            faq_id = (Integer) session.save(s);
            transaction.commit();
            return faq_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public List<Faq> viewfaq() {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Faq> faqs = session.createCriteria(Faq.class).list();
            return faqs;

        } finally {
            session.close();
        }
    }

    public List viewstory(int user_id) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            Query query = null;
            if (user_id == 0) {
                String hql = "SELECT s.*,i.title,i.id as 'ideaid',ui.fullname FROM `story` s INNER JOIN `proposal` p ON s.proposal_id = p.id INNER JOIN `useridea` i ON i.id = p.idea_id INNER JOIN `user_info` ui ON ui.user_id = s.user_id";
                query = session.createSQLQuery(hql);
            } else {
                String hql = "SELECT s.*,i.title,ui.user_id AS 'us',ui.fullname FROM `story` s INNER JOIN `proposal` p ON s.proposal_id = p.id INNER JOIN `useridea` i ON i.id = p.idea_id INNER JOIN `user_info` ui on ui.user_id = s.user_id WHERE p.to_id = :user_id OR p.from_id = :user_id";

                query = session.createSQLQuery(hql);
                query.setParameter("user_id", user_id);
            }
            List results = query.list();
            return results;

        } finally {
            session.close();
        }
    }

    public List<AddComment> viewcomment() {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<AddComment> comment = session.createCriteria(AddComment.class).list();
            return comment;

        } finally {
            session.close();
        }
    }

    public List<AddComment> viewcommentDetail(int a) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<AddComment> comment = session.createCriteria(AddComment.class).add(Restrictions.eq("idea_id", a)).list();
            return comment;

        } finally {
            session.close();
        }
    }

    public int deleterole(String role_id) {

        Session session = null;
        Transaction transaction = null;
        int sucess = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            Query query = session.createSQLQuery("update role set active_flag=:flag where role_id=:role_id");
            query.setParameter("role_id", role_id);
            query.setParameter("flag", "1");
            sucess = query.executeUpdate();
            transaction.commit();
            session.close();
            return sucess;
        } catch (Exception e) {
        }

        return 0;
    }

    public int acceptproposal(int id) {

        Session session = null;
        Transaction transaction = null;
        int sucess = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            Query query = session.createSQLQuery("update proposal set accept_status=:accept_status where id=:id");
            query.setParameter("accept_status", 1);
            query.setParameter("id", id);
            sucess = query.executeUpdate();
            transaction.commit();
            session.close();
            return sucess;
        } catch (Exception e) {
        }

        return 0;
    }

    public int editIdeaDesc(int id, String desc, Date date) {

        Session session = null;
        Transaction transaction = null;
        int sucess = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            Query query = session.createSQLQuery("update useridea set description=:description , updated_date =:updated_date where id=:idea_id");
            query.setParameter("idea_id", id);
            query.setParameter("description", desc);
            query.setParameter("updated_date", date);
            sucess = query.executeUpdate();
            transaction.commit();
            session.close();
            return sucess;
        } catch (Exception e) {
        }

        return 0;
    }

    public int updateIdea(int idea_id, String title, String field, int cost, String tdesc, Date date) {

        Session session = null;
        Transaction transaction = null;
        int sucess = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            Query query = session.createSQLQuery("update useridea set techdescription=:techdescription,title=:title,field=:field,cost=:cost , updated_date =:updated_date where id=:idea_id");
            query.setParameter("idea_id", idea_id);
            query.setParameter("techdescription", tdesc);
            query.setParameter("updated_date", date);
            query.setParameter("title", title);
            query.setParameter("cost", cost);
            query.setParameter("field", field);
            sucess = query.executeUpdate();
            transaction.commit();
            session.close();
            return sucess;
        } catch (Exception e) {
        }

        return 0;
    }

    public int rejectproposal(int id) {

        Session session = null;
        Transaction transaction = null;
        int sucess = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            Query query = session.createSQLQuery("update proposal set accept_status=:accept_status where id=:id");
            query.setParameter("accept_status", 2);
            query.setParameter("id", id);
            sucess = query.executeUpdate();
            transaction.commit();
            session.close();
            return sucess;
        } catch (Exception e) {
        }

        return 0;
    }

    public int blockuser(int user_id, int flag) {

        Session session = null;
        Transaction transaction = null;
        int sucess = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            Query query = session.createSQLQuery("update user_info set active_flag =:active_flag where user_id=:id");
            query.setParameter("active_flag", flag);
            query.setParameter("id", user_id);
            sucess = query.executeUpdate();
            transaction.commit();
            session.close();
            return sucess;
        } catch (Exception e) {

        }

        return 0;
    }

    public int deleteuser(int user_id) {

        Session session = null;
        Transaction transaction = null;
        int sucess = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            List<Users> user = session.createCriteria(Users.class).add(Restrictions.eq("user_id", user_id)).list();
            //		session.setAttribute("user",user);
            session.delete(user);
            transaction.commit();
            session.close();
            return sucess;
        } catch (Exception e) {

        }

        return 0;
    }

    public Integer insertadmin(Admin admin) {
        Session session = null;
        Transaction transaction = null;
        int admin_id = 0;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            admin_id = (Integer) session.save(admin);
            transaction.commit();
            return admin_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public Integer addinterest(InterestArea area) {
        Session session = null;
        Transaction transaction = null;
        int admin_id = 0;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            admin_id = (Integer) session.save(area);
            transaction.commit();
            return admin_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public List<InterestArea> viewinterest(int a) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<InterestArea> faqs = session.createCriteria(InterestArea.class).add(Restrictions.eq("user_id", a)).list();
            return faqs;

        } finally {
            session.close();
        }
    }

    public Integer insertuser(Users user) {
        Session session = null;
        Transaction transaction = null;
        int admin_id = 0;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            admin_id = (Integer) session.save(user);
            transaction.commit();
            return admin_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public Integer insertidea(Useridea useridea) {
        Session session = null;
        Transaction transaction = null;
        int admin_id = 0;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            admin_id = (Integer) session.save(useridea);
            transaction.commit();
            return admin_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public List<Admin> getAdminProfile(int id) {
        // TODO Auto-generated method stub
        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Admin> admins = session.createCriteria(Admin.class).add(Restrictions.eq("admin_id", id)).list();
            return admins;

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return null;
        } finally {
            session.close();

        }

    }

    public List getAdmin(String email, String password) {
        // TODO Auto-generated method stub
        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Admin> admins = session.createCriteria(Admin.class).add(Restrictions.eq("email", email)).add(Restrictions.eqOrIsNull("password", password)).list();
            return admins;

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return null;
        } finally {
            session.close();

        }

    }

    public List<Users> getUsers() {
        // TODO Auto-generated method stub
        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Users> users = session.createCriteria(Users.class).list();
            return users;

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return null;
        } finally {
            session.close();

        }

    }

    public List getUser(String email, String password, String type) {
        // TODO Auto-generated method stub
        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Users> users = session.createCriteria(Users.class).add(Restrictions.eq("email", email)).add(Restrictions.eqOrIsNull("password", password)).add(Restrictions.eqOrIsNull("type", type)).list();
            return users;

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return null;
        } finally {
            session.close();

        }

    }

    public List forgotUser(String email) {
        // TODO Auto-generated method stub
        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Users> users = session.createCriteria(Users.class).add(Restrictions.eq("email", email)).list();
            return users;

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return null;
        } finally {
            session.close();

        }

    }

    public List forgotAdmin(String email) {
        // TODO Auto-generated method stub
        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Users> users = session.createCriteria(Admin.class).add(Restrictions.eq("email", email)).list();
            return users;

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return null;
        } finally {
            session.close();

        }

    }

    public List<ProfilePhoto> getProfilepic(int user_id) {
        // TODO Auto-generated method stub
        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<ProfilePhoto> users = session.createCriteria(ProfilePhoto.class).add(Restrictions.eqOrIsNull("user_id", user_id)).list();
            return users;

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return null;
        } finally {
            session.close();

        }

    }

    public List<AdminPic> getProfilepicadmin(int user_id) {
        // TODO Auto-generated method stub
        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<AdminPic> users = session.createCriteria(AdminPic.class).add(Restrictions.eqOrIsNull("admin_id", user_id)).list();
            return users;

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return null;
        } finally {
            session.close();

        }

    }

    public List checkUser(String username) {
        // TODO Auto-generated method stub
        Session session = null;
        int a = 0;
        try {
            session = sessionFactory.openSession();
            List<Users> users = session.createCriteria(Users.class).add(Restrictions.eq("username", username)).list();
            return users;

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return null;
        } finally {
            session.close();

        }

    }

    public List checkEmail(String email) {
        // TODO Auto-generated method stub
        Session session = null;
        int a = 0;
        try {
            session = sessionFactory.openSession();
            List<Users> users = session.createCriteria(Users.class).add(Restrictions.eq("email", email)).list();
            return users;

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
            return null;
        } finally {
            session.close();

        }

    }

    public int updatepic(ProfilePhoto photo) {
        Session session = null;
        Transaction transaction = null;
        int photo_id = 0;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            session.update(photo);
            transaction.commit();
            return 1;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return 0;
        } finally {
            session.close();
        }
    }

    public Integer insertpic(ProfilePhoto photo) {
        Session session = null;
        Transaction transaction = null;
        int photo_id = 0;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            photo_id = (Integer) session.save(photo);
            transaction.commit();
            return photo_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public int updatepicadmin(AdminPic photo) {
        Session session = null;
        Transaction transaction = null;
        int photo_id = 0;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            session.update(photo);
            session.update(photo);
            transaction.commit();
            return 1;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return 0;
        } finally {
            session.close();
        }
    }

    public Integer insertpicadmin(AdminPic photo) {
        Session session = null;
        Transaction transaction = null;
        int photo_id = 0;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            photo_id = (Integer) session.save(photo);
            transaction.commit();
            return photo_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public Integer insertphoto(Photo photo) {
        Session session = null;
        Transaction transaction = null;
        int photo_id = 0;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            photo_id = (Integer) session.save(photo);
            transaction.commit();
            return photo_id;
        } catch (Exception e) {
            // TODO: handle exception
            transaction.rollback();
            e.printStackTrace();
            return null;
        } finally {
            session.close();
        }
    }

    public List<Photo> viewphoto() {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Photo> photos = session.createCriteria(Photo.class).add(Restrictions.eq("active_flag", "0")).list();

            return photos;

        } finally {
            session.close();
        }
    }

    public int deletephoto(String photo_id) {

        Session session = null;
        Transaction transaction = null;
        int sucess = 0;

        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            Query query = session.createSQLQuery("update photo set active_flag=:flag where photo_id=:photo_id");
            query.setParameter("photo_id", photo_id);
            query.setParameter("flag", "1");
            sucess = query.executeUpdate();
            transaction.commit();
            session.close();
            return sucess;
        } catch (Exception e) {
        }

        return 0;
    }

    public List<Role> updaterole(int role_id) {

        Session session = null;
        try {
            session = sessionFactory.openSession();
            List<Role> roles = session.createCriteria(Role.class).add(Restrictions.eq("role_id", role_id)).list();
            return roles;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }

    public String updateadmin(Admin user) {

        Session session = null;
        Transaction transaction = null;

        try {

            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            session.update(user);
            transaction.commit();
            return "success";

        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
            return null;

        } finally {
            session.close();
        }

    }

    public String updateprofile(Users user) {

        Session session = null;
        Transaction transaction = null;

        try {

            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            session.update(user);
            transaction.commit();
            return "success";

        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
            return null;

        } finally {
            session.close();
        }

    }

    public String updateroledata(Role role) {

        Session session = null;
        Transaction transaction = null;

        try {

            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            session.update(role);
            transaction.commit();
            return "success";

        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
            return null;

        } finally {
            session.close();
        }

    }

    public int setAdvertisement(Advertisement add) {
        Transaction transaction = null;
        Integer id = 0;
        Session session = null;
        try {

            session = sessionFactory.openSession();
            transaction = session.beginTransaction();

            id = (Integer) session.save(add);
            transaction.commit();
            return id.intValue();

        } catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
            return 0;

        } finally {
            session.close();
        }
    }

    public List<Advertisement> fetchAllAdevertisements() {
        Session session = null;
        Transaction transaction = null;
        try {
            session = sessionFactory.openSession();
            transaction = session.beginTransaction();
            List<Advertisement> t = session.createCriteria(Advertisement.class).add(Restrictions.eq("active", 0)).list();
            transaction.commit();
            session.close();
            return t;
        } catch (Exception e) {
            e.printStackTrace();
            session.close();
            return null;
        }
    }

    public int deletAdv(int id) {
        Session session = null;
        Query q;
        int i = 0;

        try {

            String hql = "update com.modal.Advertisement set active='1' where id=" + id;
            session = sessionFactory.openSession();
            q = session.createQuery(hql);
            i = q.executeUpdate();
            return i;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        } finally {
            session.close();
        }
    }

    public Integer insertcategory(Category catogery) {
        // TODO Auto-generated method stub
        return null;
    }

}
