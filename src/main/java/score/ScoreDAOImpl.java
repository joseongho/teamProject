package score;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ScoreDAOImpl extends SqlSessionDaoSupport implements ScoreDAO {

	@Override
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public ScoreVO getScore(ScoreVO vo) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("score.getScore", vo);
	}

	@Override
	public List<ScoreVO> getRank() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("score.getRank");
	}
}
