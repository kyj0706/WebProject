package ex0706;

import java.sql.Timestamp;

public class Board {
	
	
	Board(){}
	public Board(int bid, String btitle, String bcontent, String bname, int bgroup, int bstop, int bindent,
			Timestamp bdate, String bupload) {
		this.bid = bid;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bname = bname;
		this.bgroup = bgroup;
		this.bstop = bstop;
		this.bindent = bindent;
		this.bdate = bdate;
		this.bupload = bupload;
		
	}
	private int bid;
	private String btitle;
	private String bcontent;
	private String bname;
	private int bgroup;
	private int bstop;
	private int bindent;
	private Timestamp bdate;
	private String bupload;
	
	
	
	
	
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public int getBgroup() {
		return bgroup;
	}
	public void setBgroup(int bgroup) {
		this.bgroup = bgroup;
	}
	public int getBstop() {
		return bstop;
	}
	public void setBstop(int bstop) {
		this.bstop = bstop;
	}
	public int getBindent() {
		return bindent;
	}
	public void setBindent(int bindent) {
		this.bindent = bindent;
	}
	public Timestamp getBdate() {
		return bdate;
	}
	public void setBdate(Timestamp bdate) {
		this.bdate = bdate;
	}
	public String getBupload() {
		return bupload;
	}
	public void setBupload(String bupload) {
		this.bupload = bupload;
	}
	
	
	

	
	
	
}
