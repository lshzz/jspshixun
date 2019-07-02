package myhibernate;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

public class UserBean {
     public  int QueryUserbyUsername(String username,String password)
     {
    	 Session ses=HibernateSessionFactory.getSession();
    	 
    	 
    	 
    	 List<Userinfo> list= ses.createSQLQuery("   select *   from userinfo where username='"+username+"' ").addEntity(Userinfo.class).list();
    	 
         if(list==null||list.size()==0)
         {
        	 HibernateSessionFactory.closeSession();

        	 return 0;
         }
         else
         {

        	Userinfo user=list.get(0);
            if(user.getPassword().equals(password))
            {
           	 HibernateSessionFactory.closeSession();
        	return 1;
            }
         	 HibernateSessionFactory.closeSession();
            return 0;
         }
     }
     
     //创建单个用户
     public int insertUser(String username,String password)
     {
    	 Session session=HibernateSessionFactory.getSession();
    	 
    	 //查询用户是否存在
    	 List<Userinfo> list= session.createSQLQuery("   select *   from userinfo where username='"+username+"' ").addEntity(Userinfo.class).list();
    	 
    	 //用户不存在则创建用户
         if(list==null||list.size()==0)
         {
        	 Transaction tx=session.beginTransaction();
        	 Userinfo userinfo=new Userinfo();
        	 userinfo.setUsername(username);
        	 userinfo.setPassword(password);
        	 session.save(userinfo);
        	 tx.commit();
        	 HibernateSessionFactory.closeSession();
        	 return 1;
         }
    	 HibernateSessionFactory.closeSession();
    	 return 0;
    	 
     }
}
