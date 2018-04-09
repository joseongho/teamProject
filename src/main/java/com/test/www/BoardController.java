package com.test.www;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import board.BoardService;
import board.BoardVO;

@Controller
public class BoardController {
	AbstractApplicationContext aac;
	BoardService bs;
	BoardVO vo;
	List<BoardVO> list;

	@RequestMapping("board/boardList")
	public String list(Model model) {

		aac = new GenericXmlApplicationContext("board/board.xml");
		bs = (BoardService) aac.getBean("boardService");

		list = bs.getBoardList();

		model.addAttribute("list", list);

		aac.close();
		return "board/boardList";
	}

	@RequestMapping("board/writeForm")
	public String writeForm() {

		return "board/writeForm";
	}

	@RequestMapping("board/writeBoard")
	public String writeBoard(HttpServletRequest request) {

		aac = new GenericXmlApplicationContext("board/board.xml");
		bs = (BoardService) aac.getBean("boardService");
		vo = new BoardVO();

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		bs.writeBoard(vo, request);

		aac.close();
		return "home";
	}

	@RequestMapping("board/readBoard")
	public String readBoard(HttpServletRequest request, Model model) {

		aac = new GenericXmlApplicationContext("board/board.xml");
		bs = (BoardService) aac.getBean("boardService");
		vo = new BoardVO();

		vo = bs.readBoard(vo, request);

		model.addAttribute("vo", vo);

		aac.close();
		return "board/readBoard";
	}

	@RequestMapping("board/addFavorcnt")
	public String addFavorcnt(HttpServletRequest request, Model model) {

		aac = new GenericXmlApplicationContext("board/board.xml");
		bs = (BoardService) aac.getBean("boardService");
		vo = new BoardVO();

		vo = bs.addFavorcnt(vo, request);

		model.addAttribute("vo", vo);

		aac.close();
		return "board/readBoard";
	}

	@RequestMapping("board/addHatecnt")
	public String addHatecnt(HttpServletRequest request, Model model) {

		aac = new GenericXmlApplicationContext("board/board.xml");
		bs = (BoardService) aac.getBean("boardService");
		vo = new BoardVO();

		vo = bs.addHatecnt(vo, request);

		model.addAttribute("vo", vo);

		aac.close();
		return "board/readBoard";
	}

	@RequestMapping("board/deleteBoard")
	public String deleteBoard(HttpServletRequest request, Model model) {

		aac = new GenericXmlApplicationContext("board/board.xml");
		bs = (BoardService) aac.getBean("boardService");
		vo = new BoardVO();

		vo = bs.sendNum(vo, request);

		model.addAttribute("vo", vo);

		aac.close();
		return "board/deleteBoard";
	}

	@RequestMapping("board/deleteBoard2")
	public String deleteBoard2(HttpServletRequest request) {

		aac = new GenericXmlApplicationContext("board/board.xml");
		bs = (BoardService) aac.getBean("boardService");
		vo = new BoardVO();
		String string;
		string = bs.deleteBoard(vo, request);
		aac.close();
		return string;
	}

}
