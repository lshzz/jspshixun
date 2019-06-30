package myhibernate;

/**
 * Huifutopic entity. @author MyEclipse Persistence Tools
 */

public class Huifutopic implements java.io.Serializable {

	// Fields

	private Integer id;
	private String huifuname;
	private String returncontent;
	private String date;
	private Integer topicid;

	// Constructors

	/** default constructor */
	public Huifutopic() {
	}

	/** minimal constructor */
	public Huifutopic(Integer id, String huifuname) {
		this.id = id;
		this.huifuname = huifuname;
	}

	/** full constructor */
	public Huifutopic(Integer id, String huifuname, String returncontent,
			String date, Integer topicid) {
		this.id = id;
		this.huifuname = huifuname;
		this.returncontent = returncontent;
		this.date = date;
		this.topicid = topicid;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getHuifuname() {
		return this.huifuname;
	}

	public void setHuifuname(String huifuname) {
		this.huifuname = huifuname;
	}

	public String getReturncontent() {
		return this.returncontent;
	}

	public void setReturncontent(String returncontent) {
		this.returncontent = returncontent;
	}

	public String getDate() {
		return this.date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public Integer getTopicid() {
		return this.topicid;
	}

	public void setTopicid(Integer topicid) {
		this.topicid = topicid;
	}

}