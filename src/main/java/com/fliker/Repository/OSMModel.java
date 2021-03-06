package com.fliker.Repository;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="OSM")
public class OSMModel {
	
	@Id
	private String osmid;
	private String osmdemandid;
	private String osmsupplyid;
	private String[] osmstakeholdingid;
	private String osmhealthid;
	private String[] osmbackupid;
	private String[] osmpartnerid;
	private String[] osmdependentid;
	private String osmstockid;
	private String osmlocation;
	private String[] osmbuyerids;
	private String[] osminvestors;
	private String osmowner;
	private String osmtype;
	private String osmprojectsellerid;
	
	
	
	public String getOsmprojectsellerid() {
		return osmprojectsellerid;
	}
	public void setOsmprojectsellerid(String osmprojectsellerid) {
		this.osmprojectsellerid = osmprojectsellerid;
	}
	public String getOsmtype() {
		return osmtype;
	}
	public void setOsmtype(String osmtype) {
		this.osmtype = osmtype;
	}
	public String getOsmowner() {
		return osmowner;
	}
	public void setOsmowner(String osmowner) {
		this.osmowner = osmowner;
	}
	public String[] getOsminvestors() {
		return osminvestors;
	}
	public void setOsminvestors(String[] osminvestors) {
		this.osminvestors = osminvestors;
	}
	public String[] getOsmbuyerids() {
		return osmbuyerids;
	}
	public void setOsmbuyerids(String[] osmbuyerids) {
		this.osmbuyerids = osmbuyerids;
	}
	public String getOsmid() {
		return osmid;
	}
	public void setOsmid(String osmid) {
		this.osmid = osmid;
	}
	public String getOsmdemandid() {
		return osmdemandid;
	}
	public void setOsmdemandid(String osmdemandid) {
		this.osmdemandid = osmdemandid;
	}
	public String getOsmsupplyid() {
		return osmsupplyid;
	}
	public void setOsmsupplyid(String osmsupplyid) {
		this.osmsupplyid = osmsupplyid;
	}
	public String[] getOsmstakeholdingid() {
		return osmstakeholdingid;
	}
	public void setOsmstakeholdingid(String[] osmstakeholdingid) {
		this.osmstakeholdingid = osmstakeholdingid;
	}
	public String getOsmhealthid() {
		return osmhealthid;
	}
	public void setOsmhealthid(String osmhealthid) {
		this.osmhealthid = osmhealthid;
	}
	public String[] getOsmbackupid() {
		return osmbackupid;
	}
	public void setOsmbackupid(String[] osmbackupid) {
		this.osmbackupid = osmbackupid;
	}
	public String[] getOsmpartnerid() {
		return osmpartnerid;
	}
	public void setOsmpartnerid(String[] osmpartnerid) {
		this.osmpartnerid = osmpartnerid;
	}
	public String[] getOsmdependentid() {
		return osmdependentid;
	}
	public void setOsmdependentid(String[] osmdependentid) {
		this.osmdependentid = osmdependentid;
	}
	public String getOsmstockid() {
		return osmstockid;
	}
	public void setOsmstockid(String osmstockid) {
		this.osmstockid = osmstockid;
	}
	public String getOsmlocation() {
		return osmlocation;
	}
	public void setOsmlocation(String osmlocation) {
		this.osmlocation = osmlocation;
	}
	
	
	
	
	
	

}
