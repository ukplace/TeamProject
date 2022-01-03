package com.itwillbs.dao;

import com.itwillbs.domain.MemberDTO;

public interface MemberDAO {

	public void insertMember(MemberDTO memberDTO);

	public MemberDTO userCheck(MemberDTO memberDTO);
	
	public MemberDTO getMemberEmail(String email);

	public MemberDTO getMember(MemberDTO memberDTO);
	
	public void updateMember(MemberDTO memberDTO);

	public MemberDTO getMember(String m_email);

	public void updatePass(MemberDTO memberDTO);
	
	public void withdrawal(MemberDTO member);

	
}
