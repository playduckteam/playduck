package com.duck.playduck.play.model.compare;

import java.util.Comparator;

import com.duck.playduck.play.model.vo.PlayElement;

public class AscTitle implements Comparator<PlayElement> {

	@Override
	public int compare(PlayElement o1, PlayElement o2) {
		
		int result = o1.getPrfnm().compareTo(o2.getPrfnm());
		
		return result;
	}

}
