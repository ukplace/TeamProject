package com.itwillbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CenterController {
	
	@RequestMapping(value = "/center/notice", method = RequestMethod.GET)
	public String notice() {
		// /WEB-INF/views/foot/notice.jsp
		return "foot/notice";
	}
	@RequestMapping(value = "/center/noticePro", method = RequestMethod.GET)
	public String noticePro() {
		// /WEB-INF/views/foot/notice.jsp
		return "foot/notice";
	}
	

}
