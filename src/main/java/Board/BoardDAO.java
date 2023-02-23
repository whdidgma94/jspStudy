package Board;

import java.util.ArrayList;


public class BoardDAO {
	private ArrayList<BoardVO> list;
	private int num=1;
	private BoardDAO() {
		list = new ArrayList<BoardVO>();
		setSample();
	}
	private void setSample() {		
		addBoard("제목1","내용1","지은이1","지은이ID1","2023-02-23");
		addBoard("제목2","내용2","지은이2","지은이ID2","2023-02-23");
	}
	static private BoardDAO instance = new BoardDAO();
	static public BoardDAO getInstance() {
		return instance;
	}
	public ArrayList<BoardVO> getAllBoardList(){
		return list;
	}
	public void deleteboard(int num) {
		list.remove(num);
	}
	public void addBoard(String title, String content, String writer, String writerId, String date) {
		list.add(new BoardVO(title,content,writer,writerId,date,num));
		num++;
	}
	
}
