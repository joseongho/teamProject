package com.test.www;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import session.TestVO2;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/")
	public String home(HttpSession session) {
		TestVO2 vo2;
		vo2 = new TestVO2();
		vo2.setPageNumber(1);
		session.setAttribute("vo2", vo2);
		return "home";
	}

	@RequestMapping(value = "/notice")
	public String notice() {

		return "notice";
	}

}
