package com.fliker.Repository;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="Event")
public class Events {

	@Id
	private String eventid;
	private String evententryid;
	private String eventstarttime;
	private String eventendtime;
	private String eventoccurance;
	private String eventtitle;
	private String eventDescription;
	private String eventpriority;
	private String evensharedbyuserid;
	private String[] eventsharedtouserids;
	public String getEventid() {
		return eventid;
	}
	public void setEventid(String eventid) {
		this.eventid = eventid;
	}
	
	
	public String getEvententryid() {
		return evententryid;
	}
	public void setEvententryid(String evententryid) {
		this.evententryid = evententryid;
	}
	public String getEventstarttime() {
		return eventstarttime;
	}
	public void setEventstarttime(String eventstarttime) {
		this.eventstarttime = eventstarttime;
	}
	public String getEventendtime() {
		return eventendtime;
	}
	public void setEventendtime(String eventendtime) {
		this.eventendtime = eventendtime;
	}
	public String getEventoccurance() {
		return eventoccurance;
	}
	public void setEventoccurance(String eventoccurance) {
		this.eventoccurance = eventoccurance;
	}
	public String getEventtitle() {
		return eventtitle;
	}
	public void setEventtitle(String eventtitle) {
		this.eventtitle = eventtitle;
	}
	public String getEventDescription() {
		return eventDescription;
	}
	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}
	public String getEventpriority() {
		return eventpriority;
	}
	public void setEventpriority(String eventpriority) {
		this.eventpriority = eventpriority;
	}
	public String getEvensharedbyuserid() {
		return evensharedbyuserid;
	}
	public void setEvensharedbyuserid(String evensharedbyuserid) {
		this.evensharedbyuserid = evensharedbyuserid;
	}
	public String[] getEventsharedtouserids() {
		return eventsharedtouserids;
	}
	public void setEventsharedtouserids(String[] eventsharedtouserids) {
		this.eventsharedtouserids = eventsharedtouserids;
	}
	
	
}