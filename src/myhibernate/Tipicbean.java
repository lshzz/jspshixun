package myhibernate;


import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;


public class Tipicbean {
	 
	
	 //  查询全部帖子
    public List QueryAllTopic(){
   		Session sess=HibernateSessionFactory.getSession();    		
   		List list=sess.createCriteria(Tipicid.class).list();
   		return list;
    }
	
    //  搜索帖子
    public List<Tipicid> Search(String key){
		Session sess=HibernateSessionFactory.getSession();
		 List<Tipicid> list= sess.createSQLQuery("select *from tipicid where title like'%"+key+"%' or  topiccontent like'%"+key+"%' ").addEntity(Tipicid.class).list();
		 HibernateSessionFactory.closeSession();
//		Criteria ctr=sess.createCriteria(Tipicid.class);
//		ctr.add(Restrictions.like("title","%"+key+"%"));
//		ctr.add(Restrictions.like("topiccontent","%"+key+"%"));
//		List<Tipicid> list=ctr.list();
		 System.out.println(list.get(0).getTitle()+"aaaaaaaaa");
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
