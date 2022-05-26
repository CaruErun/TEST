package com.kh.serviceCenter.model.service;
import static com.kh.common.JDBCTemplate.close;
import static com.kh.common.JDBCTemplate.commit;
import static com.kh.common.JDBCTemplate.getConnection;
import static com.kh.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.common.PageInfo;
import com.kh.serviceCenter.model.dao.ScDao;
import com.kh.serviceCenter.model.vo.FAQ;
import com.kh.serviceCenter.model.vo.QNA; 
public class ScService {

	public int selectFAQListCount() {
		Connection conn = getConnection();
		
		int listCount = new ScDao().selectFAQListCount(conn);
		
		close(conn);
		return listCount;
	}

	public ArrayList<FAQ> selectFAQList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<FAQ> FAQList = new ScDao().selectFAQList(conn,pi);
		
		close(conn);
		return FAQList;
	}

	public void ajaxHideSc(int[] fnoArr, int sw) {
		Connection conn = getConnection();
		
		int result = new ScDao().ajaxHideSc(conn, fnoArr, sw);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
	}

	public int insertFAQ(FAQ faq) {
		Connection conn = getConnection();
		
		int result = new ScDao().insertFAQ(conn, faq);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		return result;
	}

	public int updateFAQ(FAQ faq) {
		Connection conn = getConnection();
		
		int result = new ScDao().updateFAQ(conn, faq);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		return result;
	}

	public int searchFAQCount(String faqCate, String searchFaq) {
		Connection conn = getConnection();
		
		int listCount = new ScDao().searchFAQCount(conn, faqCate, searchFaq);
		
		close(conn);
		
		return listCount;
	}

	public ArrayList<FAQ> searchFAQ(String faqCate, String searchFaq, PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<FAQ> fList = new ScDao().searchFAQ(conn, faqCate, searchFaq, pi);
		
		close(conn);
		return fList;
	}

	public int selectQNAListCount() {
		Connection conn = getConnection();
		
		int listCount = new ScDao().selectQNAListCount(conn);
		
		close(conn);
		return listCount;
	}

	public ArrayList<QNA> selectQNAList(PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<QNA> QNAList = new ScDao().selectQNAList(conn,pi);
		
		close(conn);
		return QNAList;
	}

	public QNA ajaxSelectQNA(int qnaNo) {
		Connection conn = getConnection();
		
		QNA q = new ScDao().ajaxSelectQNA(conn, qnaNo);
		
		close(conn);
		return q;
	}

	public void ajaxEnrollAnswer(int qnaNo, String qnaAnswer) {
		Connection conn = getConnection();
		
		int result = new ScDao().ajaxEnrollAnswer(conn, qnaNo, qnaAnswer);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
	}

	public int searchQNACount(String qnaCate, String searchQna) {
		Connection conn = getConnection();
		
		int listCount = new ScDao().searchQNACount(conn, qnaCate, searchQna);
		
		close(conn);
		
		return listCount;
	}

	public ArrayList<QNA> searchQNA(String qnaCate, String searchQna, PageInfo pi) {
		Connection conn = getConnection();
		
		ArrayList<QNA> qList = new ScDao().searchQNA(conn, qnaCate, searchQna, pi);
		
		close(conn);
		return qList;
	}

}
