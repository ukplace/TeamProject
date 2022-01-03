package com.itwillbs.service;

import java.sql.Timestamp;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	private MemberDAO memberDAO;

	@Override
	public void insertMember(MemberDTO memberDTO) {
		memberDAO.insertMember(memberDTO);
	}

	@Override
	public MemberDTO userCheck(MemberDTO memberDTO) {
		
		return memberDAO.userCheck(memberDTO);
	}

	@Override
	public MemberDTO getMemberEmail(String email) {
		return memberDAO.getMemberEmail(email);
	}

	@Override
	public MemberDTO getMember(MemberDTO memberDTO) {
		return memberDAO.getMember(memberDTO);
	}

	public MemberDTO getMember(String m_email) {
		System.out.println("MemberServiceImpl.getMember()");
		 return memberDAO.getMember(m_email);
	}
	
	public void updateMember(MemberDTO memberDTO){
		System.out.println("MemberServiceImpl.updateMember()");
		memberDAO.updateMember(memberDTO);
	}
	
	public void updatePass(MemberDTO memberDTO) {
		memberDAO.updatePass(memberDTO);
		
	}
}
