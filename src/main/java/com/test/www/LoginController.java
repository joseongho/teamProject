package com.test.www;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping(value = "login/myPageOne")
	public String myPageOne(Model model, HttpServletResponse response) {

		String id;
		Cookie cookie;

		id = "test";
		cookie = new Cookie("id", id);

		response.addCookie(cookie);

		return "login/myPageOne";
	}

	@RequestMapping(value = "login/myPagePwMf")
	public String myPagePwMf(Model model) {

		return "login/myPagePwMf";
	}

}
