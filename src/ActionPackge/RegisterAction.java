package ActionPackge;

import myhibernate.UserBean;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	 private String username;
     private String password;
     private String type;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
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
		type = "”√ªß";
		int result=userbean.insertUser(username, password, type);
		if(result==1)
		{
			str="success";
		}
		return str;
	}
}
