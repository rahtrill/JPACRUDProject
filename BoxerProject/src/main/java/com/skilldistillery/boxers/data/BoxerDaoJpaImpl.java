package com.skilldistillery.boxers.data;

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
	
	@Override
	public Boxer findById(int boxerId) {
		return em.find(Boxer.class, boxerId);
	}

}
