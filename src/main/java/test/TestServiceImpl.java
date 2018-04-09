package test;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import session.TestVO2;

@Service("TestService")
public class TestServiceImpl implements TestService {
	@Autowired
	TestDAO testDAO;

	@Override
	public TestVO getQuestion(TestVO vo) {
		// TODO Auto-generated method stub
		int i;
		Random random;

		random = new Random();
		i = testDAO.countAll();
		vo.setQno(random.nextInt(i) + 1);

		return testDAO.getQuestion(vo);
	}

	@Override
	public void setQuestion(TestVO vo, HttpServletRequest request) {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		vo = new TestVO();
		vo.setQuestion(request.getParameter("question"));
		vo.setCorrect(Integer.parseInt(request.getParameter("correct")));
		vo.setEx1(request.getParameter("ex1"));
		vo.setEx2(request.getParameter("ex2"));
		vo.setEx3(request.getParameter("ex3"));
		vo.setEx4(request.getParameter("ex4"));

		testDAO.setQuestion(vo);

	}

	@Override
	public int countAll() {
		// TODO Auto-generated method stub
		return testDAO.countAll();
	}

	@Override
	public List<TestVO> getQuestions() {
		// TODO Auto-generated method stub
		return testDAO.getQuestions();
	}

	@Override
	public HttpSession marking(HttpSession session, HttpServletRequest request, TestVO vo) {
		// TODO Auto-generated method stub
		int i;
		TestVO2 vo2;
		HttpSession mySession;

		vo = (TestVO) session.getAttribute("vo");
		i = Integer.parseInt(request.getParameter("mark"));

		vo2 = (TestVO2) session.getAttribute("vo2");

		if (vo.getCorrect() == i) {
			vo2.setScore(vo2.getScore() + 5);
			vo2.setTemp("정답입니다.");
		} else {
			vo2.setTemp("오답입니다. 정답은" + vo.getCorrect());
		}
		vo2.setPageNumber(vo2.getPageNumber() + 1);

		session.setAttribute("vo2", vo2);

		mySession = session;
		return mySession;

	}

}
