package com.ezen.book.service;

import java.util.List;

import com.ezen.book.domain.BoardVO;
import com.ezen.book.domain.BookVO;
import com.ezen.book.domain.PagingVO;

public interface BookService {






	List<BoardVO> getList(PagingVO pvo);

	int getTotalCount(PagingVO pvo);



	





}
