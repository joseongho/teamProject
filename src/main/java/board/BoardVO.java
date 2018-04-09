package board;

import java.sql.Date;

public class BoardVO {

	private int num;
	private String name;
	private String title;
	private String content;
	private Date boardDate;
	private int hit;
	private String password;
	private int favorcnt;
	private int hatecnt;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getFavorcnt() {
		return favorcnt;
	}

	public void setFavorcnt(int favorcnt) {
		this.favorcnt = favorcnt;
	}

	public int getHatecnt() {
		return hatecnt;
	}

	public void setHatecnt(int hatecnt) {
		this.hatecnt = hatecnt;
	}

}
