package com.exam.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.exam.board.dto.MemberDto;

@Mapper
public interface MemberDao {
	
	public List<MemberDto> memberList();
}
