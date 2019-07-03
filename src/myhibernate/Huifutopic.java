package myhibernate;

/**
 * Huifutopic entity. @author MyEclipse Persistence Tools
 */

public class Huifutopic implements java.io.Serializable {

	// Fields

	private Integer id;
	private Tipicid tipicid;
	private String huifuname;
	private String returncontent;
	private String date;

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
	public Huifutopic(Integer id, Tipicid tipicid, String huifuname,
			String returncontent, String date) {
		this.id = id;
		this.tipicid = tipicid;
		this.huifuname = huifuname;
		this.returncontent = returncontent;
		this.date = date;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Tipicid getTipicid() {
		return this.tipicid;
	}

	public void setTipicid(Tipicid tipicid) {
		this.tipicid = tipicid;
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

}