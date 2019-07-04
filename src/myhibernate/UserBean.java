package myhibernate;

import java.sql.Time;
import java.util.List;

import org.apache.commons.lang.ObjectUtils.Null;
import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.annotations.Nullability;
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
        	
        	HibernateSessionFactory.closeSession();
            if(user.getPassword().equals(password) && user.getType().equals("����Ա"))
            {
           	 	
           	 	return 2;
            }else if( user.getPassword().equals(password))
            {	
       	 		return 1;
            	
            }
            return 0;
         }
     }
     
     public boolean updata(int UserId, int updataTypeId, String updataString)
     {
    	 Session ses=HibernateSessionFactory.getSession();
    	 Transaction tx = ses.beginTransaction();
    	 
    	 Userinfo tem = (Userinfo)ses.get(Userinfo.class, UserId);
    	 
    	 if(updataTypeId == 1)
    	 {
    		 tem.setPassword(updataString);
    	 }else if(updataTypeId == 2)
    	 {
    		 tem.setType(updataString);
    	 }
    	 
    	 
    	 ses.update(tem);
    	 tx.commit();
    	 HibernateSessionFactory.closeSession();
    	 return true;
     }
     
     
     public List<Userinfo> GetAllUserInfo(){
    	 Session ses=HibernateSessionFactory.getSession();
    	 
    	 List<Userinfo> list= ses.createSQLQuery("  select *   from userinfo").addEntity(Userinfo.class).list();
    	 HibernateSessionFactory.closeSession();
    	 return list;
     }
     
     
     public boolean IdToDeleteUserinfo(int id)
     {
    	 Session ses=HibernateSessionFactory.getSession();
    	 Transaction tx = ses.beginTransaction();
    	 
    	 Userinfo tem = (Userinfo)ses.get(Userinfo.class, id);
    	 ses.delete(tem);
    	 tx.commit();
    	 HibernateSessionFactory.closeSession();
    	 
    	// List<Userinfo> list= ses.createSQLQuery(" DELETE FROM userinfo where id='"+id+"' ").addEntity(Userinfo.class).list();
    	 return true;
     }
     
     //���������û�
     public int insertUser(String username,String password, String type)
     {
    	 Session session=HibernateSessionFactory.getSession();
    	 
    	 //��ѯ�û��Ƿ����
    	 List<Userinfo> list= session.createSQLQuery("   select *   from userinfo where username='"+username+"' ").addEntity(Userinfo.class).list();
    	 
    	 //�û��������򴴽��û�
         if(list==null||list.size()==0)
         {
        	 Transaction tx=session.beginTransaction();
        	 Userinfo userinfo=new Userinfo();
        	 userinfo.setUsername(username);
        	 userinfo.setPassword(password);
        	 userinfo.setType(type);
        	 session.save(userinfo);
        	 tx.commit();
        	 HibernateSessionFactory.closeSession();
        	 return 1;
         }
    	 HibernateSessionFactory.closeSession();
    	 return 0;
    	 
     }
     
     //�����û�����
     public boolean settingbanzhu(String username,int id)
     {
    	 Session session=HibernateSessionFactory.getSession();
    	 try{
    		 Transaction tx=session.beginTransaction();
    		 List<Userinfo> list= session.createSQLQuery("   select *   from userinfo where username='"+username+"' ").addEntity(Userinfo.class).list();
    		 if(list!=null)
    		 {
    		 Userinfo user=list.get(0);
     		 Board b=new Board();
    		 if(id==0)
    		 {
    			 b=null;
    			 user.setBoard(b);
        		 
        		 session.update(user);
        		tx.commit();
        		HibernateSessionFactory.closeSession();
         		 return true;
    		 }
    		 else
    		 {
             b.setBoardid(id);
    			
    		 }
    		 user.setBoard(b);
    		 
    		 session.update(user);
    		tx.commit();
    		HibernateSessionFactory.closeSession();
     		 return true;
    		
    		 }
           HibernateSessionFactory.closeSession();
    		 return false;
    		 
    	
    	 }
    	 catch(Exception e)
    	 {
    		 HibernateSessionFactory.closeSession();
    		 e.printStackTrace();
    	 }
    	 return false;
     }

     
     
     
     
}
