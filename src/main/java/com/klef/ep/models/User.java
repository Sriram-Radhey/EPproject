package com.klef.ep.models;

import java.io.Serializable;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import com.klef.ep.models.User;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_table")
public class User implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 1L;

    @Id // Primary key
    @Column(name = "username", length = 50, nullable = false, unique = true) // Assuming "uname" is of type String
    private String username;
    @Column(name = "fullname", length = 60, nullable = false, unique = true)
    private String fullname;
    @Column(name = "email", length = 50, nullable = false, unique = true)
    private String email; 
    @Column(name = "password", length = 50, nullable = false)
    private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
