package com.fliker.Repository;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="GuidanceEntry")
public class GuidanceEntry {

	@Id
	private String guidanceid;
	private String consumeguidanceid;
	private String userid;
	private String sharetokenid;
	private String dashboardid;
	private String averageVelocity;
	private String[] topicid;
	private String timetableid;
	private String projectid;
	private String[] assignmentids;
	private String[] quizids;
	private String[] specificationset;
	private String[] levelremark;
	private String[] helpremark;
	
	
	
	
	public String[] getLevelremark() {
		return levelremark;
	}
	public void setLevelremark(String[] levelremark) {
		this.levelremark = levelremark;
	}
	public String[] getHelpremark() {
		return helpremark;
	}
	public void setHelpremark(String[] helpremark) {
		this.helpremark = helpremark;
	}
	public String[] getSpecificationset() {
		return specificationset;
	}
	public void setSpecificationset(String[] specificationset) {
		this.specificationset = specificationset;
	}
	public String getConsumeguidanceid() {
		return consumeguidanceid;
	}
	public void setConsumeguidanceid(String consumeguidanceid) {
		this.consumeguidanceid = consumeguidanceid;
	}
	public String getGuidanceid() {
		return guidanceid;
	}
	public void setGuidanceid(String guidanceid) {
		this.guidanceid = guidanceid;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getSharetokenid() {
		return sharetokenid;
	}
	public void setSharetokenid(String sharetokenid) {
		this.sharetokenid = sharetokenid;
	}
	public String getDashboardid() {
		return dashboardid;
	}
	public void setDashboardid(String dashboardid) {
		this.dashboardid = dashboardid;
	}
	public String getAverageVelocity() {
		return averageVelocity;
	}
	public void setAverageVelocity(String averageVelocity) {
		this.averageVelocity = averageVelocity;
	}
	public String[] getTopicid() {
		return topicid;
	}
	public void setTopicid(String[] topicid) {
		this.topicid = topicid;
	}
	public String getTimetableid() {
		return timetableid;
	}
	public void setTimetableid(String timetableid) {
		this.timetableid = timetableid;
	}
	public String getProjectid() {
		return projectid;
	}
	public void setProjectid(String projectid) {
		this.projectid = projectid;
	}
	public String[] getAssignmentids() {
		return assignmentids;
	}
	public void setAssignmentids(String[] assignmentids) {
		this.assignmentids = assignmentids;
	}
	public String[] getQuizids() {
		return quizids;
	}
	public void setQuizids(String[] quizids) {
		this.quizids = quizids;
	}
	
	
	
	
}
