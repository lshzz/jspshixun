package ActionPackge;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import myhibernate.Board;
import myhibernate.Tipicbean;
import myhibernate.UserBean;
import myhibernate.Userinfo;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class updataDataAction extends ActionSupport {
	
	   private List<Userinfo> list;
	
		public List<Userinfo> getList() {
		return list;
	}
		
		
		 private List<Board> listBoard;
		    
			public List<Board> getListBoard() {
				return listBoard;
			}
			public void setListBoard(List<Board> listBoard) {
				this.listBoard = listBoard;
			}
		
		
		private String InputText;

	public String getInputText() {
			return InputText;
		}

		public void setInputText(String inputText) {
			InputText = inputText;
		}

	public void setList(List<Userinfo> list) {
		this.list = list;
	}

		private String UpdataText;
		
	
		public String getUpdataText() {
			return UpdataText;
		}

		public void setUpdataText(String updataText) {
			UpdataText = updataText;
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
		
		
		
		
		
		
		//Ìí¼ÓÄ£¿é
		public String AddBoard() throws Exception
		{
			UserBean userbean=new UserBean();
			Tipicbean tipicbean = new Tipicbean(); 
			if( tipicbean.insertBoard(InputText) ==1 )
			{
				list = userbean.GetAllUserInfo();
				listBoard = tipicbean.GatAllBoard();
				return "Updata";
			}else
			{
				return "fail";
			}
			
			
			
		}
		
		
		public String Updata() throws Exception
		{
			UserBean userbean=new UserBean();
			System.out.println(id+" "+ type + " "+ UpdataText);
			
			userbean.updata(id, type,UpdataText );
		
			list = userbean.GetAllUserInfo();
			return  "Updata";
		}
		

	@Override
	public String execute() throws Exception{
	
		return "Updata";
	}
}
