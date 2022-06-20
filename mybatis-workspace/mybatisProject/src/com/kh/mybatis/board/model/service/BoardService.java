package com.kh.mybatis.board.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.mybatis.board.model.vo.Board;
import com.kh.mybatis.board.model.vo.Reply;
import com.kh.mybatis.common.model.vo.PageInfo;

public interface BoardService {
	public abstract int selectListCount();
	
	public abstract int selectListCount(HashMap<String,String> map);

	public abstract ArrayList<Board> selectList(PageInfo pi);
	
	public abstract ArrayList<Board> selectList(PageInfo pi, HashMap<String,String> map);
	
	public abstract int increaseCount(int boardNo);
	
	public abstract Board detailBoard(int boardNo);
	
	public abstract ArrayList<Reply> selectReplyList(int boardNo);
	
	public abstract int insertReply(Reply r);
}
