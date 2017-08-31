package action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import common.Schoolqueryresult;
import dao.schoolinquerydao;

@SuppressWarnings("serial")
public class SchoolsearchAction extends ActionSupport{
	private String school;
	private List<Schoolqueryresult> infolist;
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public List<Schoolqueryresult> getInfolist() {
		return infolist;
	}
	public void setInfolist(List<Schoolqueryresult> infolist) {
		this.infolist = infolist;
	}
	public String execute(){
		try{
			schoolinquerydao info = new schoolinquerydao();
			List<Object[]> resultlist = info.queryforschoolinfobyname(school);
			infolist = new ArrayList<Schoolqueryresult>();
			for (int i = 0; i < resultlist.size(); i++) {
				Schoolqueryresult temp = new Schoolqueryresult();
				Object[] row = resultlist.get(i);
				temp.school = row[0].toString();
				temp.province = row[1].toString();
				temp.belongto = row[2].toString();
				temp.type = row[3].toString();
				temp.tags = row[4].toString();
				temp.toppicurl = row[5].toString();
				temp.location = row[6].toString();
				temp.numoftop = row[7].toString();
				temp.numofmaster = row[8].toString();
				temp.numofphd = row[9].toString();
				infolist.add(temp);
			}
			return "success";
		}catch(Exception ex){
			ex.printStackTrace();
			return "error";
		}
	}

}
