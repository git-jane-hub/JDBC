package pr.pr.pr;

public class R1UsersVO {
	private String uid;
	private String upw;
	private String uname;
	private String email;
	
	public R1UsersVO() {
	}
	
	public R1UsersVO(String uid, String upw, String uname, String email) {
		// 부모클래스 생성자 호출
		super();
		this.uid = uid;
		this.upw = upw;
		this.uname = uname;
		this.email = email;
	}
	
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUid() {
		return this.uid;
	}
	public void setUpw(String upw) {
		this.upw = upw;
	}
	public String getUpw() {
		return this.upw;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUname() {
		return this.uname;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail() {
		return this.email;
	}
	
	@Override
	public String toString() {
		return "R1UsersVO [uid=" + uid + ", upw=" + upw + ", uname=" + uname + ", email=" + email + "]";
	}
	
}
