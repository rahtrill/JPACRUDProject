package com.skilldistillery.boxers.data;

import java.util.List;

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

}
