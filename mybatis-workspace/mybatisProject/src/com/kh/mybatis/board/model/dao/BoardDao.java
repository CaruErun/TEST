package com.kh.mybatis.board.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.board.model.vo.Reply;
import com.kh.mybatis.common.model.vo.PageInfo;

public class BoardDao {

	public int selectListCount(SqlSession sqlSession) {
		return sqlSession.selectOne("boardMapper.selectListCount");
	}

	public ArrayList<Board> selectList(SqlSession sqlSession, PageInfo pi) {
		
		//mybatis에서 페이징 처리 위해 RowBounds 라는 클래스 제공
		//offset : 몇 개의 게시글을 건너 뛰고 조회할 것인지 정하는 값 (cpage-boardLimit)
		
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1)*limit;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		
		ArrayList<Board> list = (ArrayList)sqlSession.selectList("boardMapper.selectList",null,rowBounds);//매개변수 없을 시 null(framework 상 위치가 지정되어 있으므로)
		return list;
	}

	public int increaseCount(SqlSession sqlSession, int boardNo) {
		return sqlSession.update("boardMapper.increaseCount",boardNo);
	}

	public Board detailBoard(SqlSession sqlSession, int boardNo) {

		return sqlSession.selectOne("boardMapper.detailBoard",boardNo);
	}

	public ArrayList<Reply> selectReplyList(SqlSession sqlSession, int boardNo) {
		
		ArrayList<Reply> list = (ArrayList)sqlSession.selectList("boardMapper.selectReplyList", boardNo);
		return list;
	}

	public int insertReply(SqlSession sqlSession, Reply r) {
		return sqlSession.insert("boardMapper.insertReply",r);
	}

	public int selectListCount(SqlSession sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("boardMapper.searchListCount",map);
	}

	public ArrayList<Board> selectList(SqlSession sqlSession, PageInfo pi, HashMap<String, String> map) {
		
		int limit = pi.getBoardLimit();
		int offset = (pi.getCurrentPage()-1)*limit;
		
		RowBounds rowBounds = new RowBounds(offset,limit);
		//INSTR(column명, 검색명)>0 OR column명 LIKE '%'||#{keyword}||'%'
		return (ArrayList)sqlSession.selectList("boardMapper.searchList",map,rowBounds);
	}

}
