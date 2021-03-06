package com.fliker.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fliker.Modal.OSMPreview;
import com.fliker.Modal.ProfilePreview;
import com.fliker.Modal.TradePreview;
import com.fliker.Repository.Courses;
import com.fliker.Repository.User;

@Controller
public class TradeController {

	
	@RequestMapping("/stockselling")
	public String stockselling(
			@RequestParam(value = "stockamount", required = false, defaultValue = "World") String stockamount,
			@RequestParam(value = "stockprice", required = false, defaultValue = "World") String stockprice,
			@RequestParam(value = "stockid", required = false, defaultValue = "World") String stockid,
			@RequestParam(value = "ownerid", required = false, defaultValue = "World") String ownerid,
			@RequestParam(value = "osmmodelid", required = false, defaultValue = "World") String osmmodelid,
			HttpServletRequest request) {
		System.out.println("in controller");
		
		String stockavalable = "true";
		
		TradePreview tradeprev = new TradePreview();
		tradeprev.releaseStockToSell(stockamount,stockprice,stockid,ownerid,osmmodelid);
		
		
		
		return stockavalable;
		
	}
	
	
	@RequestMapping("/retrieveStock")
	public String retrieveStock(
			@RequestParam(value = "ownerid", required = false, defaultValue = "World") String ownerid,
			HttpServletRequest request) {
		System.out.println("in controller");
		
		String stockavalable = "true";
		
		TradePreview tradeprev = new TradePreview();
		tradeprev.retrieveStocks(ownerid);
		
		
		
		return stockavalable;
		
	}
	
	
	@RequestMapping("/stockPreview")
	public ModelAndView showStockView() {
		System.out.println("in controller");
 
		ArrayList assignmentlist = new ArrayList<Courses>();
		
		
		ModelAndView mv = new ModelAndView("/TradeStockView");
		return mv;
	}
	
	
	@RequestMapping("/stockInfo")
	public ModelAndView showStockInfo() {
		System.out.println("in controller");
 
		ArrayList assignmentlist = new ArrayList<Courses>();
		
		
		ModelAndView mv = new ModelAndView("/TradeStockInfo");
		return mv;
	}

	
	@RequestMapping("/stockbuying")
	public String stockbuying(
			@RequestParam(value = "stockamount", required = false, defaultValue = "World") String stockamount,
			@RequestParam(value = "ownerid", required = false, defaultValue = "World") String ownerid,
			@RequestParam(value = "stockprice", required = false, defaultValue = "World") String stockprice,
			HttpServletRequest request) {
		System.out.println("in controller");
		
		String stockavalable = "true";
		TradePreview tradeprev = new TradePreview();
		ServletContext context = request.getSession().getServletContext();
		HashMap<String,LinkedList<String>> tradeavaillist = (HashMap<String,LinkedList<String>>)context.getAttribute("TradeAvailList");
		String totalstock = (String)context.getAttribute("TradeTotalList");
		
		ArrayList tradesalelist = tradeprev.proceedToBuyout(totalstock,stockamount,ownerid,tradeavaillist);
		
		tradeprev.buyout(tradesalelist,ownerid,stockprice);
		
		/*
		HashMap<String,LinkedList<String>> istradeavail = tradeprev.checkAvalability(osmmodelid,stockid,stockamount,stockprice);
		String elements = tradeprev.checkElements(istradeavail);
		if(!elements.isEmpty()){
			tradeprev.getAllTradeElements(elements,stockamount);
		}*/
		
		return stockavalable;
		
	}
	
	
	@RequestMapping("/stockavaliable")
	public int stockavaliable(
			@RequestParam(value = "osmmodelid", required = false, defaultValue = "World") String osmmodelid,
			@RequestParam(value = "stockprice", required = false, defaultValue = "World") String stockprice,
			@RequestParam(value = "ownerid", required = false, defaultValue = "World") String ownerid,
			HttpServletRequest request) {
		System.out.println("in controller");
		
		String stockavalable = "true";
		int totalstock = 0;
		
		TradePreview tradeprev = new TradePreview();
		HashMap<String,LinkedList<String>> istradeavail = tradeprev.checkAvalability(osmmodelid,ownerid);
		String elements = tradeprev.checkElements(istradeavail);
		if(!elements.isEmpty()){
			totalstock = tradeprev.getAllTradeElements(elements,stockprice);
		}
		ServletContext context = request.getSession().getServletContext();
		context.setAttribute("TradeAvailList", istradeavail);
		context.setAttribute("TradeTotalList", elements);
		
		return totalstock;
		
	}
	
	
	@RequestMapping("/cancelbuystock")
	public String cancelbuystock(
			@RequestParam(value = "stockamount", required = false, defaultValue = "World") String stockamount,
			@RequestParam(value = "stockprice", required = false, defaultValue = "World") String stockprice,
			@RequestParam(value = "stockid", required = false, defaultValue = "World") String stockid,
			@RequestParam(value = "ownerid", required = false, defaultValue = "World") String ownerid,
			@RequestParam(value = "osmmodelid", required = false, defaultValue = "World") String osmmodelid,
			HttpServletRequest request) {
		System.out.println("in controller");
		
		String stockavalable = "true";
		ServletContext context = request.getSession().getServletContext();
		//HashMap<String,LinkedList<String>> tradeavaillist = (HashMap<String,LinkedList<String>>)context.getAttribute("TradeAvailList");
		HashMap<String,LinkedList<String>> tradeavaillist = (HashMap<String,LinkedList<String>>)context.getAttribute("TradeAvailList");
		
		TradePreview tradeprev = new TradePreview();
		tradeprev.releaseLockTrade(tradeavaillist,ownerid,osmmodelid);
		
		
		
		return stockavalable;
		
	}
	
	
	@RequestMapping("/proceedPayment")
	public String proceedpayment(
			@RequestParam(value = "stockamount", required = false, defaultValue = "World") String stockamount,
			@RequestParam(value = "stockprice", required = false, defaultValue = "World") String stockprice,
			@RequestParam(value = "stockid", required = false, defaultValue = "World") String stockid,
			@RequestParam(value = "ownerid", required = false, defaultValue = "World") String ownerid,
			@RequestParam(value = "osmmodelid", required = false, defaultValue = "World") String osmmodelid,
			HttpServletRequest request) {
		System.out.println("in controller");
		
		String stockavalable = "true";
		ServletContext context = request.getSession().getServletContext();
		//HashMap<String,LinkedList<String>> tradeavaillist = (HashMap<String,LinkedList<String>>)context.getAttribute("TradeAvailList");
		HashMap<String,LinkedList<String>> tradeavaillist = (HashMap<String,LinkedList<String>>)context.getAttribute("TradeAvailList");
		
		TradePreview tradeprev = new TradePreview();
		tradeprev.releaseLockTrade(tradeavaillist,ownerid,osmmodelid);
		
		
		
		return stockavalable;
		
	}
}
