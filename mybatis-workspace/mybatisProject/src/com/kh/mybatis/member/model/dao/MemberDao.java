package com.kh.mybatis.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.member.model.vo.Member;
import com.kh.mybatis.member.model.vo.test;

public class MemberDao {

	public int insertMember(SqlSession sqlSession, Member m) {
		/*
		 * sqlSession에서 제공하는 메소드를 통해서 sql문을 찾아서 실행하고 결과를 받을 수 있다.
		 * 
		 * sqlSession.sql 종류에 맞는 메소드("mapper파일namespace.해당 sql id",sql문 완성 시킬 객체);
		 *  -> 해당 sql 문이 완성상태(위치 홀더가 없음)이면 sql 문을 완성시킬 객체는 생략 가능
		 * 
		 * result = sqlSession.insert("mapper.insertMember",m);
		 */
		return sqlSession.insert("memberMapper.insertMember",m);
	}

	public Member loginMember(SqlSession sqlSession, test t) {
		
		//selectOne 메소드 : 조회 결과가 없다면 null을 반환
		return sqlSession.selectOne("memberMapper.loginMember",t);
	}
	
}
