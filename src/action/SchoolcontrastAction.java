package action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import common.Schoolqueryresult;
import dao.schoolcontrastdao;

@SuppressWarnings("serial")
public class SchoolcontrastAction extends ActionSupport{
	private String contraststr;
    private List<Schoolqueryresult> infolist;
	
	public List<Schoolqueryresult> getInfolist() {
		return infolist;
	}
	
	public void setInfolist(ArrayList<Schoolqueryresult> infolist) {
		this.infolist = infolist;
	}
	
	public String getContraststr() {
		return contraststr;
	}

	public void setContraststr(String contraststr) {
		this.contraststr = contraststr;
	}
	private String translatetags(String tags){
		String translatedtags = "";
		String tagarr[] = tags.split(" "); 
		for(String temp:tagarr){
			if(temp.equals("211") || temp.equals("985")){
				translatedtags = translatedtags + temp + " ";
			}
			if(temp.equals("自"))
				translatedtags = translatedtags + "自主招生 ";
			if(temp.equals("研"))
				translatedtags = translatedtags + "研究生院 ";
			if(temp.equals("国"))
				translatedtags = translatedtags + "国防生 ";
			if(temp.equals("卓"))
				translatedtags = translatedtags + "卓越计划 ";
		}
		return translatedtags;
	}
	public String execute(){
		try{
			schoolcontrastdao info = new schoolcontrastdao();
			infolist = new ArrayList<Schoolqueryresult>();
			List<Object[]> resultlist = info.queryforschoolinfo(contraststr);
			for(Object[] row:resultlist){
				Schoolqueryresult temp = new Schoolqueryresult();
				temp.school = row[0].toString();
				temp.location = row[1].toString();
				temp.province = row[2].toString();
				temp.belongto = row[3].toString();
				temp.type = row[4].toString();
				temp.numoftop = row[5].toString();
				temp.numofmaster = row[6].toString();
				temp.numofphd = row[7].toString();
				temp.tags = translatetags(row[8].toString());
				temp.toppicurl = row[9].toString();
				if(row[11] != null){
					temp.comprehensive = row[11].toString();
				}else{
					temp.comprehensive = "----";
				}
				if(row[12] != null){
					temp.atmosphere = row[12].toString();
				}else{
					temp.atmosphere = "----";
				}
				if(row[13] != null){
					temp.environment = row[13].toString();
				}else{
					temp.environment = "----";
				}
				if(row[14] != null){
					temp.prospect = row[14].toString();
				}else{
					temp.prospect = "----";
				}
				infolist.add(temp);
			}
			if(infolist.size() < 5){
				int size = infolist.size();
				for(int i = 0; i < 5 - size;i++ ){
					Schoolqueryresult temp = new Schoolqueryresult();
					temp.school = "添加院校";
					infolist.add(temp);
				}
			}
			return "success";
		}catch(Exception ex){
			ex.printStackTrace();
			return "error";
		}
	}

	
}
