package com.fliker.Repository;

import java.util.HashMap;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="Profile")
public class Profile {

	private String profileid;
	private String userid;
	private String[] follwerids;
	private String[] connectids;
	private String[] articleids;
	private String experience;
	private String salary;
	private String salaryhike;
	private String name;
	private String currentStatus;
	private String emailid;
	private String skypeid;
	private String contact;
	private String hangoverid;
	private String tellmeaboutme;
	private String profileImageid;
	private String profiledataid;
	private String[] skilliset;
	private String[] projects;
	private String[] courseids;
	private String[] guidanceids;
	private String[] guideprovide;
	private String[] courseprovide;
	private String[] eventids;
	private String acountid;
	private String[] schoolids;
	private String[] schoolattendee;
	
	
	
	public String[] getGuideprovide() {
		return guideprovide;
	}
	public void setGuideprovide(String[] guideprovide) {
		this.guideprovide = guideprovide;
	}
	public String[] getCourseprovide() {
		return courseprovide;
	}
	public void setCourseprovide(String[] courseprovide) {
		this.courseprovide = courseprovide;
	}
	public String[] getSchoolattendee() {
		return schoolattendee;
	}
	public void setSchoolattendee(String[] schoolattendee) {
		this.schoolattendee = schoolattendee;
	}
	public String[] getSchoolids() {
		return schoolids;
	}
	public void setSchoolids(String[] schoolids) {
		this.schoolids = schoolids;
	}
	public String getAcountid() {
		return acountid;
	}
	public void setAcountid(String acountid) {
		this.acountid = acountid;
	}
	public String[] getEventids() {
		return eventids;
	}
	public void setEventids(String[] eventids) {
		this.eventids = eventids;
	}
	public String[] getGuidanceids() {
		return guidanceids;
	}
	public void setGuidanceids(String[] guidanceids) {
		this.guidanceids = guidanceids;
	}
	public String getSalaryhike() {
		return salaryhike;
	}
	public void setSalaryhike(String salaryhike) {
		this.salaryhike = salaryhike;
	}
	public String[] getCourseids() {
		return courseids;
	}
	public void setCourseids(String[] courseids) {
		this.courseids = courseids;
	}
	public String[] getSkilliset() {
		return skilliset;
	}
	public void setSkilliset(String[] skilliset) {
		this.skilliset = skilliset;
	}
	public String[] getProjects() {
		return projects;
	}
	public void setProjects(String[] projects) {
		this.projects = projects;
	}
	public String getProfiledataid() {
		return profiledataid;
	}
	public void setProfiledataid(String profiledataid) {
		this.profiledataid = profiledataid;
	}
	public String getProfileid() {
		return profileid;
	}
	public void setProfileid(String profileid) {
		this.profileid = profileid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String[] getFollwerids() {
		return follwerids;
	}
	public void setFollwerids(String[] follwerids) {
		this.follwerids = follwerids;
	}
	public String[] getConnectids() {
		return connectids;
	}
	public void setConnectids(String[] connectids) {
		this.connectids = connectids;
	}
	public String[] getArticleids() {
		return articleids;
	}
	public void setArticleids(String[] articleids) {
		this.articleids = articleids;
	}
	
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCurrentStatus() {
		return currentStatus;
	}
	public void setCurrentStatus(String currentStatus) {
		this.currentStatus = currentStatus;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getSkypeid() {
		return skypeid;
	}
	public void setSkypeid(String skypeid) {
		this.skypeid = skypeid;
	}
	public String getHangoverid() {
		return hangoverid;
	}
	public void setHangoverid(String hangoverid) {
		this.hangoverid = hangoverid;
	}
	public String getTellmeaboutme() {
		return tellmeaboutme;
	}
	public void setTellmeaboutme(String tellmeaboutme) {
		this.tellmeaboutme = tellmeaboutme;
	}
	public String getProfileImageid() {
		return profileImageid;
	}
	public void setProfileImageid(String profileImageid) {
		this.profileImageid = profileImageid;
	}
	
	
	
}
