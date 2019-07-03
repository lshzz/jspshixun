package ActionPackge;

import java.util.List;
import myhibernate.UserBean;
import myhibernate.Userinfo;
import javax.servlet.http.HttpServletRequest;

import myhibernate.Userinfo;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class UserManagerAction extends ActionSupport {
	
    private List<Userinfo> list;
    
    
	public List<Userinfo> getList() {
		return list;
	}
	public void setList(List<Userinfo> list) {
		this.list = list;
	}
	
	@Override
	public String execute() throws Exception{
		
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext().get(StrutsStatics.HTTP_REQUEST);
		UserBean userbean=new UserBean();
		System.out.println( Integer.parseInt( request.getParameter("id").trim()));
		userbean.IdToDeleteUserinfo(Integer.parseInt( request.getParameter("id").trim()));
		list = userbean.GetAllUserInfo();
		
		return "Updata";
	}
}
