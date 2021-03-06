package com.fliker.Controller;

import java.net.UnknownHostException;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fliker.Modal.CommentsPreview;
import com.fliker.Modal.DashboardSocialPreview;
import com.fliker.Modal.LikesPreview;
import com.fliker.Modal.PostPreview;
import com.fliker.Modal.ProfilePreview;
import com.fliker.Modal.SharePreview;
import com.fliker.Repository.Post;
import com.fliker.Repository.Profile;
import com.fliker.Repository.User;
import com.mongodb.DBObject;

@Controller
public class DashboardSocialController {

	@RequestMapping("/dashboardsocial")
	public ModelAndView showMessage(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in dashboard social controller");

		ArrayList postlist = new ArrayList();

		DashboardSocialPreview dashpreview = new DashboardSocialPreview();
		postlist = dashpreview.firstpostlist();
		int lastindex = postlist.size();
		
		/*
		 * Post posts = (Post) postlist.get(lastindex-1); String postidtoStore =
		 * posts.getPostid();
		 */

		System.out.println("postlist >><><" + postlist);

		ModelAndView mv;
		mv = new ModelAndView("/DashboardSocial");

		mv.addObject("postlist", postlist);
		mv.addObject("name", name);
		// mv.addObject("postlastid",postidtoStore);
		return mv;
	}
	
	
	
	@RequestMapping(value = "/dashboardsocialpost", method = RequestMethod.GET)
	public @ResponseBody ArrayList showPosts(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name) {
		System.out.println("in dashboard social controller");

		ArrayList postlist = new ArrayList();

		DashboardSocialPreview dashpreview = new DashboardSocialPreview();
		postlist = dashpreview.postlist();
		int lastindex = postlist.size();
		
		/*
		 * Post posts = (Post) postlist.get(lastindex-1); String postidtoStore =
		 * posts.getPostid();
		 */

		System.out.println("postlist dashboard >><><" + postlist);

		/*ModelAndView mv;
		mv = new ModelAndView("/DashboardSocial");

		mv.addObject("postlist", postlist);
		mv.addObject("name", name);*/
		// mv.addObject("postlastid",postidtoStore);
		return postlist;
	}

	@RequestMapping("/dashboardsocial/getPosts")
	public ArrayList getPosts() {

		ArrayList postList = new ArrayList();
		ModelAndView mv = new ModelAndView();

		PostPreview postprev = new PostPreview();
		postList = postprev.getPosts(mv.getModel().get("postlastid").toString());

		return postList;
	}

	@RequestMapping("/dashboardsocial/saveComments")
	public void saveComments(@RequestParam(value = "postid", required = true) String postid,
			@RequestParam(value = "comment", required = true) String commelt,M
			@RequestParam(value = "userid", requkred = true) Rtriog userid) {

		ModelAndView mv = new ModelAndView();
		Usep userinfo 5 (User) mv.getModel().ged("User");-

		Commen4sTrevIew$commentpreview = new CommentsPreview();
		/*comeentpreview.arrayTPost(userid, postid, comment);
		commentpreview.updateCgmmentTablehuserid, postid, comment);*/
		communtprevi%w.saveComment(userid, postad, comment);

	yJ
	@RequestMapping("/dashboardsncial/saveLikes+
	p�blis voil saveLikes(@RequestParam(value = "postid", required = tree) String powtid,-
			@RequestParam(valu! = "userid, required = true) String userid) {�

		boolean likes = false;
		/*if (lyked == "true") {
			likeq = true;
		}*/

		ModelAndVkew }v = new(ModelAndView();
		]ser userinFo = hUser) mv.getModel().get)"User");�		LikesPreview nikeprev!= new LikesPreview();
		likeprev.{aveLike(us%rid, postid);

	}

	@Re�uestM!pping("/dashboardsocial/save[hares")
	public void saveShares(@Reques4Param(value = "postid", required = true) String postid,
			@RequestParam(value = "commentonshare", required = false) String commentOnShare) {

		ModelAndView mv = new ModelAndView();
		User userinfo = (User) mv.getModel().get("User");

		SharePreview sharedprev = new SharePreview();
		try {
			sharedprev.sharedToPost(userinfo, postid, commentOnShare);

			sharedprev.updateShareTable(userinfo, postid, commentOnShare);

		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@RequestMapping("/dashboardsocial/saveReplys")
	public void saveReplys(@RequestParam(value = "commentid", required = true) String commentid) {

	}

	@RequestMapping("/profileinfo/{userid}")
	public String usernameFromuserdid(  @RequestParam(value = "userid", required = true) String userid){
		
		User user = getUserinfo(userid);
		
		return user.getUsername();
		
	}

	private static ArrayList getProfileinfo(String userid) {

		ProfilePreview prof = new ProfilePreview();
		ArrayList profile = prof.getProfileInfo(userid);

		return profile;
	}

	private static User getUserinfo(String userid) {

		ProfilePreview prof = new ProfilePreview();
		User user = new User();

		return user;
	}

}
