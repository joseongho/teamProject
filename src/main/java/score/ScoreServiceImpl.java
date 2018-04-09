package score;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("ScoreService")
public class ScoreServiceImpl implements ScoreService {
	@Autowired
	ScoreDAO scoreDAO;

	@Override
	public ScoreVO getScore(ScoreVO vo, HttpServletRequest request) {
		// TODO Auto-generated method stub

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		vo.setId(request.getParameter("id"));

		return scoreDAO.getScore(vo);
	}

	@Override
	public List<ScoreVO> getRank() {
		// TODO Auto-generated method stub
		return scoreDAO.getRank();
	}

}
