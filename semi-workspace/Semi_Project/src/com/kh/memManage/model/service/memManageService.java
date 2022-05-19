package com.kh.memManage.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.PageInfo;
import com.kh.memManage.model.dao.memManageDao;
import com.kh.memManage.model.vo.Member;
public class memManageService {

	public int selectMemManage() {
		Connection conn = getConnection();
		
		int listCount = new memManageDao().selectMemManage(conn);
		close(conn);
		return listCount;
	}

	public ArrayList<Member> selectMemList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<Member> mList = new memManageDao().selectMemList(conn, pi);
		
		close(conn);
		return mList;
	}

	public Member ajaxSelectMember(int memberNo) {
		Connection conn = getConnection();
		
		Member m = new memManageDao().ajaxSelectMember(conn, memberNo);
		
		close(conn);
		return m;
	}

}
