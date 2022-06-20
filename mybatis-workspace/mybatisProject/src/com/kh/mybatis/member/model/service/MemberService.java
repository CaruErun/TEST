package com.kh.mybatis.member.model.service;

import com.kh.mybatis.member.model.vo.Member;
import com.kh.mybatis.member.model.vo.test;

public interface MemberService {
	
	public abstract int insertMember(Member m);//public abstract 생략 가능
	
	public abstract Member loginMember(test t);//resultMap 구조 사용 위해 Member객체로 받아옴
	
	public abstract int updateMember(Member m);
	
	public abstract int deleteMember(Member m);
	
	
}
