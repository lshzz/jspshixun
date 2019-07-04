package myhibernate;


import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;


public class Tipicbean {
	 
	
	 //  ��ѯȫ������
    public List QueryAllTopic(){
   		Session sess=HibernateSessionFactory.getSession();    		
   		List list=sess.createCriteria(Tipicid.class).list();
   		return list;
    }
    
    public List<Board> GatAllBoard()
    {
	    Session ses=HibernateSessionFactory.getSession();
	   	 
	   	 List<Board> list= ses.createSQLQuery("  select *  from board").addEntity(Board.class).list();
	   	 HibernateSessionFactory.closeSession();
	   	 System.out.println("����+" + list.get(0).getBoardname());
	   	 
	   	 return list;
    }
    
    //��Ӱ��
    public int insertBoard(String Input)
    {
   	 Session session=HibernateSessionFactory.getSession();
   	 
   	 //��ѯ����Ƿ����
   	 List<Board> list= session.createSQLQuery("   select *   from  board  where boardname='"+Input+"' ").addEntity(Board.class).list();
   	 
   	 //�û��������򴴽����
        if(list==null||list.size()==0)
        {
	       	 Transaction tx=session.beginTransaction();
	       	Board board=new Board();
	       	 board.setBoardname(Input);
	    
	       	 session.save(board);
	       	 tx.commit();
	       	 HibernateSessionFactory.closeSession();
	       	 return 1;
        }
   	 HibernateSessionFactory.closeSession();
   	 return 0;
   	 
    }
    
    
    
    public boolean IdToDeleteBoard(int id)
    {
	   	 Session ses=HibernateSessionFactory.getSession();
	   	 Transaction tx = ses.beginTransaction();
	   	 
	   	 Board tem = (Board)ses.get(Board.class, id);
	   	 ses.delete(tem);
	   	 tx.commit();
	   	 HibernateSessionFactory.closeSession();
	   	 
	   	// List<Userinfo> list= ses.createSQLQuery(" DELETE FROM userinfo where id='"+id+"' ").addEntity(Userinfo.class).list();
	   	 return true;
    }
	
    //  ��������
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

    //���ӷ���
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
    
    //����TOP��ID��ѯ������ϸ��Ϣ
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
