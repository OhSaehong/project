package project.multi.login;

import org.springframework.web.multipart.MultipartFile;

public class LoginVO {
	private String ap_id; 
	private String ap_pw;
	private String ap_name;
	private int birth;
	private String photo;
	private MultipartFile imagefile;
	private String addr;
	private String email;
	private String  classify;
	private int salary;
	public LoginVO(String ap_id, String ap_pw, String ap_name, int birth, String photo, MultipartFile imagefile,
			String addr, String email, String classify, int salary) {
		super();
		this.ap_id = ap_id;
		this.ap_pw = ap_pw;
		this.ap_name = ap_name;
		this.birth = birth;
		this.photo = photo;
		this.imagefile = imagefile;
		this.addr = addr;
		this.email = email;
		this.classify = classify;
		this.salary = salary;
	}
	@Override
	public String toString() {
		return "LoginVO [ap_id=" + ap_id + ", ap_pw=" + ap_pw + ", ap_name=" + ap_name + ", birth=" + birth + ", photo="
				+ photo + ", imagefile=" + imagefile + ", addr=" + addr + ", email=" + email + ", classify=" + classify
				+ ", salary=" + salary + "]";
	}
	public String getAp_id() {
		return ap_id;
	}
	public void setAp_id(String ap_id) {
		this.ap_id = ap_id;
	}
	public String getAp_pw() {
		return ap_pw;
	}
	public void setAp_pw(String ap_pw) {
		this.ap_pw = ap_pw;
	}
	public String getAp_name() {
		return ap_name;
	}
	public void setAp_name(String ap_name) {
		this.ap_name = ap_name;
	}
	public int getBirth() {
		return birth;
	}
	public void setBirth(int birth) {
		this.birth = birth;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public MultipartFile getImagefile() {
		return imagefile;
	}
	public void setImagefile(MultipartFile imagefile) {
		this.imagefile = imagefile;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getClassify() {
		return classify;
	}
	public void setClassify(String classify) {
		this.classify = classify;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	
}
