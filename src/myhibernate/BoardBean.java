package myhibernate;

import java.util.List;

import org.hibernate.Session;

public class BoardBean {

	 public List<Board>queryBoard()
	    {
	    	Session session=HibernateSessionFactory.getSession();
	    	
	    	List<Board> list=session.createSQLQuery("   select *   from Board ").addEntity(Board.class).list();
	    	return list;
	    }
	 
	 
    	 

	
	//  ²éÑ¯ËùÓĞ°æ¿é
	 public List<Board> queryAllBoard(){
	   		Session sess=HibernateSessionFactory.getSession();    		
	   		List<Board> list=sess.createCriteria(Board.class).list();
	   		return list;
	    }
	 
	

}
