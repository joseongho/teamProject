package board;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public interface BoardService {

	public List<BoardVO> getBoardList();

	public void writeBoard(BoardVO vo, HttpServletRequest request);

	public BoardVO readBoard(BoardVO vo, HttpServletRequest request);

	public BoardVO addFavorcnt(BoardVO vo, HttpServletRequest request);

	public BoardVO addHatecnt(BoardVO vo, HttpServletRequest request);

	public String deleteBoard(BoardVO vo, HttpServletRequest request);

	public BoardVO sendNum(BoardVO vo, HttpServletRequest request);


}