package myhibernate;


import java.util.List;


import org.hibernate.Session;
import org.hibernate.Transaction;

public class Tipicbean {
	 
	
	 //  查询全部帖子
    public List QueryAllTopic(){
   		Session sess=HibernateSessionFactory.getSession();    		
   		List list=sess.createCriteria(Tipicid.class).list();
   		return list;
    }
	

    //贴子发表
    public boolean postings(String title,String topicContent,String publishDate,String author,int boardId)
    {
        Session session=HibernateSessionFactory.getSession();
   	    
         try
         {
       	 Transaction tx=session.beginTransaction();
       	 Tipicid top=new Tipicid();
       	 top.setAuthor(author);
       	 top.setPublishdate(publishDate);
       	 top.setTitle(title);
       	 top.setTopiccontent(topicContent);
       	 session.save(top);
       	 tx.commit();
       	 HibernateSessionFactory.closeSession();
       	 return true;
         }
         catch(Exception e)
         {
       	  e.printStackTrace();
       	  HibernateSessionFactory.closeSession();
         }
         return false;
   	 
   	 
   	 
    }
    
    //根据TOP的ID查询帖子详细信息
    public Tipicid topdetail(int id)
    {
        Session session=HibernateSessionFactory.getSession();
   	    
        try
        {
        	 List<Tipicid> list= session.createSQLQuery("   select *   from TIPICID where topicid="+id+" ").addEntity(Tipicid.class).list();
             if(list.size()!=0)
             {
        	 return list.get(0);
             }
             return null;
        }
        catch(Exception e)
        {
      	 e.printStackTrace();
      	 return null;
        }
       
    }

}
