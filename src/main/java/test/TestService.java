package test;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public interface TestService {

	public TestVO  getQuestion(TestVO vo);
	
	public void setQuestion(TestVO vo,HttpServletRequest request);
	
	public int countAll();
	
	public List<TestVO> getQuestions();

	public HttpSession marking(HttpSession session, HttpServletRequest request, TestVO vo);
}
