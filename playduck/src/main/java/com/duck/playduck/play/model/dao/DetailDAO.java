package com.duck.playduck.play.model.dao;

import com.duck.playduck.play.model.vo.Play;
import com.duck.playduck.review.model.vo.PlayDetail;

public interface DetailDAO {

	PlayDetail selectPDOne(String p_no);

	Play selectPlayOne(String p_no);

}
