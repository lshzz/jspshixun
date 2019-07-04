package myhibernate;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class BoardBean {

	 public List<Board>queryBoard()
	    {
	    	Session session=HibernateSessionFactory.getSession();
	    	
	    	List<Board> list=session.createSQLQuery("   select *   from Board ").addEntity(Board.class).list();
	    	return list;
	    }
	 
	 
    	 

	
	//  ��ѯ���а��
	 public List<Board> queryAllBoard(){
	   		Session sess=HibernateSessionFactory.getSession();    		
	   		List<Board> list=sess.createCriteria(Board.class).list();
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
		       	Transaction tx= session.beginTransaction();
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

}
	 

	 
	


