package np.com.vo;

public class ResumeVO {
	String m_id="";
	String main="";//주 요리
	int years = 0;		//실제 레스토랑 경력
	String reason="";//왜 셰프가 되려고 하는지?
	String msg = "";//프로시저 메시지 출력 : "셰프 신청이 완료 되었습니다"
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getMain() {
		return main;
	}
	public void setMain(String main) {
		this.main = main;
	}
	public int getYears() {
		return years;
	}
	public void setYears(int years) {
		this.years = years;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
}
