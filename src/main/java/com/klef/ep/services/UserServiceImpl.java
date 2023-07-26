package com.klef.ep.services;

import java.util.List;

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Employee;
import com.klef.ep.models.User;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class UserServiceImpl  implements UserService
{
	public String addUser(User user) 
	{
	  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
   	  EntityManager em = emf.createEntityManager();
   	  
   	  em.getTransaction().begin();
   	  em.persist(user);     // insert operation
   	  em.getTransaction().commit();
   	  
   	  em.close();
   	  emf.close();
   	  
   	  return "Record Inserted Successfully";
	}

	
	public String updateUser(User user) 
	{
		  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
    	  EntityManager em = emf.createEntityManager();
    	  
    	  em.getTransaction().begin();
    	  User e = em.find(User.class, user.getUsername()); // fetching object based on ID
    	  e.setFullname(user.getFullname());
    	  e.setPassword(user.getPassword());
    	  e.setEmail(user.getEmail());
          em.getTransaction().commit();
    	  
    	  em.close();
    	  emf.close();
    	  
    	  return "Record Updated Successfully";
    	  
	}
	public User getUserByUsername(String username) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
        EntityManager em = emf.createEntityManager();
        
        User user = em.find(User.class, username);
        
        em.close();
        emf.close();
        
        return user;
    }

	
	


	@Override
	public User UserLogin(String username, String password) 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select e from User e where username=? and password=?   "); // atmost one object (0 or 1)
	     qry.setParameter(1, username);
	     qry.setParameter(2, password);
	     
	     User user = null;
	     
	     if(qry.getResultList().size() > 0) 
	     {
	    	    user = (User) qry.getSingleResult();
	     }
	     
	     em.close();
	     emf.close();
	   
	     return user;
	}

}
