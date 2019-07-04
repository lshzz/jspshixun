package ActionPackge;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.StrutsStatics;

import myhibernate.HuifutopicBean;
import myhibernate.UserBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class HuifuAction extends ActionSupport {
      String content;
      int topid;

	public int getTopid() {
		return topid;
	}

	public void setTopid(int topid) {
		this.topid = topid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
	@Override
	public String execute() throws Exception{
		HttpServletRequest request = (HttpServletRequest)ActionContext.getContext().get(StrutsStatics.HTTP_REQUEST);
		String str="fail";
		HuifutopicBean huifutopicBean=new HuifutopicBean();
		
		if(huifutopicBean.huifu(content,topid ))
		{
			str="success";
			System.out.print("³É¹¦");
		}
		 request.setAttribute("tipicid",topid);
	return str;
	}
      
}
