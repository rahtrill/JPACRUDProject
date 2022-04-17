package com.skilldistillery.boxers.data;

import java.util.List;

import com.skilldistillery.boxers.entities.Boxer;

public interface BoxerDAO {
	public Boxer findById(int boxerId);
	public List<Boxer> findByName(String name);
	public List<Boxer> findByWeightClass(String wc);
}
