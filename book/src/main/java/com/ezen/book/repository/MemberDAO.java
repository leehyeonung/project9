package com.ezen.book.repository;

import org.springframework.stereotype.Repository;

import com.ezen.book.domain.MemberVO;

@Repository
public interface MemberDAO {

	MemberVO getId(String mem_id);

	int insertMember(MemberVO mvo);

	int login(MemberVO mvo);

	int usermodify(MemberVO mvo);

	MemberVO checkId(String mem_id);

	int memberDelete(int mem_num);

	MemberVO getMember(String brd_writer);


	


}
