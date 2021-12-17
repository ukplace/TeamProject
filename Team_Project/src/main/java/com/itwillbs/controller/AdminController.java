package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class AdminController {
	
	
	@RequestMapping(value = "/admin/login", method = RequestMethod.GET)
		public String login() {
			System.out.println("/admin/login");
			return "admin/login";
		}
	
	@RequestMapping(value = "/admin/loginPro", method = RequestMethod.POST)
		public String loginPro( HttpSession session) {
			System.out.println("/admin/loginPro");
			
				
			
				return "admin/login";
			
			
		}
	

	@RequestMapping(value = "/admin/productRegist", method = RequestMethod.GET)
	   public String productRegist() {
	      // /WEB-INF/views/admin/productRegist.jsp
	      return "admin/productRegist";
	   }

	@RequestMapping(value = "/admin/productList", method = RequestMethod.GET)
	   public String productList() {
	      // /WEB-INF/views/admin/productList.jsp
	      return "admin/productList";
	   }
	
	@RequestMapping(value = "/admin/productDetail", method = RequestMethod.GET)
	   public String productDetail() {
	      // /WEB-INF/views/admin/productDetail.jsp
	      return "admin/productDetail";
	   }
	 
	 
	 @RequestMapping(value = "/admin/orderList", method = RequestMethod.GET)
     public String orderList() {
        // /WEB-INF/views/admin/orderList.jsp
        return "admin/orderList";
     }

	 
	 @RequestMapping(value = "/admin/salesList", method = RequestMethod.GET)
     public String salesList() {
        // /WEB-INF/views/admin/salesList.jsp
        return "admin/salesList";
     }
	 

	 @RequestMapping(value = "/admin/memberList", method = RequestMethod.GET)
     public String memberList() {
        // /WEB-INF/views/admin/memberList.jsp
        return "admin/memberList";
     }

	 @RequestMapping(value = "/admin/notice", method = RequestMethod.POST)
     public String adminNotice() {
        // /WEB-INF/views/foot/notice.jsp
        return "redirect:/foot/notice";
     }

	 @RequestMapping(value = "/admin/fnq", method = RequestMethod.POST)
     public String adminFnq() {
        // /WEB-INF/views/foot/fnq.jsp
        return "redirect:/foot/fnq";
     }

	 @RequestMapping(value = "/admin/qna", method = RequestMethod.POST)
     public String adminQna() {
        // /WEB-INF/views/foot/qna.jsp
        return "redirect:/foot/qna";
     }
	

	 @RequestMapping(value = "/admin/reviewList", method = RequestMethod.GET)
     public String reviewList() {
        // /WEB-INF/views/admin/reviewList.jsp
        return "admin/reviewList";
     }
	 
	 
	 // =============================================================================
	 
	 @RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	   public String index() {
	      // /WEB-INF/views/admin/index.jsp
	      return "admin/index";
	   }
	 
	 @RequestMapping(value = "/admin/blank", method = RequestMethod.GET)
	   public String blank() {
	      // /WEB-INF/views/admin/blank.jsp
	      return "admin/blank";
	   }
	 @RequestMapping(value = "/admin/buttons", method = RequestMethod.GET)
	   public String buttons() {
	      // /WEB-INF/views/admin/buttons.jsp
	      return "admin/buttons";
	   }
	 
	 @RequestMapping(value = "/admin/flot", method = RequestMethod.GET)
	   public String flot() {
	      // /WEB-INF/views/shushu/flot.jsp
	      return "admin/flot";
	   }
	 @RequestMapping(value = "/admin/forms", method = RequestMethod.GET)
	   public String forms() {
	      // /WEB-INF/views/admin/forms.jsp
	      return "admin/forms";
	   }
	 @RequestMapping(value = "/admin/grid", method = RequestMethod.GET)
	   public String grid() {
	      // /WEB-INF/views/admin/grid.jsp
	      return "admin/grid";
	   }
	 @RequestMapping(value = "/admin/icons", method = RequestMethod.GET)
	   public String icons() {
	      // /WEB-INF/views/admin/icons.jsp
	      return "admin/icons";
	   }
	 @RequestMapping(value = "/admin/morris", method = RequestMethod.GET)
	   public String morris() {
	      // /WEB-INF/views/admin/morris.jsp
	      return "admin/morris";
	   }
	 @RequestMapping(value = "/admin/notifications", method = RequestMethod.GET)
	   public String notifications() {
	      // /WEB-INF/views/admin/notifications.jsp
	      return "admin/notifications";
	   }
	 @RequestMapping(value = "/admin/panels-wells", method = RequestMethod.GET)
	   public String panelswells() {
	      // /WEB-INF/views/admin/writeForm.jsp
	      return "admin/panels-wells";
	   }
	 @RequestMapping(value = "/admin/tables", method = RequestMethod.GET)
	   public String tables() {
	      // /WEB-INF/views/admin/writeForm.jsp
	      return "admin/tables";
	   }
	 @RequestMapping(value = "/admin/typography", method = RequestMethod.GET)
	   public String typography() {
	      // /WEB-INF/views/admin/writeForm.jsp
	      return "admin/typography";
	   }
	 
	 
}
