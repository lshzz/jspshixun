package myhibernate;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

public class UserBean {
     public  int QueryUserbyUsername(String username,String password)
     {
    	 Session ses=HibernateSessionFactory.getSession();
    	 
    	 
    	 
    	 List<Userinfo> list= ses.createSQLQuery("   select *   from userinfo where username='"+username+"' ").addEntity(Userinfo.class).list();
    	 
         if(list==null||list.size()==0)
         {
        	 HibernateSessionFactory.closeSession();
        	 System.out.println("��");
        	 return 0;
         }
         else
         {
        	 System.out.println("��");
        	Userinfo user=list.get(0);
            if(user.getPassword().equals(password))
            {
            	 System.out.println("��1");
           	 HibernateSessionFactory.closeSession();
        	return 1;
            }
            System.out.println("��2");
         	 HibernateSessionFactory.closeSession();
            return 0;
         }
     }
}
