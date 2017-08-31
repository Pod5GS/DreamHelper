package action;
import java.util.List;

import dao.schooldetaildao;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class SchooldetailAction extends ActionSupport{
	private String school;
	private String location;
	private String province;
	private String belongto;
	private String type;
	private String numoftop;
	private String numofmaster;
	private String numofphd;
	private String tags;
	private String toppicurl;
	private String brief;
	private String[] paragraphs;
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getBelongto() {
		return belongto;
	}
	public void setBelongto(String belongto) {
		this.belongto = belongto;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getNumoftop() {
		return numoftop;
	}
	public void setNumoftop(String numoftop) {
		this.numoftop = numoftop;
	}
	public String getNumofmaster() {
		return numofmaster;
	}
	public void setNumofmaster(String numofmaster) {
		this.numofmaster = numofmaster;
	}
	public String getNumofphd() {
		return numofphd;
	}
	public void setNumofphd(String numofphd) {
		this.numofphd = numofphd;
	}
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	public String getToppicurl() {
		return toppicurl;
	}
	public void setToppicurl(String toppicurl) {
		this.toppicurl = toppicurl;
	}
	public String getBrief() {
		return brief;
	}
	public void setBrief(String brief) {
		this.brief = brief;
	}
	public String[] getParagraphs() {
		return paragraphs;
	}
	public void setParagraphs(String[] paragraphs) {
		this.paragraphs = paragraphs;
	}
	public String execute() throws Exception{
		try{
			schooldetaildao info = new schooldetaildao();
			List<Object[]> resultlist = info.queryforschoolinfo(school);
			Object[] row = resultlist.get(0);
			location = row[1].toString();
			province = row[2].toString();
			belongto = row[3].toString();
			type = row[4].toString();
			numoftop = row[5].toString();
			numofmaster = row[6].toString();
			numofphd = row[7].toString();
			tags = row[8].toString();
			toppicurl = row[9].toString();
			brief = row[10].toString();
			paragraphs = brief.split("\n");
			for(int i = 0; i < paragraphs.length; i++){
				String tmp = paragraphs[i].replace("　　", "");
				paragraphs[i] = tmp;
				System.out.println(paragraphs[i]);
			}
			return "success";
		}
		catch(Exception ex){
			ex.printStackTrace();
			return "error";
		}
	}
}
