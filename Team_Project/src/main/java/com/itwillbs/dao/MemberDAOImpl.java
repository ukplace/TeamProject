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

}
