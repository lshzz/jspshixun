package ActionPackge;
import java.util.ArrayList;
import java.util.List;

import myhibernate.UserBean;
import myhibernate.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class LoginAction extends ActionSupport {
     private String username;
     private String password;
     
    private List<Userinfo> list;
    
    
	public List<Userinfo> getList() {
		return list;
	}
	public void setList(List<Userinfo> list) {
		this.list = list;
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
	
	public String test()
	{
		return "UserManager";
	}
	
	@Override
	public String execute() throws Exception{
		String str="fail";
		
		UserBean userbean=new UserBean();
		if("adm".equals(username) && "999".equals(password))
		{
			str = "UserManager";
			list = userbean.GetAllUserInfo();

			return str;
		}
		
		
	
		int result=userbean.QueryUserbyUsername(username, password);
		if(result==1)
		{
			str="success";
		}
		return str;
	}
	
     
}