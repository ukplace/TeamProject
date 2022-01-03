package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace ="com.itwillbs.mapper.MemberMapper";
	
	@Override
	public void insertMember(MemberDTO memberDTO) {
		System.out.println("MemberDAOImpl.insertMember()");
		//-------------------- 값 받아오는지 확인 --------------
//		System.out.println(memberDTO.getEmail());
//		System.out.println(memberDTO.getPassword());
//		System.out.println(memberDTO.getName());
//		System.out.println(memberDTO.getBirth());
//		System.out.println(memberDTO.getZip());
//		System.out.println(memberDTO.getAddress());
//		System.out.println(memberDTO.getDetail_address());

		sqlSession.insert(namespace+".insertMember", memberDTO);
		
	}

	@Override
	public MemberDTO userCheck(MemberDTO memberDTO) {
		System.out.println("MemberDAOImpl.loginCheck()");
		//-------------------- 값 받아오는지 확인 --------------		
		System.out.println(memberDTO.getM_email());
		System.out.println(memberDTO.getM_pass());
		
		
		return sqlSession.selectOne(namespace+".userCheck", memberDTO);
		
		
	}

	@Override
	public MemberDTO getMemberEmail(String email) {
		System.out.println("MemberDAOImpl.getMemberEmail()");
		return sqlSession.selectOne(namespace+".getMemberEmail", email);
	}

	@Override
	public MemberDTO getMember(MemberDTO memberDTO) {
		return sqlSession.selectOne(namespace+".getMember", memberDTO);
	}
	
	@Override
	public MemberDTO getMember(String m_email) {
		System.out.println("MemberDAOImpl.getMember()");
		return sqlSession.selectOne(namespace+".getMember2",m_email);
	}
	
	
	
	@Override
	public void updateMember(MemberDTO memberDTO){
		System.out.println("MemberDAOImpl.updateMember()");
		
		sqlSession.update(namespace+".updateMember", memberDTO);
	}
	
	@Override
	public void updatePass(MemberDTO memberDTO){
		sqlSession.update(namespace+".updatePass",memberDTO);
	}

	@Override
	public void withdrawal(MemberDTO member) {
		sqlSession.delete(namespace+".withdrawal",member);
	}


}
