package com.itwillbs.service;

import com.itwillbs.domain.MemberDTO;

public interface MemberService {

	public void insertMember(MemberDTO memberDTO);

	public MemberDTO userCheck(MemberDTO memberDTO);
	
	public MemberDTO getMemberEmail(String email);

	public MemberDTO getMember(MemberDTO memberDTO);

	public MemberDTO getMember(String m_email);

	public void updateMember(MemberDTO memberDTO);

	public void updatePass(MemberDTO memeberDTO);
}
