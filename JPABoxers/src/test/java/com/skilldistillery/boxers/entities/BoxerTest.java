package com.skilldistillery.boxers.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class BoxerTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private Boxer boxer;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPABoxers");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		boxer = em.find(Boxer.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		boxer = null;
	}

	@Test
	void test_Boxer_entity_mapping() {
		assertNotNull(boxer);
		assertEquals("Muhammed", boxer.getFirstName());
		assertEquals("Ali", boxer.getLastName());
	}

}
