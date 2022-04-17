package com.skilldistillery.boxers.data;

import java.util.List;

import com.skilldistillery.boxers.entities.Boxer;

public interface BoxerDAO {
	public Boxer findById(int boxerId);
	public List<Boxer> findByName(String name);
	public List<Boxer> findByWeightClass(String wc);
	public Boxer addBoxer(Boxer boxer);
	public Boxer updateBoxer(Boxer boxer);
	public boolean deleteBoxer(Boxer boxer);
	public List<Integer> matchupBoxers(Boxer boxer1, Boxer boxer2);
}
