package com.fliker.Modal;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;

import com.fliker.Connection.MongoConnection;
import com.fliker.Repository.Blog;
import com.fliker.Repository.Guidance;
import com.fliker.Repository.GuidanceContent;
import com.fliker.Repository.GuidanceContentDashboard;
import com.fliker.Repository.GuidanceContentFiles;
import com.fliker.Repository.GuidanceContentShared;
import com.fliker.Repository.Post;
import com.fliker.Repository.Profile;
import com.fliker.Repository.SearchContent;
import com.fliker.Repository.Timetable;
import com.fliker.Utility.DateFunctionality;
import com.fliker.Utility.ServicesUtil;
import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

public class GuidancePreview {

  public ArrayList getGuidance(String lastid){
		
		ArrayList postlist = new ArrayList();
		
		MongoConnection mongoconn = new MongoConnection();
		DBCollection collection = mongoconn.getDBConnection("GuidanceSelection");
		DBCursor cursor;
		if(lastid.isEmpty()){
			cursor = collection.find().limit(50).sort(new BasicDBObject("profileid",-1));
		}else{
			cursor = collection.find(new BasicDBObject("profileid", lastid)).limit(50).sort(new BasicDBObject("profileid",-1));
		}
		
		while(cursor.hasNext()){
			postlist.add(cursor.next());
		}
		
		
		return postlist;
	}
  
  
  public ArrayList getGuidanceResources( String subject){
		
		/*ArrayList postlist = new ArrayList();
		
		MongoConnection mongoconn = new MongoConnection();
		DBCollection collection = mongoconn.getDBConnection("GuidanceSelection");
		DBCursor cursor;
		if(lastid.isEmpty()){
			cursor = collection.find().limit(50).sort(new BasicDBObject("guidanceid",-1));
		}else{
			cursor = collection.find(new BasicDBObject("guidanceid", lastid)).limit(50).sort(new BasicDBObject("guidanceid",-1));
		}
		
		while(cursor.hasNext()){
			postlist.add(cursor.next());
		}
		
		ArrayList guidancelist =  new ArrayList();
		
		for (int i = 0; i < postlist.size(); i++) {
			System.out.println("postlist.size() ><><" + postlist.size());
			HashMap perPostSet = (HashMap) postlist.get(i);
			Set perset = perPostSet.entrySet();
			Iterator perit = perset.iterator();
			while (perit.hasNext()) {
				
				Map.Entry perme = (Map.Entry) perit.next();

				String keyvalue = (String) perme.getKey();
				
				System.out.println(perme.getValue());

				if (keyvalue.equalsIgnoreCase("guidanceSubject")) {
					
					BasicDBList basicdb = (BasicDBList)perme.getValue();
					
					for(int m = 0;m< basicdb.size(); m++){
						String guidencesub = (String)basicdb.get(m);
						if(guidencesub.equalsIgnoreCase(subject)){
							guidancelist.add(postlist.get(i));
						}
						//System.out.println(imageid);
					}
					
				}
			}
			
		}
		
		
		return guidancelist;*/
	  
	  
	  ArrayList guidancelist = new ArrayList<Post>();

		MongoConnection mongoconn = new MongoConnection();
		DBCollection collection = mongoconn.getDBConnection("GuidanceSelection");
		DBCursor cursor;
		cursor = collection.find().limit(20).sort(new BasicDBObject("guidanceid", -1));

		while (cursor.hasNext()) {

			DBObject dbj = cursor.next();
			HashMap totalSet = new HashMap();
			
			
			if((dbj.get("guidanceflag").toString()).equalsIgnoreCase(subject)){
				totalSet.put("guidanceid", dbj.get("guidanceid"));
				totalSet.put("guidanceSubject", dbj.get("guidanceSubject"));
				totalSet.put("guidanceflag", dbj.get("guidanceflag"));
				totalSet.put("guidencetype", dbj.get("guidencetype"));
			}
			
			
			
			guidancelist.add(totalSet);
		}

		
		
		return guidancelist;
	  
	  
	}
  
  
  public ArrayList getNextSetGuidanceResources(String pageno, String subject){
		
	  ArrayList guidancelist = new ArrayList<Post>();

		MongoConnection mongoconn = new MongoConnection();
		DBCollection collection = mongoconn.getDBConnection("GuidanceSelection");
		DBCursor cursor;
		int pagenos = Integer.parseInt(pageno);
		cursor = collection.find().skip(20*pagenos).limit(20).sort(new BasicDBObject("guidanceid", -1));

		while (cursor.hasNext()) {

			DBObject dbj = cursor.next();
			HashMap totalSet = new HashMap();
			
			
			if((dbj.get("guidanceflag").toString()).equalsIgnoreCase(subject)){
				totalSet.put("guidanceid", dbj.get("guidanceid"));
				totalSet.put("guidanceSubject", dbj.get("guidanceSubject"));
				totalSet.put("guidanceflag", dbj.get("guidanceflag"));
				totalSet.put("guidencetype", dbj.get("guidencetype"));
			}
			
			
			
			guidancelist.add(totalSet);
		}

		
		
		return guidancelist;
	  
	  
	}

	
  public void saveGidance(String userid, String[] guidancesubjects,HttpServletRequest request, String guidanceflag, String guidenctype){
		
	  ArrayList profileinfo = new ArrayList();
	  
		Guidance guidance = new Guidance();
		
		guidance.setGuidanceSubject(guidancesubjects);
		guidance.setUserid(userid);
		guidance.setGuidanceflag(guidanceflag);
		guidance.setGuidencetype(guidenctype);
		
		GuidancePreview guidanceprev = new GuidancePreview();
		
		
		String uniqueid = "";
		
		try {
			uniqueid = guidanceprev.makeSHA1Hash(guidancesubjects.toString()+userid);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		guidance.setGuidanceid(uniqueid);
		
		String guidanceid = guidance.getGuidanceid();
		
		MongoConnection mongocon = new MongoConnection();
		
		BasicDBObject basicreqobj =  guidanceprev.formDBObject(guidance);
		
		mongocon.saveObject(basicreqobj, "GuidanceSelection");
		//lots of operation needed to do here
		
		
		guidanceprev.searchContent(userid, uniqueid, guidancesubjects.toString());
		
		//mongoOperation.save(postentry);
		
		guidanceprev.publishContent(userid, uniqueid, guidancesubjects.toString());
		
		
	}
	
  


public String makeSHA1Hash(String input)
          throws NoSuchAlgorithmException, UnsupportedEncodingException
      {
          MessageDigest md = MessageDigest.getInstance("SHA1");
          md.reset();
          byte[] buffer = input.getBytes("UTF-8");
          md.update(buffer);
          byte[] digest = md.digest();

          String hexStr = "";
          for (int i = 0; i < digest.length; i++) {
              hexStr +=  Integer.toString( ( digest[i] & 0xff ) + 0x100, 16).substring( 1 );
          }
          return hexStr;
      }

  public BasicDBObject formDBObject(Guidance guidance){
		
		BasicDBObject basicdbobj = new BasicDBObject();
		basicdbobj.put("guidanceid", guidance.getGuidanceid());
		basicdbobj.put("userid", guidance.getUserid());
		basicdbobj.put("guidanceSubject", guidance.getGuidanceSubject());
		
		return basicdbobj;
		
	}
  
  public BasicDBObject formGuidanceContentDBObject(GuidanceContent guidancecontent){
		
		BasicDBObject basicdbobj = new BasicDBObject();
		basicdbobj.put("guidanceid", guidancecontent.getGuidanceid());
		basicdbobj.put("provideruserid", guidancecontent.getProvideruserid());
		basicdbobj.put("consumeruserid", guidancecontent.getConsumeruserid());
		basicdbobj.put("sharetokenid", guidancecontent.getSharetokenid());
		basicdbobj.put("dashboardid", guidancecontent.getDashboardid());
		basicdbobj.put("averageVelocity", guidancecontent.getAverageVelocity());
		basicdbobj.put("blogid", guidancecontent.getBlogid());
		basicdbobj.put("timetableid", guidancecontent.getTimetableid());
		
		return basicdbobj;
		
	}
  
  public BasicDBObject formGuidanceContentDashDBObject(GuidanceContentDashboard guidancecontentdash){
		
		BasicDBObject basicdbobj = new BasicDBObject();
		basicdbobj.put("guidancecontentDashid", guidancecontentdash.getGuidancecontentDashid());
		
		return basicdbobj;
	}
  
  public BasicDBObject formGuidanceContentShareDBObject(GuidanceContentShared guidancecontentshare){
		
		BasicDBObject basicdbobj = new BasicDBObject();
		basicdbobj.put("guidancesharedid", guidancecontentshare.getGuidancesharedid());
		return basicdbobj;
	}
  
  public BasicDBObject formBlogDBObject(Blog blog){
		
		BasicDBObject basicdbobj = new BasicDBObject();
		basicdbobj.put("blogid", blog.getBlogid());
		return basicdbobj;
		
	}
  
  public BasicDBObject formTimetableDBObject(Timetable timetable){
		
		BasicDBObject basicdbobj = new BasicDBObject();
		basicdbobj.put("timeableid", timetable.getTimeableid());
		return basicdbobj;
		
	}
  
  public String formLink(String url, String context, String linkadd, String ideaworkid)throws NullPointerException{
		
		URI uri;
		String domain=null;
		try {
			uri = new URI(url);
			domain = uri.getHost();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		 
		String link = domain+"/"+context+"/"+linkadd+"?"+ideaworkid;
		
		return link;
		
	}


  public void applyForGuidance(String guidanceSubject, String userid, String guidencetype, String guidanceuserid) {
	// TODO Auto-generated method stub
	  
	  PublishPreview pubprev = new PublishPreview();
	  GuidanceContent guidancecontent = new GuidanceContent();
	  GuidancePreview guidanceprev = new GuidancePreview();
	  GuidanceContentDashboard guidancecondash = new GuidanceContentDashboard();
	  GuidanceContentShared guidanceshare = new GuidanceContentShared();
	  //GuidanceContentFiles guidancecontfile = new GuidanceContentFiles();
	  String uniqueid = "";
		
		try {
			uniqueid = guidanceprev.makeSHA1Hash(guidanceSubject.toString()+userid+guidencetype+guidanceuserid);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  
		guidancecontent.setConsumeruserid(userid);
		guidancecontent.setDashboardid(uniqueid);
		guidancecontent.setGuidanceid(uniqueid);
		guidancecontent.setProvideruserid(guidanceuserid);
		guidancecontent.setSharetokenid(uniqueid);
		guidancecontent.setTimetableid(uniqueid);
		guidancecontent.setAverageVelocity("0");
		guidancecontent.setBlogid(uniqueid);
		
		MongoConnection mongocon = new MongoConnection();
		
		BasicDBObject basicreqobj =  guidanceprev.formGuidanceContentDBObject(guidancecontent);
		
		guidancecondash.setGuidancecontentDashid(guidancecontent.getDashboardid());
		
		guidanceshare.setGuidancesharedid(guidancecontent.getSharetokenid());
		
		guidanceprev.searchContent(userid, uniqueid, guidanceSubject);
		
		pubprev.publishtopublisher(guidanceSubject, userid, guidencetype, guidanceuserid, uniqueid);
		
	
  }


	public void applicationGuide(String guidanceSubject, String userid, String guidencetype, String guidanceuserid) {
		// TODO Auto-generated method stub
		
		GuidancePreview guidanceprev = new GuidancePreview();
		PublishPreview pubprev = new PublishPreview();
		
		String uniqueid = "";
		
		try {
			uniqueid = guidanceprev.makeSHA1Hash(guidanceSubject+userid+guidencetype);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		guidanceprev.searchContent(userid, uniqueid, guidanceSubject);
		
		pubprev.publishtopublisher(guidanceSubject, userid, guidencetype, guidanceuserid, uniqueid);
		
	}
	
	
	

  	public void searchContent(String userid,String uniqueid, String guidanceSubject){
  		
  		ArrayList profilelist = new ArrayList();
		ProfilePreview profprev = new ProfilePreview();
		profilelist = profprev.getProfileInfo(userid);
		
		String imageid = "";
		String profileid = "";
		String skypeid = "";
		String name = "";
		String emailid = "";
		String currentStatus="";
		String experience = "";
		String hangoverid = "";
		String salary = "";
		String tellaboutme = "";
		String contact = "";
		int articlecount = 0;
		int connectioncount = 0;
		int followercount = 0;
		
		
		for(int m=0;m<profilelist.size();m++){
			
			
			if(profilelist.get(m) instanceof Profile){
				Profile profileinform = (Profile)profilelist.get(m);
				imageid = profileinform.getProfileImageid();
				skypeid = profileinform.getSkypeid();
				name = profileinform.getName();
				emailid = profileinform.getEmailid();
				currentStatus = profileinform.getCurrentStatus();
				experience = profileinform.getExperience();
				hangoverid = profileinform.getHangoverid();
				contact = profileinform.getContact();
				
			}else{
				HashMap collectionlist = (HashMap)profilelist.get(m);
				Set collectionset = collectionlist.entrySet();
				Iterator collit = collectionset.iterator();
				while(collit.hasNext()){
					
					Map.Entry mecoll = (Map.Entry)collit.next();
					String collectionresul = (String)mecoll.getKey();
					
					if(collectionresul.equalsIgnoreCase("articles")){
						ArrayList articlelist = (ArrayList)mecoll.getValue();
						if(articlelist!= null){
							articlecount = articlelist.size();
						}
						
					}
				}
			}
			
		}
		
		SearchContent searchcontent = new SearchContent();
		searchcontent.setSearchid(uniqueid);
		searchcontent.setContentDescription("Guidance Subject ::"+guidanceSubject+" Profile Image ::"+imageid+" Profile SkypeID ::"+skypeid+" Profile Name ::"+name+" Profile Email ::"+emailid+" Profile CurrenStatus ::"+currentStatus
				+" Profile Experience ::"+experience+" Profile HangOver ID ::"+hangoverid+" Profile Contact ::"+contact);
		searchcontent.setContentLink("");
		searchcontent.setContentType("Apply For Guidance");
		
		MongoConnection mongoconsearch = new MongoConnection();
		SearchPreview searchprev = new SearchPreview();
		BasicDBObject basicreqobjsearch =  searchprev.formDBObject(searchcontent);
		
		mongoconsearch.saveObject(basicreqobjsearch, "SearchContent");
  		
  		
  	}
  
  	
  	 private void publishContent(String userid, String uniqueid, String location) {
 		// TODO Auto-generated method stub
 		
 		  
  		ArrayList profilelist = new ArrayList();
		ProfilePreview profprev = new ProfilePreview();
		profilelist = profprev.getProfileInfo(userid);
		
		String imageid = "";
		String profileid = "";
		String skypeid = "";
		String name = "";
		String emailid = "";
		String currentStatus="";
		String experience = "";
		String hangoverid = "";
		String salary = "";
		String tellaboutme = "";
		String contact = "";
		int articlecount = 0;
		int connectioncount = 0;
		int followercount = 0;
		
		
		for(int m=0;m<profilelist.size();m++){
			
			
			if(profilelist.get(m) instanceof Profile){
				Profile profileinform = (Profile)profilelist.get(m);
				imageid = profileinform.getProfileImageid();
				skypeid = profileinform.getSkypeid();
				name = profileinform.getName();
				emailid = profileinform.getEmailid();
				currentStatus = profileinform.getCurrentStatus();
				experience = profileinform.getExperience();
				hangoverid = profileinform.getHangoverid();
				contact = profileinform.getContact();
				
			}else{
				HashMap collectionlist = (HashMap)profilelist.get(m);
				Set collectionset = collectionlist.entrySet();
				Iterator collit = collectionset.iterator();
				while(collit.hasNext()){
					
					Map.Entry mecoll = (Map.Entry)collit.next();
					String collectionresul = (String)mecoll.getKey();
					
					if(collectionresul.equalsIgnoreCase("articles")){
						ArrayList articlelist = (ArrayList)mecoll.getValue();
						if(articlelist!= null){
							articlecount = articlelist.size();
						}
						
					}
				}
			}
			
		}
		
		String PostComment = name+" Publish Guidance";
		
		PostPreview postprev = new PostPreview();
		postprev.publishPost(userid, PostComment, location);
 		  
 		  
 	  }


	public HashMap getDashBoardData(String guidanceid) {
		
		HashMap dashboarddata = new HashMap();
		HashMap assignmentdata = new HashMap();
		HashMap actualdata = new HashMap();
		HashMap truedata = new HashMap();
		HashMap assignmentperprogress = new HashMap();
		
		MongoConnection mongocon = new MongoConnection();
		DBCursor resultcursor = mongocon.getDBObject("guidanceid", guidanceid, "GuidanceContent");
		if(resultcursor.hasNext()){
			DBObject theObj = resultcursor.next();
			
			String dashboardid = (String)theObj.get("dashboardid");
			
			MongoConnection mongoconint = new MongoConnection();
			DBCursor guidcursor = mongoconint.getDBObject("guidancecontentDashid", guidanceid, "GuidanceContentDash");
			
			if(guidcursor.hasNext()){
				
				DBObject theObjgrid = guidcursor.next();
				
				String[] dashboardids = (String[])theObjgrid.get("guidancedashdataid");
				
				for(int m=0;m<dashboardids.length;m++){
					
					MongoConnection mongocondash = new MongoConnection();
					DBCursor dashcursor = mongocondash.getDBObject("dashdataid", dashboardids[m], "DashBoardData");
					
					if(dashcursor.hasNext()){
						
						DBObject theObjdash = dashcursor.next();
						if(((String)theObjdash.get("dashdatatype")).equalsIgnoreCase("assignment")){
							assignmentdata.put((String)theObjdash.get("dashXdata"), (String)theObjdash.get("dashYdata"));
						}else if(((String)theObjdash.get("dashdatatype")).equalsIgnoreCase("truedata")){
							truedata.put((String)theObjdash.get("dashXdata"), (String)theObjdash.get("dashYdata"));
						}else if(((String)theObjdash.get("dashdatatype")).equalsIgnoreCase("actualdata")){
							actualdata.put((String)theObjdash.get("dashXdata"), (String)theObjdash.get("dashYdata"));
						}
						
					}
					
				}
				
				
			}
			if(!assignmentdata.isEmpty()){
				dashboarddata.put("assignment", assignmentdata);
			}
			if(!truedata.isEmpty()){
				dashboarddata.put("truedata", truedata);
			}
			if(!actualdata.isEmpty()){
				dashboarddata.put("actualdata", actualdata);
			}
		}
		return dashboarddata;
	}
  	

	}