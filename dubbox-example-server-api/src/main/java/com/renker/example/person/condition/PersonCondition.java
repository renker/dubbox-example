package com.renker.example.person.condition;

import java.io.Serializable;

import com.renker.example.person.em.PersonStatus;

public class PersonCondition implements Serializable{
	private static final long serialVersionUID = -9114108904228879297L;
	private String account;
	private Integer status;
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public Integer getStatus() {
		return status;
	}
	
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	public void setStatus(PersonStatus status) {
		this.status = status.getValue();
	}
	
}
