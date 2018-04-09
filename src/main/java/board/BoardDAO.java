package board;

import java.util.List;

public interface BoardDAO {

	public List<BoardVO> getBoardList();

	public void writeBoard(BoardVO vo);

	public BoardVO readBoard(BoardVO vo);

	public void addFavorcnt(BoardVO vo);

	public void addHatecnt(BoardVO vo);

	public void addHit(BoardVO vo);

	public void deleteBoard(BoardVO vo);

	public String getPassword(BoardVO vo);

}