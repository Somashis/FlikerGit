package com.fliker.Repository;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="Contract")
public class Contract {

	private String contractid;
	private String contractlegalnotice;
	private String contractdocid;
	
	
	public String getContractdocid() {
		return contractdocid;
	}
	public void setContractdocid(String contractdocid) {
		this.contractdocid = contractdocid;
	}
	public String getContractid() {
		return contractid;
	}
	public void setContractid(String contractid) {
		this.contractid = contractid;
	}
	public String getContractlegalnotice() {
		return contractlegalnotice;
	}
	public void setContractlegalnotice(String contractlegalnotice) {
		this.contractlegalnotice = contractlegalnotice;
	}
	
	
	
	
	
}
