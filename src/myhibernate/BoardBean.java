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
	 
	 
    	 
}
