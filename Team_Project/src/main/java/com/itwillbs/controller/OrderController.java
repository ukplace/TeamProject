package com.itwillbs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.domain.CartDTO;
import com.itwillbs.domain.CartListDTO;
import com.itwillbs.domain.DirectDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.OrderListDTO;
import com.itwillbs.domain.Order_detailDTO;
import com.itwillbs.domain.Order_memberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductQtyDTO;
import com.itwillbs.domain.ReviewDTO;
import com.itwillbs.domain.SearchDTO;
import com.itwillbs.domain.StockDTO;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProductService;

@Controller
public class OrderController {

	@Inject
	private ProductService productService;
	@Inject
	private MemberService memberService;

	
	/*우리 웹페이지는 order 방식이 2가지(cart_order,direct_order)가 있다.
	 * 이전에 우리는 order에 대해서 조금 이해하고 넘어가야함.
	 * 
	 * order같은경우에는 1명의주문자가 1개의 제품을 구매할수도있지만
	 * 					 			   여러개의 제품을 구매할 수도 있다.
	 *  그래서 모든 order 정보를 담아서 한 덩어리로 저장을 해줄수 있지만, 
	 *  데이터가 쌓이다보면 불필요한 반복되는 데이터가 너무 많아지기 때문에 우리 웹사이트는
	 *  1: N 의 방식을 이용한다.
	 *  그러므로 먼저 Order_member 라는 주문번호 및 주문정보를 생성해준뒤 
	 *  Order_member의 생성된 주문번호를 이용해 주문받은 제품의 데이터를 order_detail에 담아준다.
	 *  이 두방식은 direct, cart 둘다 동일하다.
	 * 
	* 1. cart_order 방식.
	* 	 cart에 담겨져 있는 차트의 데이터를 가져와서 화면에 뿌려준 후, 그데이터를 그대로 들고가서
	*    orderOK에서 
	*    1)d_check(cart_order와 direact_order를 구분하는 기분) 를 확인한후
	*    2) 먼저 order 정보를 가지고 order_member를 생성해준다.
	*    3) 생성된 order_member의 o_idx 번호에 연결된 order_detail에 cart에 있는 데이터를 보두다 넣어준다.
	*    4) 넣어준만큼 stock에서 제고를 차감해준다.
	*    5) 제고 차감이후 카트를 비워준다.
	*    
	* 2. direact_order 방식
	*   1) 우리가 바로구매 (product_detail 에 BUY버튼)를 누르면 그 즉시 direactDTO에 제품의 정보가 담긴다.
	*    [사전에 담겨있는 정보가 있을수 있으므로 direactDTO 내부의 데이터를 비워주는작업을 항상 선행]
	*   2) d_check에 1이 담겨진체로 order페이지로 넘어가서 order_Ok로 간다.
	*   3) order_Ok가 1일때 direact 방식으로 진행되는데 
	*   4) 위 cart_order 방식과 방식은 동일하나, cart 대신 direactDTO 를 사용하여
	*   5) 하나의 제품정보만 있기때문에 단한번만 과정을 진행한다.
	*  
	* 
	*/
	
	
	
	@RequestMapping(value = "/foot/Cart_order", method = RequestMethod.POST)
	public String order(HttpServletRequest request, Model model, HttpSession session) {

		MemberDTO member = new MemberDTO();
		member.setM_idx((Integer) session.getAttribute("m_idx"));
		MemberDTO memberDTO = memberService.getMember(member);

		CartListDTO cartListDTO = new CartListDTO();

		cartListDTO.setM_idx((Integer) session.getAttribute("m_idx"));
		List<CartListDTO> cartList = productService.getCartList(cartListDTO);

		model.addAttribute("memberDTO", memberDTO);
		model.addAttribute("cartList", cartList);

		return "foot/order";
	}

	@RequestMapping(value = "/foot/Direct_order", method = RequestMethod.POST)
	public String Direct_order(CartListDTO cartListDTO, HttpSession session, Model model, HttpServletResponse response)
			throws Exception {

		MemberDTO member = new MemberDTO();
		member.setM_idx((Integer) session.getAttribute("m_idx"));
		MemberDTO memberDTO = memberService.getMember(member);

		ProductDTO productDTO = new ProductDTO();
		int p_num = cartListDTO.getP_num();
		productDTO = productService.productDetail(p_num);

		DirectDTO directDTO = new DirectDTO();
		// 1) direct테이블의 해당회원(m_idx)의 바로구매내역 삭제 (해당회원의 그 전 바로구매 내역이 있다면)
		productService.deleteDirect(memberDTO.getM_idx());

		directDTO.setM_idx((Integer) session.getAttribute("m_idx"));
		directDTO.setP_num(p_num);
		directDTO.setP_size(cartListDTO.getP_size());
		directDTO.setCart_count(cartListDTO.getCart_count());
		directDTO.setD_check(1);
		// 2) direct테이블에 가져온 정보 저장
		productService.insertDirect(directDTO);
		// 2-1) DAO에서 direct테이블의 d_check컬럼에 1 저장 (* d_check = 1 일 때 바로구매기능 실행, 아니면
		// cart테이블에 있는 데이터로 실행)

		cartListDTO.setM_idx(memberDTO.getM_idx());
		cartListDTO.setP_name(productDTO.getP_name());
		cartListDTO.setP_price(productDTO.getP_price());
		cartListDTO.setP_thumImg(productDTO.getP_thumImg());
		cartListDTO.setD_check(directDTO.getD_check()); // d_check = 1

		List<CartListDTO> cartList = new ArrayList<CartListDTO>();
		cartList.add(0, cartListDTO); // 1번만 반복! index = 0 인 값만 주는거

		model.addAttribute("memberDTO", memberDTO);
		model.addAttribute("cartList", cartList);

		return "foot/order";
	}

	@RequestMapping(value = "/foot/order_Ok", method = RequestMethod.GET)
	public String order_Ok(HttpServletRequest request, HttpSession session) {

		Order_memberDTO o_memberDTO = new Order_memberDTO();
		System.out.println(request.getParameter("d_check"));

		o_memberDTO.setTotalSum(Integer.parseInt(request.getParameter("totalSum")));
		o_memberDTO.setM_idx(Integer.parseInt(request.getParameter("m_idx")));
		o_memberDTO.setO_name(request.getParameter("o_name"));
		o_memberDTO.setO_tel(request.getParameter("o_tel"));
		o_memberDTO.setO_zip(request.getParameter("o_zip"));
		o_memberDTO.setO_address(request.getParameter("o_address"));
		o_memberDTO.setO_detail_address(request.getParameter("o_detail_address"));
		o_memberDTO.setO_memo(request.getParameter("o_memo"));
		System.out.println(o_memberDTO.getTotalSum() + "토탈썸");
		System.out.println(o_memberDTO.getO_memo() + "메모입력된애");
		productService.insertO_member(o_memberDTO);

		List<Order_memberDTO> o_memberDTO2 = new ArrayList<Order_memberDTO>();
		o_memberDTO2 = productService.getO_idx(o_memberDTO);
		o_memberDTO.setO_idx(o_memberDTO2.get(0).getO_idx());
		o_memberDTO.setM_idx(Integer.parseInt(request.getParameter("m_idx")));

		if (request.getParameter("d_check") != "") {
			// direct테이블의 값(DirectDTO 안의 값) 을 order_detail테이블에 입력
			productService.insertDO_detail(o_memberDTO);

			int m_idx = (Integer) session.getAttribute("m_idx");

			CartListDTO cartListDTO = new CartListDTO();
			cartListDTO.setM_idx(m_idx);

			StockDTO stockDTO = new StockDTO();
			stockDTO.setM_idx(m_idx); // 위에 세션으로 받아온 m_idx값 한 번만 사용 가능한가???

			List<CartListDTO> directList = productService.getDirectList(cartListDTO); // Direct 정보 받아오기

			stockDTO.setP_size(directList.get(0).getP_size());
			stockDTO.setP_num(directList.get(0).getP_num());
			stockDTO.setCart_count(directList.get(0).getCart_count());

			StockDTO stock = productService.getInformation(stockDTO); // 현재 재고값 찾기
			stockDTO.setP_stock(stock.getP_stock());

			productService.changeStock(stockDTO);

		} else {
			System.out.println(o_memberDTO.toString());
			productService.insertO_detail(o_memberDTO);

			int m_idx = (Integer) session.getAttribute("m_idx");

//			MemberDTO memberDTO = new MemberDTO();
//			memberDTO.setM_idx((Integer)session.getAttribute("m_idx"));
//			 int m_idx = memberDTO.getM_idx();
			// 재고수량 바꿀자리

			CartListDTO cartListDTO = new CartListDTO();
			cartListDTO.setM_idx(m_idx);

			StockDTO stockDTO = new StockDTO();
			stockDTO.setM_idx((Integer) session.getAttribute("m_idx"));
			List<CartListDTO> cartList = productService.getCartList(cartListDTO); // cart 정보 받아오기

			for (int i = 0; i < cartList.size(); i++) {
				stockDTO.setP_size(cartList.get(i).getP_size());
				stockDTO.setP_num(cartList.get(i).getP_num());
				stockDTO.setCart_count(cartList.get(i).getCart_count());
				// 재고 수량 확인
				StockDTO stock = productService.getInformation(stockDTO); // 재고값 찾기
				stockDTO.setP_stock(stock.getP_stock());

				productService.changeStock(stockDTO);
			}

			productService.deleteCart(m_idx);
		}

		return "foot/order_Ok";
	}

	@RequestMapping(value = "/foot/order_No", method = RequestMethod.GET)
	public String order_No() {
		// /WEB-INF/views/foot/orderList.jsp
		return "foot/order_No";
	}

	@RequestMapping(value = "/foot/order_Test", method = RequestMethod.GET)
	public String order_Test() {
		// /WEB-INF/views/foot/orderList.jsp
		return "foot/order_Test";
	}

	@RequestMapping(value = "/foot/order_list", method = RequestMethod.GET)
	public String order_list(HttpSession session, Model model, HttpServletResponse response) throws Exception {
		Order_memberDTO o_memberDTO = new Order_memberDTO();
		OrderListDTO orderListDTO = new OrderListDTO();
		o_memberDTO.setM_idx((Integer) session.getAttribute("m_idx"));
		orderListDTO.setM_idx((Integer) session.getAttribute("m_idx"));
		System.out.println(o_memberDTO.getM_idx());
		List<Order_memberDTO> orderList = productService.OneOrderList(o_memberDTO);

		if (orderList.size() == 0) {
			response.setContentType("text/html; charset=UTF-8");
			// 2. response 객체의 getWriter()메서드를 호출하여 출력스트림 객체(PrintWriter) 가져오기
			PrintWriter out = response.getWriter();
			// 3. PrintWriter 객체의 println() 메서드를 호출하여 HTML 태그(자바스크립트) 문자열 생성

			out.println("<script>");
			out.println("alert('주문 내역이 없습니다!')"); // 메세지 출력
			out.println("history.back()"); // 이전페이지로 이동
			out.println("</script>");
		}

		System.out.println(orderList.get(0).getTotalSum());
		model.addAttribute("orderList", orderList);
		return "foot/order_list";
	}

	@RequestMapping(value = "/foot/order_detail", method = RequestMethod.GET)
	public String order_detail(HttpServletRequest request, Model model, HttpSession session) {
		OrderListDTO orderListDTO = new OrderListDTO();
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setM_idx((Integer) session.getAttribute("m_idx"));
		memberDTO = memberService.getMember(memberDTO);
		orderListDTO.setM_idx((Integer) session.getAttribute("m_idx"));
		orderListDTO.setO_idx(Integer.parseInt(request.getParameter("o_idx")));
		List<OrderListDTO> orderList = productService.getOrderList(orderListDTO);
		System.out.println(orderList.get(0).getP_num());

		model.addAttribute("orderList", orderList);
		model.addAttribute("memberDTO", memberDTO);
		// /WEB-INF/views/foot/orderDetail.jsp
		return "foot/order_detail";
	}

	@RequestMapping(value = "/foot/order_complete", method = RequestMethod.GET)
	public String order_complete() {
		// /WEB-INF/views/foot/orderDetail.jsp
		return "foot/order_complete";
	}

}
