package ActionPackge;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.StrutsStatics;

import myhibernate.Tipicbean;
import myhibernate.Tipicid;
import myhibernate.UserBean;
import myhibernate.Userinfo;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SearchAction extends ActionSupport {
	String sousuo;
    private List<Tipicid> list;
	
	public List<Tipicid> getList() {
		return list;
	}


	public void setList(List<Tipicid> list) {
		this.list = list;
	}


	public String getSousuo() {
		return sousuo;
	}


	public void setSousuo(String sousuo) {
		this.sousuo = sousuo;
	}


	@Override
	public String execute() throws Exception{
	    System.out.println(sousuo);
		String str="Search";
		Tipicbean tipicbean=new Tipicbean();
		 list=tipicbean.Search("h");
		 System.out.println(list.get(0).getTitle());
		return str;
	}
}
