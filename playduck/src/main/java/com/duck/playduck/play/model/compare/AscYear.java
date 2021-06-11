package com.duck.playduck.play.model.compare;

import java.util.Comparator;

import com.duck.playduck.play.model.vo.PlayElement;

public class AscYear implements Comparator<PlayElement> {

	@Override
	public int compare(PlayElement o1, PlayElement o2) {
		
		int result = o2.getPrfpdfrom().compareTo(o1.getPrfpdfrom());
		
		return result;
	}

}
