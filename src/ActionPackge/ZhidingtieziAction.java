package ActionPackge;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import myhibernate.HuifutopicBean;
import myhibernate.Tipicbean;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class ZhidingtieziAction extends ActionSupport {
  private int id;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

@Override
public String execute() throws Exception{
	HttpServletRequest request = (HttpServletRequest)ActionContext.getContext().get(StrutsStatics.HTTP_REQUEST);
	String str="success";
	Tipicbean tipicbean=new Tipicbean();
	setId(Integer.parseInt(request.getParameter("id")));
	tipicbean.deletetiezibyid(id);
    return str;
}
}
