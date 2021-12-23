package com.itwillbs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProductDTO;

@Service
public class AdminServiceImpl implements AdminService {

	@Inject
	private MemberDAO memberDAO;
	
	
	
	@Override
	public MemberDTO userCheck(MemberDTO memberDTO) {

		return memberDAO.userCheck(memberDTO);
	}


}
