package com.kh.spring.common.template;

import com.kh.spring.common.model.vo.PageInfo;

public class Pagination {
public static PageInfo getPageInfo(int listCount, int currentPage, int pageLimit, int boardLimit) {
		
		int maxPage = (listCount/boardLimit)+((listCount%boardLimit==0) ? 0 : 1);
		int startPage = (currentPage-1)/pageLimit*pageLimit+1;
		int endPage = startPage+pageLimit-1;
		if(endPage>maxPage) {
			endPage=maxPage;
		}
		PageInfo pi = new PageInfo(listCount,currentPage,pageLimit,boardLimit,maxPage,startPage,endPage);
		
		return pi;
	}
}
