package action;

import java.util.List;
import dao.loginregisterdao;
import model.User;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class RegisterAction extends ActionSupport {

	private String usrName;
	private String pwd1;
	private String pwd2;
	private String message2 = ERROR;
	private List list;

	public String getUsrName() {
		return usrName;
	}

	public void setUsrName(String usrName) {
		this.usrName = usrName;
	}

	public String getPwd1() {
		return pwd1;
	}

	public void setPwd1(String pwd1) {
		this.pwd1 = pwd1;
	}

	public String getPwd2() {
		return pwd2;
	}

	public void setPwd2(String pwd2) {
		this.pwd2 = pwd2;
	}

	@Override
	public void validate() {
		// �û������֤
		if (this.getUsrName() == null || this.getUsrName().length() == 0) {
			addFieldError("userName", "用户名不能为空");
		} else {
			loginregisterdao info = new loginregisterdao();
			list = info.queryInfo("userName", this.getUsrName());
			User ui = new User();
			for (int i = 0; i < list.size(); i++) {
				ui = (User) list.get(i);
				if (ui.getUsrname().equals(this.getUsrName())) {
					addFieldError("userName", "用户名已存在");
				}
			}
		}
		// �������֤
		if (this.getPwd1() == null || this.getPwd1().length() == 0) {
			addFieldError("userPwd1", "登陆密码不允许为空");
		} else if (this.getPwd2() == null || this.getPwd2().length() == 0) {
			addFieldError("userPwd2", "请重复输入密码");
		} else if (!(this.getPwd1().equals(this.getPwd2()))) {
			addFieldError("userPwd2", "两次密码不一致");
		}

	}

	public User user() {
		User info = new User();
		info.setUsrname(this.getUsrName());
		info.setPwd(this.getPwd1());
		return info;
	}

	@Override
	public String execute() throws Exception {
		loginregisterdao lr = new loginregisterdao();
		System.out.println("用户名是" + usrName);
		String str = lr.saveInfo(user());
		if (str.equals("success")) {
			return SUCCESS;
		}
		return "error";
	}
}
