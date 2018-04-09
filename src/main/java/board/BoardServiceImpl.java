package board;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;

	@Override
	public List<BoardVO> getBoardList() {
		// TODO Auto-generated method stub
		return boardDAO.getBoardList();
	}

	@Override
	public void writeBoard(BoardVO vo, HttpServletRequest request) {
		// TODO Auto-generated method stub
		vo.setName(request.getParameter("name"));
		vo.setTitle(request.getParameter("title"));
		vo.setPassword(request.getParameter("password"));
		vo.setContent(request.getParameter("content"));
		boardDAO.writeBoard(vo);
	}

	@Override
	public BoardVO readBoard(BoardVO vo, HttpServletRequest request) {
		// TODO Auto-generated method stub

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		vo.setNum(Integer.parseInt(request.getParameter("num")));

		boardDAO.addHit(vo);

		return boardDAO.readBoard(vo);
	}

	@Override
	public BoardVO addFavorcnt(BoardVO vo, HttpServletRequest request) {
		// TODO Auto-generated method stub

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		vo.setNum(Integer.parseInt(request.getParameter("num")));

		boardDAO.addFavorcnt(vo);

		return boardDAO.readBoard(vo);
	}

	@Override
	public BoardVO addHatecnt(BoardVO vo, HttpServletRequest request) {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		vo.setNum(Integer.parseInt(request.getParameter("num")));

		boardDAO.addHatecnt(vo);

		return boardDAO.readBoard(vo);
	}

	@Override
	public BoardVO sendNum(BoardVO vo, HttpServletRequest request) {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		vo.setNum(Integer.parseInt(request.getParameter("num")));

		return vo;
	}

	@Override
	public String deleteBoard(BoardVO vo, HttpServletRequest request) {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		vo.setNum(Integer.parseInt(request.getParameter("num")));
		vo.setPassword(request.getParameter("password"));

		if (vo.getPassword().equals(boardDAO.getPassword(vo))) {

			boardDAO.deleteBoard(vo);
			return "home";
		} else {
			return "erro/wrongPassword";
		}
	}

}
