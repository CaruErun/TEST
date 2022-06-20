package com.kh.mybatis.member.model.service;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.common.template.Template;
import com.kh.mybatis.member.model.dao.MemberDao;
import com.kh.mybatis.member.model.vo.Member;
import com.kh.mybatis.member.model.vo.test;

public class MemberServiceImpl implements MemberService {

	private MemberDao memberDao = new MemberDao();
	@Override
	public int insertMember(Member m) {
		
		SqlSession sqlSession = Template.getSqlSession();
		int result = memberDao.insertMember(sqlSession,m);
		if(result>0) sqlSession.commit();
		else sqlSession.rollback();
		
		sqlSession.close();
		
		return result;
	}

	@Override
	public Member loginMember(test t) {

		SqlSession sqlSession = Template.getSqlSession();
		
		Member loginUser = memberDao.loginMember(sqlSession,t);
		
		sqlSession.close();
		
		return loginUser;
	}

	@Override
	public int updateMember(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(Member m) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
