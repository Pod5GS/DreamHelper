package action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import common.Schoolqueryresult;
import dao.schoolinquerydao;

@SuppressWarnings("serial")
public class SchoolfilterAction extends ActionSupport{
	private String tag;
	private String type;
	private String province;
    private List<Schoolqueryresult> infolist;
   
	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}
	
	public List<Schoolqueryresult> getInfolist() {
		return infolist;
	}
	
	public void setInfolist(ArrayList<Schoolqueryresult> infolist) {
		this.infolist = infolist;
	}
	public String execute(){
		try{
			schoolinquerydao info = new schoolinquerydao();
			List<Object[]> resultlist = info.queryforfilterschoolinfo(tag,type,province);
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
