package com.sale.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;
import com.sale.mapper.Marketingci;
import com.sale.service.ISaleService;

@Controller
@RequestMapping("sale")
public class SaleHandler {
	
	@Resource
	private ISaleService servicem;
	
	@RequestMapping("queryMarketingci.do")
	@ResponseBody
	public Msg queryMarketingci(){
		PageInfo<Marketingci> pi = servicem.queryMarketingci(1,5);
		//System.out.println(pi);
		//ModelAndView modelAndView = new ModelAndView();
	    //modelAndView.addObject("pageInfo",pi);
	    return Msg.success().add("pageInfo",pi);
	}
}
