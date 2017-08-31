package action;

import java.util.List;
import dao.loginregisterdao;
import model.User;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport {
	private String usrName;
	private String pwd;
	private String message = "error";
	private List list;

	public String getUsrName() {
		return usrName;
	}

	public void setUsrName(String usrName) {
		this.usrName = usrName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	@Override
	public void validate() {
		if (this.getUsrName() == null || this.getUsrName().length() == 0) {
			addFieldError("userName", "用户名不能为空");
			message = ERROR;
		} else {
			loginregisterdao info = new loginregisterdao();
			list = info.queryInfo("userName", this.getUsrName());
			if (list.size() == 0) {
				addFieldError("userName", "该用户尚未注册");
				message = ERROR;
			} else {
				User ui = new User();
				int count = 0;
				for (int i = 0; i < list.size(); i++) {
					count++;
					ui = (User) list.get(i);
					if (this.getUsrName().equals(ui.getUsrname())) {
						if (ui.getPwd().equals(this.getPwd())) {
							message = SUCCESS;
							System.out.print("成功");
						} else {
							addFieldError("password", "密码错误");
							message = ERROR;
						}
					}
				}

			}

		}
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return message;
	}

}