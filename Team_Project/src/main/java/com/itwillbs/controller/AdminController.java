package com.itwillbs.controller;

import java.io.File;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.service.AdminService;
import com.itwillbs.service.ProductService;
import com.itwillbs.utils.UploadFileUtils;



@Controller
public class AdminController {
	
	@Inject
	private AdminService adminService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	
	
	// 상품관리 - 상품 등록
	@RequestMapping(value = "/admin/product_regist", method = RequestMethod.GET)
	   public String productRegist() {
		// /WEB-INF/views/admin/product_regist.jsp
	      return "admin/product_regist";
	   }
	
	@RequestMapping(value = "/admin/product_regist_pro", method = RequestMethod.POST)
	   public String product_registPro(ProductDTO productDTO, MultipartFile file)throws Exception {
		
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if(file != null) {
		 fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		productDTO.setP_img(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		productDTO.setP_thumImg(File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		
		adminService.insertProduct(productDTO);

		// /WEB-INF/views/admin/product_registPro.jsp
	      return "redirect:/admin/product_list";
	   }

	// 상품관리 - 상품 리스트
	@RequestMapping(value = "/admin/product_list", method = RequestMethod.GET)
	public String productList(HttpServletRequest request, Model model) {
		// 데이터 가져오기 (페이지 있는지 없는지 비교)
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8); // *pageSize(한화면에보여줄글갯수)
		
		if(request.getParameter("pageNum") == null) { // 없으면 pageNum 1 로 세팅
			pageDTO.setPageNum("1");
		} else { // 있으면 pageNum 2 로 세팅
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		
		List<ProductDTO> productList = adminService.getProductList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(adminService.getProductCount());
		
		model.addAttribute("productList", productList); // model 에 담아서 데이터 들고 감!
		model.addAttribute("pageDTO", pageDTO); // 페이지관련 계산 -> pageDTO값으로 들고 감!
		
		// /WEB-INF/views/admin/product_list.jsp
		return "admin/product_list";
	}
	
	// 상품관리 - 상품 상세페이지
	@RequestMapping(value = "/admin/product_detail", method = RequestMethod.GET)
	   public String productDetail() {
	      // /WEB-INF/views/admin/product_detail.jsp
	      return "admin/product_detail";
	   }

	// 상품관리 - 상품 수정
	@RequestMapping(value = "/admin/product_update", method = RequestMethod.GET)
	   public String productUpdate() {
	      // /WEB-INF/views/admin/product_update
	      return "admin/product_update";
	   }

	@RequestMapping(value = "/admin/product_update_pro", method = RequestMethod.POST)
	   public String productUpdatePro() {
		
	      // /WEB-INF/views/admin/product_list
	      return "redirect:/admin/product_list";
	   }

	// 상품관리 - 상품 삭제
	@RequestMapping(value = "/admin/product_delete_pro", method = RequestMethod.POST)
	   public String productDeletePro() {
		
	      // /WEB-INF/views/admin/product_list
	      return "redirect:/admin/product_list";
	   }

	 
	
	// 주문 관리(주문 리스트)
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
	 
	 
	 // 회원관리(회원 리스트/상세정보)
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

	 
	 // 매출관리(매출 리스트)
	 @RequestMapping(value = "/admin/sales_list", method = RequestMethod.GET)
     public String salesList() {
        // /WEB-INF/views/admin/salesList.jsp
        return "admin/sales_list";
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
	 
	
		// 리뷰 관련
		@RequestMapping(value = "/foot/review", method = RequestMethod.GET)
		public String review() {
			// /WEB-INF/views/foot/review.jsp
			return "foot/review";
		}
		@RequestMapping(value = "/foot/review_write", method = RequestMethod.GET)
		public String review_write() {
			// /WEB-INF/views/foot/review_write.jsp
			return "foot/review_write";
		}
		@RequestMapping(value = "/foot/review_write_pro", method = RequestMethod.POST)
		public String review_write_pro() {
			// /WEB-INF/views/foot/product-detail.jsp
			return "redirect:/foot/product_detail";
		}
		@RequestMapping(value = "/foot/review_update", method = RequestMethod.GET)
		public String review_update() {
			// /WEB-INF/views/foot/reviewUpdate.jsp
			return "foot/review_update";
		}
		@RequestMapping(value = "/foot/review_update_pro", method = RequestMethod.POST)
		public String review_update_pro() {
			// /WEB-INF/views/foot/product-detail.jsp
			return "redirect:/foot/product_detail";
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
	 @RequestMapping(value = "/admin/faq_insert", method = RequestMethod.GET)
	   public String faq_insert() {
	      // /WEB-INF/views/admin/qna_list.jsp
	      return "admin/faq_insert";
	   }
	 @RequestMapping(value = "/admin/gongji_insert", method = RequestMethod.GET)
	   public String gongji_insert() {
	      // /WEB-INF/views/admin/qna_list.jsp
	      return "admin/gongji_insert";
	   }
	 
}
