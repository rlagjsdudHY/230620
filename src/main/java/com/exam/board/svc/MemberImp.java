package com.exam.board.svc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.board.dao.MemberDao;
import com.exam.board.dto.MemberDto;

@Service
public class MemberImp implements MemberInter {
	
	@Autowired
	private MemberDao memberDao;
	
	@Override
	public List<MemberDto> memberList(){
		
		return memberDao.memberList();
	}
	

}
