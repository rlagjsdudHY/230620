package com.exam.board;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.exam.board.svc.BBSInter;

@Controller
public class BBSController {
	@Autowired
	private BBSInter bbsInter;
	
	@RequestMapping("/list")
	public String mtdList(Model model) {
		model.addAttribute("BBSlist",bbsInter.BBSlist());
		return "bbs/list";
	}
	@RequestMapping("/result")
	public String mtdResult(HttpServletRequest req, Model model) {
			String num = req.getParameter("num");
			model.addAttribute("BBSlistResult", bbsInter.BBSlistResult(num));
		
		return "/bbs/result";
	}

}
