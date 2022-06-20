package com.kh.spring.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.member.model.dao.MemberDao;
import com.kh.spring.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	/*
	 * SqlSessionTemplate 객체를 bean 등록 후 @Autowired 적용 시
	 * 스프링 컨테이너가 사용 후 자동으로 반납해주기 때문에 close 할 필요가 없음
	 */
	
	@Override
	public Member loginMember(Member m) {
		return memberDao.loginMember(sqlSession, m);
	}

	@Override
	public int insertMember(Member m) {
		return memberDao.insertMember(sqlSession,m);
	}

	@Override
	public int updateMember(Member m) {
		return memberDao.updateMember(sqlSession,m);
	}

	@Override
	public int deleteMember(String userId) {
		return memberDao.deleteMember(sqlSession,userId);
	}

	@Override
	public int idCheck(String userId) {
		return 0;
	}

}
