package edu.gxcme;

import java.util.HashSet;
import java.util.Set;

/**
 * Board entity. @author MyEclipse Persistence Tools
 */

public class Board implements java.io.Serializable {

	// Fields

	private Integer boardid;
	private String boardname;
	private Integer stament;
	private Set tipicids = new HashSet(0);
	private Set userinfos = new HashSet(0);

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
	public Board(Integer boardid, String boardname, Integer stament,
			Set tipicids, Set userinfos) {
		this.boardid = boardid;
		this.boardname = boardname;
		this.stament = stament;
		this.tipicids = tipicids;
		this.userinfos = userinfos;
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

	public Integer getStament() {
		return this.stament;
	}

	public void setStament(Integer stament) {
		this.stament = stament;
	}

	public Set getTipicids() {
		return this.tipicids;
	}

	public void setTipicids(Set tipicids) {
		this.tipicids = tipicids;
	}

	public Set getUserinfos() {
		return this.userinfos;
	}

	public void setUserinfos(Set userinfos) {
		this.userinfos = userinfos;
	}

}