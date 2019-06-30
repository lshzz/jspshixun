package ActionPackge;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import myhibernate.Tipicbean;
import myhibernate.UserBean;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SettingbanzhuAction extends ActionSupport{
	int select;
	String username;

	
	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public int getSelect() {
		return select;
	}


	public void setSelect(int select) {
		this.select = select;
	}


	@Override
	public String execute() throws Exception{
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext().get(StrutsStatics.HTTP_REQUEST);
       UserBean userbean=new UserBean();
       if(userbean.settingbanzhu(username, select))
       {
    	   return "NONE";
       }
       return "NONE";
	}
}
