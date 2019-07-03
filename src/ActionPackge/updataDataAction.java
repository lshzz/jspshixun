package ActionPackge;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
