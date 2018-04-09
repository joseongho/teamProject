package com.test.www;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import score.ScoreVO;
import score.ScoreService;

@Controller
public class ScoreController {

	AbstractApplicationContext aac;
	ScoreService ss;
	ScoreVO vo;
	List<ScoreVO> list;

	@RequestMapping(value = "score/showRank")
	public String showRank(Model model) {

		aac = new GenericXmlApplicationContext("score/score.xml");
		ss = (ScoreService) aac.getBean("ScoreService");

		list = ss.getRank();

		model.addAttribute("list", list);

		aac.close();

		return "score/showRank";
	}

	@RequestMapping(value = "score/searchRank")
	public String searchRank() {

		return "score/searchRank";
	}

	@RequestMapping(value = "score/searchRank2")

	public String searchRank2(Model model, HttpServletRequest request) {

		aac = new GenericXmlApplicationContext("score/score.xml");
		ss = (ScoreService) aac.getBean("ScoreService");

		vo = new ScoreVO();

		vo = ss.getScore(vo, request);

		if (vo == null) {
			aac.close();
			return "erro/idIsNotFounded";
		}

		model.addAttribute("vo", vo);

		aac.close();

		return "score/searchRank2";
	}

}
