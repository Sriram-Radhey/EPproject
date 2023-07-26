package com.klef.ep.services;

import java.util.List;


import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Admin;
import com.klef.ep.models.Employee;
import com.klef.ep.models.Faculty;
import com.klef.ep.models.Student;
import com.klef.ep.models.User;
import com.klef.ep.models.Product;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class AdminServiceImpl implements AdminService
{

	@Override
	public Admin CheckAdminLogin(String username, String password) 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select a from Admin a where username=? and password=?   "); // atmost one object (0 or 1)
	     qry.setParameter(1, username);
	     qry.setParameter(2, password);
	     
	     Admin admin = null;
	     
	     if(qry.getResultList().size() > 0) 
	     {
	    	    admin = (Admin) qry.getSingleResult();
	     }
	     
	     em.close();
	     emf.close();
	   
	     return admin;

	}
	
	@Override
	public String deleteEmployee(int eid) 
	{
		  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
		  Employee e = em.find(Employee.class, eid); // fetching object based on ID
	   	  em.remove(e);
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
		  emf.close();
		  
		  return "Record Deleted Successfully";
	}
	
	public List<Employee> viewAllEmployees() 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("   select e from Employee e "); // e is an alias of Employee class
         List<Employee> emplist = qry.getResultList();
      
         em.close();
   	    emf.close();
   	    
   	    return emplist;
	}


	@Override
	public String AddStudent(Student student) 
	{
		return null;
	}

	@Override
	public String AddFaculty(Faculty faculty) 
	{
		return null;
	}

	@Override
	public List<Student> ViewAllStudents() 
	{
		return null;
	}

	@Override
	public List<Faculty> ViewAllFaculty() 
	{
		return null;
	}
	
	@Override
	public String deleteUser(String username) 
	{
		  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
		  User e = em.find(User.class, username); // fetching object based on ID
	   	  em.remove(e);
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
		  emf.close();
		  
		  return "Record Deleted Successfully";
	}
	
	public List<User> viewAllUsers() 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("   select e from User e "); // e is an alias of Employee class
         List<User> emplist = qry.getResultList();
      
         em.close();
   	    emf.close();
   	    
   	    return emplist;
	}
	
	public String AddProduct(Product product) 
	{
		  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
	   	  EntityManager em = emf.createEntityManager();
	   	  
	   	  em.getTransaction().begin();
	   	  em.persist(product);     // insert product
	   	  em.getTransaction().commit();
	   	  
	   	  em.close();
	   	  emf.close();
	   	  
	   	  return "Product Inserted Successfully";
	}

	public List<Product> ViewAllProducts() 
	{
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
     	 EntityManager em = emf.createEntityManager();
     	  
        em.getTransaction().begin();
        
        Query qry = em.createQuery("   select p from Product p "); // p is an alias of Product class
        List<Product> productlist = qry.getResultList();
     
        em.close();
  	    emf.close();
  	    
  	    return productlist;
	}

	public Product ViewProductByID(int id) 
	{
		 EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
      	 EntityManager em = emf.createEntityManager();
      	  
         em.getTransaction().begin();
         
         Query qry = em.createQuery("  select p from Product p where id=?  "); // atmost one object (0 or 1)
	     qry.setParameter(1, id);
	     
	     Product p = null;
	     
	     if(qry.getResultList().size() > 0) 
	     {
	    	    p = (Product) qry.getSingleResult();
	     }
	     
	     em.close();
	     emf.close();
	   
	     return p;
	}

}
