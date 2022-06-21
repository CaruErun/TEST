package com.kh.spring.member.model.service;

import com.kh.spring.member.model.vo.Member;

public interface MemberService {
	
	
	public abstract Member loginMember(Member m);
	
	public abstract int insertMember(Member m);
	
	public abstract int updateMember(Member m);
	
	public abstract int deleteMember(String userId);
	
	public abstract int idCheck(String userId);
}
