package com.skilldistillery.boxers.data;

import com.skilldistillery.boxers.entities.Boxer;

public interface BoxerDAO {
	public Boxer findById(int boxerId);
}
