package ActionPackge;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.StrutsStatics;

import myhibernate.BoardBean;
import myhibernate.UserBean;
import myhibernate.Userinfo;
import myhibernate.Board;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


public class LoginAction extends ActionSupport {
     private String username;
     private String password;
     
    private List<Userinfo> list;
    
    private List<Board> listBoard;
    
	public List<Board> getListBoard() {
		return listBoard;
	}
	public void setListBoard(List<Board> listBoard) {
		this.listBoard = listBoard;
	}
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
		BoardBean boardBean = new BoardBean();
		int result=userbean.QueryUserbyUsername(username, password);
		
		switch(result)
		{
		case 0:
			str="fail";
			break;
		case 1:
			str="success";
			HttpServletRequest request = (HttpServletRequest)ActionContext.getContext().get(StrutsStatics.HTTP_REQUEST);
			HttpSession session = request.getSession(true);
			session.setAttribute("username", username);
			break;
		case 2:
			str = "UserManager";
			list = userbean.GetAllUserInfo();
			listBoard = boardBean.queryAllBoard();
			break;
		}
		
		return str;
	}
	
     
}
