package myhibernate;

import java.util.HashSet;
import java.util.Set;

/**
 * Board entity. @author MyEclipse Persistence Tools
 */

public class Board implements java.io.Serializable {

	// Fields

	private Integer boardid;
	private String boardname;
	private Set tipicids = new HashSet(0);

	// Constructors

	/** default constructor */
	public Board() {
	}

	/** minimal constructor */
	public Board(Integer boardid, String boardname) {
		this.boardid = boardid;
		this.boardname = boardname;
	}

	/** full constructor */
	public Board(Integer boardid, String boardname, Set tipicids) {
		this.boardid = boardid;
		this.boardname = boardname;
		this.tipicids = tipicids;
	}

	// Property accessors

	public Integer getBoardid() {
		return this.boardid;
	}

	public void setBoardid(Integer boardid) {
		this.boardid = boardid;
	}

	public String getBoardname() {
		return this.boardname;
	}

	public void setBoardname(String boardname) {
		this.boardname = boardname;
	}

	public Set getTipicids() {
		return this.tipicids;
	}

	public void setTipicids(Set tipicids) {
		this.tipicids = tipicids;
	}

}