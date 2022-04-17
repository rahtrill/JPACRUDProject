package com.skilldistillery.boxers.data;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.boxers.entities.Boxer;


@Service
@Transactional
public class BoxerDaoJpaImpl implements BoxerDAO {

	@PersistenceContext
	private EntityManager em;
	
	//SELECT QUERY METHODS
	
	@Override
	public Boxer findById(int boxerId) {
		return em.find(Boxer.class, boxerId);
	}
	
	@Override
	public List<Boxer> findByName(String name) {
		String query = "SELECT boxer FROM Boxer boxer WHERE boxer.firstName LIKE :fname OR boxer.lastName LIKE :lname";
		
		List<Boxer> boxer = em.createQuery(query).setParameter("fname", "%" + name + "%").setParameter("lname", "%" + name + "%").getResultList();
		
		return boxer;
	}
	
	@Override
	public List<Boxer> findByWeightClass(String wc) {
		String query = "SELECT boxer FROM Boxer boxer WHERE boxer.weightClass LIKE :wc";
		
		List<Boxer> boxer = em.createQuery(query).setParameter("wc", "%" + wc + "%").getResultList();
		
		return boxer;
	}
	
	// INSERT QUERY METHODS
	
	@Override
	public Boxer addBoxer(Boxer boxer) {
		em.persist(boxer);
		return em.find(Boxer.class, boxer.getId());
	}
	
	// UPDATE QUERY METHODS
	
	@Override
	public Boxer updateBoxer(Boxer boxer) {
		
		Boxer newBoxer = em.find(Boxer.class, boxer.getId());
		
		newBoxer.setFirstName(boxer.getFirstName());
		newBoxer.setLastName(boxer.getLastName());
		newBoxer.setHeight(boxer.getHeight());
		newBoxer.setWeightClass(boxer.getWeightClass());
		newBoxer.setNationality(boxer.getNationality());
		newBoxer.setReach(boxer.getReach());
		newBoxer.setKnockouts(boxer.getKnockouts());
		newBoxer.setTotalFights(boxer.getTotalFights());
		
		return boxer;
	}
	
	// REMOVE QUERY METHODS
	
		@Override
		public boolean deleteBoxer(Boxer boxer) {
			boolean removed = false;
			
			if (em.find(Boxer.class, boxer.getId()) != null) {
				em.remove(boxer);
				removed = true;
			}
			
			return removed;
		}
		
	// MATCHUP METHOD

		@Override
		public List<Integer> matchupBoxers(Boxer boxer1, Boxer boxer2) {
			int boxerpoint1 = 0, boxerpoint2 = 0;
			List<Integer> percentages = new ArrayList<>();
			
			if (boxer1.getHeight() > boxer2.getHeight()) {
				boxerpoint1++;
			} else if (boxer1.getHeight() < boxer2.getHeight()) {
				boxerpoint2++;
			}
			
			if (boxer1.getReach() > boxer2.getReach()) {
				boxerpoint1++;
			} else if (boxer1.getReach() < boxer2.getReach()) {
				boxerpoint2++;
			}
			
			double knockoutpercent1 = 0.0, knockoutpercent2 = 0.0;
			
			knockoutpercent1 = (double)(boxer1.getKnockouts() * 100) / boxer1.getTotalFights();
			knockoutpercent2 = (double)(boxer2.getKnockouts() * 100) / boxer2.getTotalFights();
			
			if (knockoutpercent1 > knockoutpercent2) {
				boxerpoint1++;
			} else if (knockoutpercent1 < knockoutpercent2) {
				boxerpoint2++;
			}
			
			Map<String, Integer> comparisons = new HashMap<>();
			
			comparisons.put("Minimumweight", 1);
			comparisons.put("Flyweight", 2);
			comparisons.put("Bantamweight", 3);
			comparisons.put("Featherweight", 4);
			comparisons.put("Lightweight", 5);
			comparisons.put("Welterweight", 6);
			comparisons.put("Middleweight", 7);
			comparisons.put("Cruiserweight", 8);
			comparisons.put("Heavyweight", 9);
			
			String[] boxer1weights = boxer1.getWeightClass().split(",");
			int highest1 = 0;
			String[] boxer2weights = boxer2.getWeightClass().split(",");
			int highest2 = 0;
			
			for (String weight : boxer1weights) {
				if (highest1 < comparisons.get(weight)) {
					highest1 = comparisons.get(weight);
				}
			}
			for (String weight : boxer2weights) {
				if (highest2 < comparisons.get(weight)) {
					highest2 = comparisons.get(weight);
				}
			}
			
			if (highest1 > highest2) {
				boxerpoint1++;
			} else if (highest1 < highest2) {
				boxerpoint2++;
			}
			
			double points1 = (boxerpoint1 * 100) / 4;
			double points2 = ((4 - boxerpoint1) * 100) / 4;
			
			if (points1 == 100.0) {
				points1 = 99.0;
				points2 = 1.0;
			} else if (points2 == 100.0) {
				points2 = 99.0;
				points1 = 1.0;
			}
			
			percentages.add(0, (int)(points1));
			percentages.add(1, (int)(points2));
			
			return percentages;
		}

}