package com.exam.board.dto;

import java.security.Timestamp;

import lombok.Data;

@Data
public class BBSdto {
	
	private String num;
	private String uid;
	private String uname;
	private String subject;
	private Timestamp regtm;

}
