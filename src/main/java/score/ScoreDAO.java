package score;

import java.util.List;

public interface ScoreDAO {

	ScoreVO getScore(ScoreVO member);

	List<ScoreVO> getRank();

}