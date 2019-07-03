package ActionPackge;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class updataDataAction extends ActionSupport {
	
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
			System.out.println(id+" "+ type);
			return  "Updata";
		}
		

	@Override
	public String execute() throws Exception{
	
		return "Updata";
	}
}
