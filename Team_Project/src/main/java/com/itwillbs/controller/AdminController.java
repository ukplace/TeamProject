package com.itwillbs.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.NoticeDTO;
import com.itwillbs.domain.OrderListDTO;
import com.itwillbs.domain.Order_detailDTO;
import com.itwillbs.domain.Order_memberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductQtyDTO;
import com.itwillbs.domain.ReviewDTO;
import com.itwillbs.service.AdminService;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProductService;
import com.itwillbs.utils.UploadFileUtils;

@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Inject
	private AdminService adminService;

	@Inject
	private ProductService productService;

	@Inject
	private MemberService memberService;

	@Resource(name = "uploadPath")
	private String uploadPath;

	// 상품관리 - 상품 등록
	@RequestMapping(value = "/admin/product_regist", method = RequestMethod.GET)
	public String productRegist() {
		// /WEB-INF/views/admin/product_regist.jsp
		return "admin/product_regist";
	}

	@RequestMapping(value = "/admin/product_regist_pro", method = RequestMethod.POST)
	public String product_registPro(ProductDTO productDTO, MultipartFile file) throws Exception {

		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		// 이미지를 업로드할 폴더를 설정 = /uploadPath/imgUload
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		// 위의 폴더를 기준으로 연월일 폴더를 생성
		String fileName = null;
		// 기본 경로와 별개로 작성되는 경로+파일이름

		if (file != null) { // 첨부된 파일이 있다면
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		} else { // 첨부된 파일이 없다면 uploadPath/images/none.png로 저장을한다.
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		productDTO.setP_img(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		// P_img에 원본 파일 경로 + 파일명 저장
		productDTO.setP_thumImg(
				File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		// P_thumImg에 썸네일 파일경로 + 썸네일 파일명 저장

		adminService.insertProduct(productDTO);

		// /WEB-INF/views/admin/product_registPro.jsp
		return "redirect:/admin/product_list";
	}

	// 상품관리 - 상품 리스트
	@RequestMapping(value = "/admin/product_list", method = RequestMethod.GET)
	public String productList(HttpServletRequest request, Model model) {
		// 데이터 가져오기 (페이지 있는지 없는지 비교)
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(20); // *pageSize(한화면에보여줄글갯수)

		if (request.getParameter("pageNum") == null) { // 없으면 pageNum 1 로 세팅
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

	// 제품 수정
	@RequestMapping(value = "/admin/product_update", method = RequestMethod.GET)
	public String productUpdate(@RequestParam("num") int p_num, Model model) throws Exception {
		logger.info("get goods view");

		// product 페이지에서 p_num 값을 받아 제품정보를 가져온
		ProductDTO productDTO = adminService.productView(p_num);

		// 가저온 제품정보를 update 하기위에 update 페이지로 가져간다.
		model.addAttribute("ProductDTO", productDTO);

		// /WEB-INF/views/admin/product_update
		return "admin/product_update";
	}

	// 제품수정 데이가져와서 작업.
	@RequestMapping(value = "/admin/product_update_pro", method = RequestMethod.POST)
	public String productUpdatePro(ProductDTO productDTO, MultipartFile file) throws Exception {

		// product_regist 동일함.
		// 60~ 라인부터 참조.
		String imgUploadPath = uploadPath + File.separator + "imgUpload";
		String ymdPath = UploadFileUtils.calcPath(imgUploadPath);
		String fileName = null;

		if (file != null) {
			fileName = UploadFileUtils.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
		} else {
			fileName = uploadPath + File.separator + "images" + File.separator + "none.png";
		}

		productDTO.setP_img(File.separator + "imgUpload" + ymdPath + File.separator + fileName);
		productDTO.setP_thumImg(
				File.separator + "imgUpload" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		productDTO.setP_num(productDTO.getP_num());

		adminService.updateProduct(productDTO);

		// /WEB-INF/views/admin/product_list
		return "redirect:/admin/product_list";
	}

	// 상품 조회
	@RequestMapping(value = "/admin/productView", method = RequestMethod.GET)
	public String productView(@RequestParam("num") int p_num, Model model) throws Exception {
		logger.info("get goods view");

		// 상품페이지에 내가 원하는 상품 번호를 눌러 URL 에 파라미터로 담아서 가져와서
		// p_num 으로 내가 원하는 제품의 정보를 가져온다.
		ProductDTO productDTO = adminService.productView(p_num);
		// qtyList(제품 재고, 사이즈의 정보를 가져오는 QtyList를 연결한다.
		// 여기서 product 와 product_qty 는 1:다 의 관계를 가진다.
		// qty가 하나가 아닐수 있으므로 리스트 형태로 가져와 List<ProductQtyDTO> 에 담아준다.
		List<ProductQtyDTO> qtyList = adminService.getQtyList(p_num);

		// p_num으로 가져온 제품정보와, 제품의 qty 정보를 가져와서 화면에 보여준다.
		model.addAttribute("qtyList", qtyList);
		model.addAttribute("ProductDTO", productDTO);

		return "admin/product_view";
	}

	// 상품 삭제
	@RequestMapping(value = "/admin/delete", method = RequestMethod.POST)
	public String delete(@RequestParam("num") int p_num) throws Exception {

		// 삭제를 원하는 제품의 p_num 을 가지고 바로 service-> dao -> mapper로 가서 작업을 해준다.
		adminService.deleteProduct(p_num);

		return "redirect:/admin/product_list";
	}
	// 제품의 qty(사이즈, 제고 등 )부분을 추가해주는 작업 
	@RequestMapping(value = "/admin/product_qty_insert", method = RequestMethod.GET)
	public String product_qty_insert(HttpServletRequest request, Model model) {
		// qty 작업을 product 랑 연결 시켜주기 위해서, p_num 을 가지고 다녀준다.
		ProductDTO productDTO = new ProductDTO();
		// 이전 페이지에서 넘겨줄때 ?num=${XXX} 형식으로 넘겨준것 같음.
		productDTO.setP_num(Integer.parseInt(request.getParameter("num")));
		
		// product 랑 연결시켜줄 p_num 객체를 담은 productDTO 객체를 model 에 담아 페이지로 넘겨준다.
		model.addAttribute("productDTO", productDTO);
		return "admin/product_qty_update";
	}


	@RequestMapping(value = "/admin/product_qty_insertPro", method = RequestMethod.POST)
	public String product_qty_insertPro(HttpServletRequest request, ProductQtyDTO dto) {
		// 아래 217 라인 qty_updatePro에서 설명함.
		// 방법은 동일. insert or update mapper 구문만 차이가 있음.

		adminService.insertQty(dto);

		// /WEB-INF/views/admin/product_list
		return "redirect:/admin/product_list";
	}

	@RequestMapping(value = "/admin/product_qty_update", method = RequestMethod.GET)
	public String product_qty_update(HttpServletRequest request, Model model) {
		ProductDTO productDTO = new ProductDTO();
		productDTO.setP_num(Integer.parseInt(request.getParameter("num")));

//			int p_num = Integer.parseInt(request.getParameter("num"));
		model.addAttribute("productDTO", productDTO);
		return "admin/product_qty_update_view";
	}
	@RequestMapping(value = "/admin/product_qty_updatePro", method = RequestMethod.POST)
	public String product_qty_updatePro(HttpServletRequest request, ProductQtyDTO dto) {
		//ㅁㅁ 꼭 확인하기!ㅁㅁ 
		// 여기서 product_qty_update.jsp(이 후 qty_update라 하겠다)와 productQtyDTO 를 확인해야한다.
		// 먼저 productQtyDTO 에 보면 productQtyDTO 형식을 받는 list 객체가 생성되어있다.
		// 이러므로 해서 QtyDTO의 정보가 여러개가 나와도 한번에 받을수 있게된다.(인덱스 지정을 해주면 알아서 들어간다)
		// 그래서 qty_update에서 name=list[x].p_size, list[x].p_stock으로 데이터를 넘겨준걸 확인해야한다.
		// 위의 파라미터에 ProductQtyDTO dto 는 하나로 보이지만 dto 안에 list 안에는 qty_update 에서 넘겨준 여러개의 데이터가 담겨있다.
		
		//dao로 가서 작업을 해준다. (DAO 작업확인필요)
		adminService.updateQty(dto);
		
		
		return "redirect:/admin/product_list";
	}

	@RequestMapping(value = "/admin/product_qty_delete", method = RequestMethod.GET)
	public String product_qty_delete(HttpServletRequest request) {
//				ProductDTO productDTO = new ProductDTO();
		ProductQtyDTO dto = new ProductQtyDTO();
		//product_view 페이지에서 p_num값을 p_num으로 넘겨받음 ( product_view page 317 라인 확인) 
		int p_num = Integer.parseInt(request.getParameter("num"));


		adminService.deleteQty(p_num);

		return "redirect:/admin/product_list";
	}

	// ============================== 주문관리 ==============================
	// 주문 관리(주문 리스트)
	@RequestMapping(value = "/admin/order_list", method = RequestMethod.GET)
	public String order_list(HttpServletRequest request, Model model) {
		// 데이터 가져오기 (페이지 있는지 없는지 비교)
		PageDTO pageDTO = new PageDTO(); 
		pageDTO.setPageSize(10); // *pageSize(한화면에보여줄글갯수)

		if (request.getParameter("pageNum") == null) { // 없으면 pageNum 1 로 세팅
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}

		List<Order_memberDTO> orderList = productService.AllOrderList(pageDTO);

		// 페이징처리 -  전체 order_member 글 개수
		pageDTO.setCount(adminService.getOrder_memberCount());

		model.addAttribute("orderList", orderList); // model 에 담아서 데이터 들고 감!
		System.out.println(pageDTO.toString());
		model.addAttribute("pageDTO", pageDTO); // 페이지관련 계산 -> pageDTO값으로 들고 감!

		// /WEB-INF/views/admin/order_list
		return "admin/order_list";
	}

	// 주문 상세페이지
	@RequestMapping(value = "/admin/order_detail", method = RequestMethod.GET)
	public String order_detail(@RequestParam("o_idx") int o_idx, @RequestParam("m_idx") int m_idx, Model model) throws Exception {
		logger.info("get memberProductDetail view");
		// OrderListDTO 에 list페이지에서 o_idx, m_idx 넘겨준 값을 가지고 
		OrderListDTO orderListDTO = new OrderListDTO();
		orderListDTO.setO_idx(o_idx);
		orderListDTO.setM_idx(m_idx);
		
		// orderDetailList 를 뽑아낸다 ( 이름른 getOrderList지만 화면에 뿌려줄 내용을 출력하는것)
		List<OrderListDTO> orderDetailList = productService.getOrderList(orderListDTO);
		
//		m_idx 값으로 주문자의 정보를 가져온다.
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setM_idx(m_idx);

		MemberDTO memberDTO2 = memberService.getMember(memberDTO);

		model.addAttribute("orderDetailList", orderDetailList);
		model.addAttribute("memberDTO2", memberDTO2);

		// /WEB-INF/views/admin/order_detail
		return "admin/order_detail";
	}

	// ---------------------------회원관리------------------------------

	// 회원관리(회원 리스트/상세정보)
	@RequestMapping(value = "/admin/member_list", method = RequestMethod.GET)
	public String member_list(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		// 한 페이지에 보여 줄 갯수
		pageDTO.setPageSize(10);

		if (request.getParameter("pageNum") == null) { // 없을때
			pageDTO.setPageNum("1");
		} else { // 있을때
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}

		// 리스트 받아오기
		List<MemberDTO> MemberList = adminService.getMemberList(pageDTO);

		// 카운트
		pageDTO.setCount(adminService.getMemberCount());

		// 데이터 담아서 list.jsp에 리스트 전달
		model.addAttribute("MemberList", MemberList);
		System.out.println(MemberList);
		// 페이지dto에 담아서 전달
		model.addAttribute("pageDTO", pageDTO);

		// /WEB-INF/views/foot/notice_list.jsp

		return "admin/member_list";
	}

	@RequestMapping(value = "/admin/member_detail", method = RequestMethod.GET)
	public String member_detail(HttpServletRequest request, Model model) {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setM_idx(Integer.parseInt(request.getParameter("m_idx")));
		// 리스트 받아오기
		memberDTO = adminService.getMemberDetail(memberDTO);


		// 데이터 담아서 list.jsp에 리스트 전달
		model.addAttribute("memberDTO", memberDTO);

		return "admin/member_detail";
	}

	// 회원정보 수정
	@RequestMapping(value = "/admin/member_update", method = RequestMethod.GET)
	public String memberUpdate(@RequestParam("m_idx") int m_idx, Model model) throws Exception {

		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setM_idx(m_idx);
		memberDTO = adminService.getMemberDetail(memberDTO);

		model.addAttribute("memberDTO", memberDTO);

		return "admin/member_update";
	}

	@RequestMapping(value = "/admin/member_update_pro", method = RequestMethod.POST)
	public String memberUpdatePro(MemberDTO memberDTO) throws Exception {

		adminService.updateMember(memberDTO);

		return "redirect:/admin/member_list";
	}

	// 회원정보 삭제
	@RequestMapping(value = "/admin/member_delete", method = RequestMethod.POST)
	public String memberDelete(@RequestParam("m_idx") int m_idx) throws Exception {
		adminService.deleteMember(m_idx);

		return "redirect:/admin/member_list";
	}

	// ============================================================================

	// 매출관리(매출 리스트)
	@RequestMapping(value = "/admin/sales_list", method = RequestMethod.GET)
	public String salesList() {
		// /WEB-INF/views/admin/salesList.jsp
		return "admin/sales_list";
	}


//	@RequestMapping(value = "/admin/review_list", method = RequestMethod.GET)
//	public String review_list() {
//		// /WEB-INF/views/admin/review_list
//		return "admin/review_list";
//	}
//
//	// 리뷰 관련
//	@RequestMapping(value = "/foot/review", method = RequestMethod.GET)
//	public String review() {
//		// /WEB-INF/views/foot/review.jsp
//		return "foot/review";
//	}

	@RequestMapping(value = "/foot/review_write", method = RequestMethod.GET)
	public String review_write(HttpServletRequest request, HttpSession session, Model model) {
		int num = Integer.parseInt(request.getParameter("p_num"));
		ProductDTO productDTO = productService.productDetail(num);
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setM_idx((Integer) (session.getAttribute("m_idx")));
		memberDTO = memberService.getMember(memberDTO);

		model.addAttribute("productDTO", productDTO);
		model.addAttribute("memberDTO", memberDTO);

		// /WEB-INF/views/foot/review_write.jsp
		return "foot/review_write";
	}

	@RequestMapping(value = "/foot/review_write_pro", method = RequestMethod.POST)
	public String review_write_pro(HttpServletRequest request, ReviewDTO reviewDTO, Model model, HttpSession session) {

		int p_num = Integer.parseInt(request.getParameter("p_num"));
		reviewDTO.setM_idx((Integer) session.getAttribute("m_idx"));
		reviewDTO.setP_num(p_num);
		System.out.println(reviewDTO.getP_num() + "리뷰디티오의 라이트프로의 피넘이다!");
		adminService.insertReview(reviewDTO);

		return "redirect:/foot/index";
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
	public String index(Model model) {

		int total = productService.getAllProduct();
		int newOrder = adminService.getNewOrder();
		int delivery = adminService.getDelivery();
		int done = adminService.getDone();

		model.addAttribute("total", total);
		model.addAttribute("newOrder", newOrder);
		model.addAttribute("delivery", delivery);
		model.addAttribute("done", done);

		return "admin/index";
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
