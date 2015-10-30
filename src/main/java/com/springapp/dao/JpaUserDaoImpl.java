package com.springapp.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.NonUniqueResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import com.springapp.entities.User;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class JpaUserDaoImpl implements UserDao 
{
	@PersistenceContext
	private EntityManager em;
	
	@Override
	@Transactional(readOnly=true)
	public List<User> findAll() {
		return em.createQuery("select u from User u", User.class).getResultList();
	}

	@Override
	@Transactional(readOnly=true)
	public User findUserById(int id) {
		return em.find(User.class, id);
	}

	@Override
	public User create(User user) {
		if(user.getId() <= 0){
			em.persist(user);
		} else {
			user = em.merge(user);
		}
		return user;
	}

	@Override
	public User login(String username, String password) {
		TypedQuery<User> query = em.createQuery("select u from User u where u.username=?1 and u.password=?2", User.class);
		query.setParameter(1, username);
		query.setParameter(2, password);
		try {
			return query.getSingleResult();
		} catch (NonUniqueResultException|NoResultException e) {
			return null;
		}
		
	}
	
}

