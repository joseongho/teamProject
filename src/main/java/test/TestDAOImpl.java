package test;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestDAOImpl extends SqlSessionDaoSupport implements TestDAO {

	@Override
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public TestVO getQuestion(TestVO vo) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("TestDAO.getQuestion", vo);
	}

	@Override
	public void setQuestion(TestVO vo) {
		// TODO Auto-generated method stub
		getSqlSession().insert("TestDAO.insertTest", vo);
	}

	@Override
	public int countAll() {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("TestDAO.countAll");
	}

	@Override
	public List<TestVO> getQuestions() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("TestDAO.getAll");
	}

}
