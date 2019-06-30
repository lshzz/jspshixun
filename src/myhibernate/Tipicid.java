package myhibernate;

import java.sql.Time;

/**
 * Tipicid entity. @author MyEclipse Persistence Tools
 */

public class Tipicid implements java.io.Serializable {

	// Fields

	private Integer topicid;
	private Board board;
	private String title;
	private String topiccontent;
	private Time publishdate;
	private String author;

	// Constructors

	/** default constructor */
	public Tipicid() {
	}

	/** minimal constructor */
	public Tipicid(Integer topicid, String title) {
		this.topicid = topicid;
		this.title = title;
	}

	/** full constructor */
	public Tipicid(Integer topicid, Board board, String title,
			String topiccontent, Time publishdate, String author) {
		this.topicid = topicid;
		this.board = board;
		this.title = title;
		this.topiccontent = topiccontent;
		this.publishdate = publishdate;
		this.author = author;
	}

	// Property accessors

	public Integer getTopicid() {
		return this.topicid;
	}

	public void setTopicid(Integer topicid) {
		this.topicid = topicid;
	}

	public Board getBoard() {
		return this.board;
	}

	public void setBoard(Board board) {
		this.board = board;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTopiccontent() {
		return this.topiccontent;
	}

	public void setTopiccontent(String topiccontent) {
		this.topiccontent = topiccontent;
	}

	public Time getPublishdate() {
		return this.publishdate;
	}

	public void setPublishdate(Time publishdate) {
		this.publishdate = publishdate;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

}