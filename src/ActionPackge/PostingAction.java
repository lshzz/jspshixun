package ActionPackge;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.StrutsStatics;

import myhibernate.Tipicbean;
import myhibernate.UserBean;
import myhibernate.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class PostingAction extends ActionSupport{
	private String title;
	private String topicContent;
    
	
	
	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getTopicContent() {
		return topicContent;
	}



	public void setTopicContent(String topicContent) {
		this.topicContent = topicContent;
	}



	@Override
	public String execute() throws Exception{
       Tipicbean t=new Tipicbean();
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext().get(StrutsStatics.HTTP_REQUEST);
		HttpSession session = request.getSession(true);
       t.postings(title, topicContent,new Date().toLocaleString(), session.getAttribute("username").toString(), 1);
       return "success";
       
	}
}
