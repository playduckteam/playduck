package com.duck.playduck.md.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Reward {
	private int w_no;
	private int m_no;
	private int w_up;
	private int w_down;
	
	
	public Reward(int w_no, int w_down) {
		super();
		this.w_no = w_no;
		this.w_down = w_down;
	}
	

}




