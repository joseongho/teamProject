package score;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface ScoreService {
	public ScoreVO getScore(ScoreVO vo,HttpServletRequest request);

	public List<ScoreVO> getRank();
}
