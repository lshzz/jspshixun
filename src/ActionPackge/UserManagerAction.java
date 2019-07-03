package ActionPackge;

import java.util.List;
import myhibernate.UserBean;
import myhibernate.Userinfo;
import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.Response;

import myhibernate.Userinfo;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
public class UserManagerAction extends ActionSupport {
	
    private List<Userinfo> list;
    
    private String name;
    public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getShowTest() {
		return ShowTest;
	}
	public void setShowTest(String showTest) {
		ShowTest = showTest;
	}


	private String ShowTest;
    
	public List<Userinfo> getList() {
		return list;
	}
	public void setList(List<Userinfo> list) {
		this.list = list;
	}
	

	private int id;
   public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private int type;

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
	
	
	
	public String ToUpdata() throws Exception
	{
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext().get(StrutsStatics.HTTP_REQUEST);
		name=java.net.URLDecoder.decode(name,"GBK"); 
		String str = "Updata";
		
		switch(type)
		{
			case 1:											//要修改密码	
				str = "Updata";
				ShowTest = "把" + name +"的" + "密码修改为：";
				System.out.println(name);
				break;
			case 2:
				break;
		}
		return  "Updata";
	}

	
	
	@Override
	public String execute() throws Exception{
		
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext().get(StrutsStatics.HTTP_REQUEST);
		request.setCharacterEncoding("GBK");
	   
		UserBean userbean=new UserBean();
		System.out.println( Integer.parseInt( request.getParameter("id").trim()));
		userbean.IdToDeleteUserinfo(Integer.parseInt( request.getParameter("id").trim()));
		list = userbean.GetAllUserInfo();
		
		return "Updata";
	}
}
