package np.com.vo;

import java.sql.Timestamp;
import java.util.ArrayList;

public class RecipeBoardVO {
	private String field="";
	private int no = 0;
	private String m_id="";
	private String rcpName = "";
	private String mainCategory = "";
	private String subCategory = "";
	private String subject = "";
	private String[] ingredients = {};
	private int[] weight = {};
	private String[] unit = {};
	private String content = "";
	private Timestamp reg_date = null;
	private int readCount = 0;
	private String msg = "";	
	private ArrayList rcpCursor = new ArrayList<>();
	
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getRcpName() {
		return rcpName;
	}
	public void setRcpName(String rcpName) {
		this.rcpName = rcpName;
	}
	public String getMainCategory() {
		return mainCategory;
	}
	public void setMainCategory(String mainCategory) {
		this.mainCategory = mainCategory;
	}
	public String getSubCategory() {
		return subCategory;
	}
	public void setSubCategory(String subCategory) {
		this.subCategory = subCategory;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String[] getIngredients() {
		return ingredients;
	}
	public void setIngredients(String[] ingredients) {
		this.ingredients = ingredients;
	}
	public int[] getWeight() {
		return weight;
	}
	public void setWeight(int[] weight) {
		this.weight = weight;
	}
	public String[] getUnit() {
		return unit;
	}
	public void setUnit(String[] unit) {
		this.unit = unit;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public ArrayList getRcpCursor() {
		return rcpCursor;
	}
	public void setRcpCursor(ArrayList rcpCursor) {
		this.rcpCursor = rcpCursor;
	}
	
}