package test;

import java.util.List;

public interface TestDAO {

	public TestVO getQuestion(TestVO vo);

	public void setQuestion(TestVO vo);

	public int countAll();
	
	public List<TestVO> getQuestions();
}
