package com.exam.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.board.svc.MemberInter;

@Controller
public class ComunityController {

	@Autowired
	private MemberInter memberInter;
	
	@RequestMapping("/")
	public String root() {
		
		return "index";
	}
	
	@RequestMapping("footerTmp")
	public String mtdFooter(Model model) {
		
		return "ind/footerTmp";
	}
	@RequestMapping("/main")
	public String mtdMain(Model model) {
		
			model.addAttribute("memberList", memberInter.memberList());
		return "main";
	}
}
