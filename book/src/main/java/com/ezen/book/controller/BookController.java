package com.ezen.book.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.book.domain.BoardVO;
import com.ezen.book.domain.BookVO;
import com.ezen.book.domain.PagingVO;
import com.ezen.book.handler.PagingHandler;
import com.ezen.book.repository.BookDAO;
import com.ezen.book.service.BookService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequestMapping("/book/*")
@Controller
public class BookController {

	@Inject
	private BookDAO bookdao;
	
	@Inject
	private BookService bosv;
	
	@GetMapping("/search")
	public String list(Model model,PagingVO pvo){
		log.info(">>>pageNo :"+pvo.getPageNo());
		List<BoardVO> list=bosv.getList(pvo);	
		model.addAttribute("list", list);
		int totalCount=bosv.getTotalCount(pvo);
		PagingHandler ph = new PagingHandler(pvo,totalCount);
		model.addAttribute("pgh",ph);
		return "/book/bookList";
	}
}
