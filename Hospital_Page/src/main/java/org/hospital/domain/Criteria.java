package org.hospital.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	private int pageNum;
	private int amount;
	
	private String type;
	private String keyword;
	
	public String[] getTypeArr() {
		return type == null ? new String[] {} :  type.split("");
	}
	
	public Criteria() {
		this(1, 6);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum  = pageNum;
		this.amount = amount;
	}
	
	
	
	
}