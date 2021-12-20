package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.AdminService;



@Controller
public class AdminController {
	
	@Inject
	private AdminService adminService;
	
	
	@RequestMapping(value = "/admin/login", method = RequestMethod.GET)
		public String login() {
			System.out.println("/admin/login");
			return "admin/login";
		}
	
	@RequestMapping(value = "/admin/loginPro", method = RequestMethod.POST)
		public String loginPro(MemberDTO memberDTO, HttpSession session) {
			System.out.println("/admin/loginPro");
			
			MemberDTO userCheck = adminService.userCheck(memberDTO);
			
			if(userCheck != null) {
				System.out.println(memberDTO.getEmail());
				
				if(userCheck.getEmail().equals("admin@shushu")) {
					session.setAttribute("id", memberDTO.getEmail());
					return "redirect:/admin/index";
				}else {
					session.setAttribute("userEmail", memberDTO);
					session.setAttribute("userPassword", memberDTO);
					return "redirect:/foot/index";
				}
						
			}else {
				
				return "admin/login";
			}
			
		}
	

	@RequestMapping(value = "/admin/product_regist", method = RequestMethod.GET)
	   public String productRegist() {
	      // /WEB-INF/views/admin/product_regist.jsp
	      return "admin/product_regist";
	   }

	@RequestMapping(value = "/admin/product_list", method = RequestMethod.GET)
	   public String productList() {
	      // /WEB-INF/views/admin/product_list.jsp
	      return "admin/product_list";
	   }
	
	@RequestMapping(value = "/admin/product_detail", method = RequestMethod.GET)
	   public String productDetail() {
	      // /WEB-INF/views/admin/product_detail.jsp
	      return "admin/product_detail";
	   }

	@RequestMapping(value = "/admin/product_update", method = RequestMethod.GET)
	   public String productUpdate() {
	      // /WEB-INF/views/admin/product_update
	      return "admin/product_update";
	   }

	 
	 @RequestMapping(value = "/admin/order_list", method = RequestMethod.GET)
     public String order_list() {
        // /WEB-INF/views/admin/order_list
        return "admin/order_list";
     }
	 
	 @RequestMapping(value = "/admin/order_detail", method = RequestMethod.GET)
     public String order_detail() {
        // /WEB-INF/views/admin/order_detail
        return "admin/order_detail";
     }
	 
	 @RequestMapping(value = "/admin/member_list", method = RequestMethod.GET)
     public String member_list() {
        // /WEB-INF/views/admin/member_list
        return "admin/member_list";
     }
	 
	 @RequestMapping(value = "/admin/member_detail", method = RequestMethod.GET)
     public String member_detail() {
        // /WEB-INF/views/admin/member_detail
        return "admin/member_detail";
     }

	 
	 @RequestMapping(value = "/admin/salesList", method = RequestMethod.GET)
     public String salesList() {
        // /WEB-INF/views/admin/salesList.jsp
        return "admin/salesList";
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
	

	 @RequestMapping(value = "/admin/review_list", method = RequestMethod.GET)
     public String review_list() {
        // /WEB-INF/views/admin/review_list
        return "admin/review_list";
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
	 @RequestMapping(value = "/admin/qna_list", method = RequestMethod.GET)
	   public String qna_list() {
	      // /WEB-INF/views/admin/qna_list.jsp
	      return "admin/qna_list";
	   }
	 
	 
}
