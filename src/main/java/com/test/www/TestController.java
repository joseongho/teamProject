package com.test.www;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import session.TestVO2;
import test.TestService;
import test.TestVO;

@Controller
public class TestController {

	TestVO vo;
	AbstractApplicationContext aac;
	TestService ts;
	List<TestVO> list;

	@RequestMapping(value = "test/testProcess")
	public String testProcess(Model model, HttpSession session) {

		TestVO2 vo2;

		aac = new GenericXmlApplicationContext("test/test.xml");
		ts = (TestService) aac.getBean("TestService");

		vo2 = (TestVO2) session.getAttribute("vo2");
		if (vo2.getPageNumber() > 10) {
			return "test/result";
		}

		vo = new TestVO();
		vo = ts.getQuestion(vo);

		model.addAttribute("vo", vo);
		model.addAttribute("vo2", vo2);
		session.setAttribute("vo", vo);

		aac.close();

		return "test/testProcess";
	}

	@RequestMapping(value = "test/marking")
	public String marking(Model model, HttpSession session, HttpServletRequest request) {

		aac = new GenericXmlApplicationContext("test/test.xml");
		ts = (TestService) aac.getBean("TestService");
		vo = new TestVO();

		session = ts.marking(session, request, vo);
		model.addAttribute("vo2", (TestVO2) session.getAttribute("vo2"));
		return "test/marking";
	}

	@RequestMapping(value = "test/writeTest")
	public String writeTest() {

		return "test/writeTest";
	}

	@RequestMapping(value = "test/insertTest")
	public String insertTest(HttpServletRequest request) {

		aac = new GenericXmlApplicationContext("test/test.xml");
		ts = (TestService) aac.getBean("TestService");
		ts.setQuestion(vo, request);

		aac.close();
		return "home";
	}

	@RequestMapping(value = "test/testList")
	public String testList(Model model) {

		aac = new GenericXmlApplicationContext("test/test.xml");
		ts = (TestService) aac.getBean("TestService");

		list = ts.getQuestions();
		model.addAttribute("list", list);

		aac.close();
		return "test/testList";
	}

}
