package Board;

public class BoardVO {
	private String title;
	private String content;
	private String writer;
	private String writerId;
	private String date;
	private int num;
	private int viewer;
	private boolean deleted;
	
	
	public BoardVO(String title, String content, String writer, String writerId, String date, int num) {
		super();
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.writerId = writerId;
		this.date = date;
		this.num = num;
		this.deleted=false;
	}
	public String getWriterId() {
		return writerId;
	}
	public void setWriterId(String writerId) {
		this.writerId = writerId;
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getViewer() {
		return viewer;
	}
	public void setViewer(int viewer) {
		this.viewer = viewer;
	}
	public boolean isDeleted() {
		return deleted;
	}
	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}
	
	
}
