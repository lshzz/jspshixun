package myhibernate;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class HuifutopicBean {
	
	//回复帖子
    public boolean huifu(String content,int tipicid,String username)
    {
    	Session session=HibernateSessionFactory.getSession();
    	 try
         {
       	 Transaction tx=session.beginTransaction();
       	 Huifutopic huifutopic=new Huifutopic();
       	 huifutopic.setReturncontent(content);
       	 huifutopic.setDate(new Date().toLocaleString());
       	 huifutopic.setHuifuname(username);
       	 Tipicid top=new Tipicid();
       	 top.setTopicid(tipicid);
       	 huifutopic.setTipicid(top);
       	 session.save(huifutopic);
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
	
	//获取帖子回复
    public List<Huifutopic>querytiezi(int id)
    {
    	Session session=HibernateSessionFactory.getSession();
    	
    	List<Huifutopic> list=session.createSQLQuery("   select *   from Huifutopic where topicid="+id+" ").addEntity(Huifutopic.class).list();
    	
    	return list;
    }
    
    //  根据用户名查找回复
    public List<Huifutopic> queryHuifu(String name){
    	Session session=HibernateSessionFactory.getSession();    	
    	List<Huifutopic> list=session.createSQLQuery(" select * from Huifutopic where huifuname='"+name+"' ").addEntity(Huifutopic.class).list();
    	return list;
    }
	
}
