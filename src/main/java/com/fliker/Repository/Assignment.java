package com.fliker.Repository;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="Assignment")
public class Assignment {

	
	@Id
	private String assignmentid;
	private String assignmentname;
	private String assignmentcreatedby;
	private String assignmentdescription;
	private String assignmentsubject;
	private String[] assignmentquestionsets;
	private String[] assignmentanswersheet;
	private String assignmentstartdatetime;
	private String assignmentenddatetime;
	private String noOfQuestions;
	private String averageVelocity;
	private String percentagescore;
	private String[] assignmentshareids;
	
	
	
	public String getAssignmentcreatedby() {
		return assignmentcreatedby;
	}
	public void setAssignmentcreatedby(String assignmentcreatedby) {
		this.assignmentcreatedby = assignmentcreatedby;
	}
	public String getAssignmentsubject() {
		return assignmentsubject;
	}
	public void setAssignmentsubject(String assignmentsubject) {
		this.assignmentsubject = assignmentsubject;
	}
	public String getAssignmentname() {
		return assignmentname;
	}
	public void setAssignmentname(String assignmentname) {
		this.assignmentname = assignmentname;
	}
	public String getAssignmentdescription() {
		return assignmentdescription;
	}
	public void setAssignmentdescription(String assignmentdescription) {
		this.assignmentdescription = assignmentdescription;
	}
	public String[] getAssignmentshareids() {
		return assignmentshareids;
	}
	public void setAssignmentshareids(String[] assignmentshareids) {
		this.assignmentshareids = assignmentshareids;
	}
	public String getAssignmentstartdatetime() {
		return assignmentstartdatetime;
	}
	public void setAssignmentstartdatetime(String assignmentstartdatetime) {
		this.assignmentstartdatetime = assignmentstartdatetime;
	}
	public String getAssignmentenddatetime() {
		return assignmentenddatetime;
	}
	public void setAssignmentenddatetime(String assignmentenddatetime) {
		this.assignmentenddatetime = assignmentenddatetime;
	}
	public String getNoOfQuestions() {
		return noOfQuestions;
	}
	public void setNoOfQuestions(String noOfQuestions) {
		this.noOfQuestions = noOfQuestions;
	}
	public String getAverageVelocity() {
		return averageVelocity;
	}
	public void setAverageVelocity(String averageVelocity) {
		this.averageVelocity = averageVelocity;
	}
	public String getPercentagescore() {
		return percentagescore;
	}
	public void setPercentagescore(String percentagescore) {
		this.percentagescore = percentagescore;
	}
	public String getAssignmentid() {
		return assignmentid;
	}
	public void setAssignmentid(String assignmentid) {
		this.assignmentid = assignmentid;
	}
	public String[] getAssignmentquestionsets() {
		return assignmentquestionsets;
	}
	public void setAssignmentquestionsets(String[] assignmentquestionsets) {
		this.assignmentquestionsets = assignmentquestionsets;
	}
	
	public String[] getAssignmentanswersheet() {
		return assignmentanswersheet;
	}
	public void setAssignmentanswersheet(String[] assignmentanswersheet) {
		this.assignmentanswersheet = assignmentanswersheet;
	}
	
	
	
	
	
	
}
