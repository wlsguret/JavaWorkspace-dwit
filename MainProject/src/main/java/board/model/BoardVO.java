package board.model;

import java.util.Date;

public class BoardVO {
	private int idx;
	private String title;
	private String content;
	private int readcount;
	private int groupid;
	private int depth;
	private int reOrder;
	private int isdel;
	private String writeId;
	private String writeName;
	private Date writeDay;
	
	public BoardVO() {}

	public BoardVO(String title, String content, String writeId, String writeName) {
		this.title = title;
		this.content = content;
		this.writeId = writeId;
		this.writeName = writeName;
	}

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
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

	public int getReadcount() {
		return readcount;
	}

	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}

	public int getGroupid() {
		return groupid;
	}

	public void setGroupid(int groupid) {
		this.groupid = groupid;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public int getReOrder() {
		return reOrder;
	}

	public void setReOrder(int reOrder) {
		this.reOrder = reOrder;
	}

	public int getIsdel() {
		return isdel;
	}

	public void setIsdel(int isdel) {
		this.isdel = isdel;
	}

	public String getWriteId() {
		return writeId;
	}

	public void setWriteId(String writeId) {
		this.writeId = writeId;
	}

	public String getWriteName() {
		return writeName;
	}

	public void setWriteName(String writeName) {
		this.writeName = writeName;
	}

	public Date getWriteDay() {
		return writeDay;
	}

	public void setWriteDay(Date writeDay) {
		this.writeDay = writeDay;
	}

	@Override
	public String toString() {
		return "BoardVO [idx=" + idx + ", title=" + title + ", content=" + content + ", readcount=" + readcount
				+ ", groupid=" + groupid + ", depth=" + depth + ", reOrder=" + reOrder + ", isdel=" + isdel
				+ ", writeId=" + writeId + ", writeName=" + writeName + ", writeDay=" + writeDay + "]";
	}
	
}
