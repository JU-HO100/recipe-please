package np.com.vo;

import java.util.ArrayList;

public class CookClassVO {
	private int ckClassNo = 0;
	private String m_id = "";							
	private String classProcess = "";			//신청현황 0, 1, 2 (0=수강신청, 1=수강허가, 2=수강완료)
	private String menuName = "";				//요리 이름
	private String cooker		="";				//준비물
	private String classAddress ="";			//쿠킹클래스 주소
	private String maxPersons   ="";			//최대인원
	private String classDate    ="";				//쿠킹클래스 날짜, 시간
	private String msg = "";																	//프로시저 출력 메시지
	private ArrayList ckClassCursor = new ArrayList<>();			//프로시저 커서용 출력 메시지
	
	public int getCkClassNo() {
		return ckClassNo;
	}
	public void setCkClassNo(int ckClassNo) {
		this.ckClassNo = ckClassNo;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getClassProcess() {
		return classProcess;
	}
	public void setClassProcess(String classProcess) {
		this.classProcess = classProcess;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getCooker() {
		return cooker;
	}
	public void setCooker(String cooker) {
		this.cooker = cooker;
	}
	public String getClassAddress() {
		return classAddress;
	}
	public void setClassAddress(String classAddress) {
		this.classAddress = classAddress;
	}
	public String getMaxPersons() {
		return maxPersons;
	}
	public void setMaxPersons(String maxPersons) {
		this.maxPersons = maxPersons;
	}
	public String getClassDate() {
		return classDate;
	}
	public void setClassDate(String classDate) {
		this.classDate = classDate;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public ArrayList getCkClassCursor() {
		return ckClassCursor;
	}
	public void setCkClassCursor(ArrayList ckClassCursor) {
		this.ckClassCursor = ckClassCursor;
	}
	
}