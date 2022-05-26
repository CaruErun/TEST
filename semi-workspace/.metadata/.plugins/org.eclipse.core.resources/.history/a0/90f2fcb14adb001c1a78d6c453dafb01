package com.kh.member_2.model.service;

import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.kh.member_2.model.dao.MemberUserDao;
import com.kh.member_2.model.vo.MemberUser;
public class MemberUserService {

	public MemberUser loginUser(String userId, String userPw) {
		Connection conn = getConnection();
		
		MemberUser mu = new MemberUserDao().loginUser(conn,userId,userPw);
		close(conn);
		return mu;
	}

}
