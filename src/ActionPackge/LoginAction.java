package ActionPackge;
import myhibernate.UserBean;

import com.opensymphony.xwork2.ActionSupport;


public class LoginAction extends ActionSupport {
     private String username;
     private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String execute() throws Exception{
		String str="fail";
		UserBean userbean=new UserBean();
		int result=userbean.QueryUserbyUsername(username, password);
		if(result==1)
		{
			str="success";
		}
		return str;
	}
	
     
}
