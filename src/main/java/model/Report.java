package model;

import java.util.Date;

public class Report {
	
	private String userid; 
	private String punm;
	private String content ;
	private Date regdate ;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPunm() {
		return punm;
	}
	public void setPunm(String punm) {
		this.punm = punm;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "Report [userid=" + userid + ", punm=" + punm + ", content=" + content + ", regdate=" + regdate + "]";
	}

	
	
}
