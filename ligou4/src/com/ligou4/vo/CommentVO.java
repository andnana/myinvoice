package com.ligou4.vo;

import com.ligou4.entity.Comment;

public class CommentVO extends Comment{
	private Integer nid;
	private Integer utterer;
	public Integer getNid() {
		return nid;
	}
	public void setNid(Integer nid) {
		this.nid = nid;
	}
	public Integer getUtterer() {
		return utterer;
	}
	public void setUtterer(Integer utterer) {
		this.utterer = utterer;
	}

	
	
}
