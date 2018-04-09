package board;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl extends SqlSessionDaoSupport implements BoardDAO {

	@Override
	@Autowired
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	@Override
	public List<BoardVO> getBoardList() {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("board.getBoardList");
	}

	@Override
	public void writeBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		getSqlSession().update("board.writeBoard", vo);

	}

	@Override
	public BoardVO readBoard(BoardVO vo) {
		// TODO Auto-generated method stub

		return getSqlSession().selectOne("board.readBoard", vo);
	}

	@Override
	public void addFavorcnt(BoardVO vo) {
		// TODO Auto-generated method stub
		getSqlSession().update("board.addFavorcnt", vo);
	}

	@Override
	public void addHatecnt(BoardVO vo) {
		// TODO Auto-generated method stub
		getSqlSession().update("board.addHatecnt", vo);

	}

	@Override
	public void addHit(BoardVO vo) {
		// TODO Auto-generated method stub
		getSqlSession().update("board.addHit", vo);
	}

	@Override
	public void deleteBoard(BoardVO vo) {
		// TODO Auto-generated method stub
		getSqlSession().delete("board.deleteBoard", vo);
	}

	@Override
	public String getPassword(BoardVO vo) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("board.getPassword", vo);
	}

}
