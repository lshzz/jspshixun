package ActionPackge;

import java.util.List;

import myhibernate.Board;
import myhibernate.BoardBean;
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

	 private List<Board> listBoard;
	    
		public List<Board> getListBoard() {
			return listBoard;
		}
		public void setListBoard(List<Board> listBoard) {
			this.listBoard = listBoard;
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
				str = "UpdataPassword";
				ShowTest = "把" + name +"的" + "密码修改为：";
				System.out.println("执行");
				System.out.println(name);
				break;
			case 2:
				break;
		}
		return str;
	}

	
	
	@Override
	public String execute() throws Exception{
		
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext().get(StrutsStatics.HTTP_REQUEST);
		request.setCharacterEncoding("GBK");
	   
		UserBean userbean=new UserBean();
		BoardBean tipicbean = new BoardBean(); 
		
		System.out.println( Integer.parseInt( request.getParameter("id").trim()));
		int typex = Integer.parseInt( request.getParameter("type").trim());
		if(typex == 1)
		{
			userbean.IdToDeleteUserinfo(Integer.parseInt( request.getParameter("id").trim()));
		}else if(typex == 2)
		{
			tipicbean.IdToDeleteBoard(Integer.parseInt( request.getParameter("id").trim()));
		}
		
		list = userbean.GetAllUserInfo();
		listBoard = tipicbean.queryAllBoard();
		return "Updata";

	}
}
