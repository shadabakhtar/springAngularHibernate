package com.newgen.ojt.beans;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employee_detail")
public class Employee implements Serializable {
private static final long serialVersionUID = -8809089768201955649L;
@Id
@Column(name = "id")
@GeneratedValue(strategy = GenerationType.IDENTITY)
private Long id;
@Column(name = "firstName")
private String firstName;
@Column(name = "phoneNo")
private Long phoneNo;
@Column(name = "email")
private String email;
public Employee(){}
public Employee(Long id, String firstName, Long phoneNo, String email) {
super();
this.id = id;
this.firstName = firstName;
this.phoneNo = phoneNo;
this.email = email;
}
public Long getId() {
return id;
}
public void setId(Long id) {
this.id = id;
}
public String getFirstName() {
return firstName;
}
public void setFirstName(String firstName) {
this.firstName = firstName;
}
public Long getPhoneNo() {
return phoneNo;
}
public void setPhoneNo(Long phoneNo) {
this.phoneNo = phoneNo;
}
public String getEmail() {
return email;
}
public void setEmail(String email) {
this.email = email;
}
}