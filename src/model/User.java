package model;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String usrname;
	private String pwd;
	private String province;
	private String category;
	private String image;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String usrname) {
		this.usrname = usrname;
	}

	/** full constructor */
	public User(String usrname, String pwd, String province, String category,
			String image) {
		this.usrname = usrname;
		this.pwd = pwd;
		this.province = province;
		this.category = category;
		this.image = image;
	}

	// Property accessors

	public String getUsrname() {
		return this.usrname;
	}

	public void setUsrname(String usrname) {
		this.usrname = usrname;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}