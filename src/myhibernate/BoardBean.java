package myhibernate;

import java.util.List;

import org.hibernate.Session;

public class BoardBean {
	
	//  ��ѯ���а��
	 public List<Board> queryAllBoard(){
	   		Session sess=HibernateSessionFactory.getSession();    		
	   		List<Board> list=sess.createCriteria(Board.class).list();
	   		return list;
	    }
	 
	

}
