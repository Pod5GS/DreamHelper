package action;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import dao.schoolrecommenddao;
import common.resultset;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class SchoolrecommendwithmajorAction extends ActionSupport{
	private String usrScore;
	private String baseScore;
	private String usrCate;
	private String province;
	private String major;
	private String comprehensive;
	private String atmosphere;
	private String environment;
	private String prospect;
	private List<resultset> result;

	public String getUsrScore() {
		return usrScore;
	}
	public void setUsrScore(String usrScore) {
		this.usrScore = usrScore;
	}
	public String getBaseScore() {
		return baseScore;
	}
	public void setBaseScore(String baseScore) {
		this.baseScore = baseScore;
	}
	public String getUsrCate() {
		return usrCate;
	}
	public void setUsrCate(String usrCate) {
		this.usrCate = usrCate;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getComprehensive() {
		return comprehensive;
	}
	public void setComprehensive(String comprehensive) {
		this.comprehensive = comprehensive;
	}
	public String getAtmosphere() {
		return atmosphere;
	}
	public void setAtmosphere(String atmosphere) {
		this.atmosphere = atmosphere;
	}
	public String getEnvironment() {
		return environment;
	}
	public void setEnvironment(String environment) {
		this.environment = environment;
	}
	public String getProspect() {
		return prospect;
	}
	public void setProspect(String prospect) {
		this.prospect = prospect;
	}
	public List<resultset> getResult() {
		return result;
	}
	public void setResult(List<resultset> result) {
		this.result = result;
	}
	public String execute() throws Exception {
		try {
			int difference = Integer.parseInt(usrScore.trim())
					- Integer.parseInt(baseScore.trim());
			int pref0 = Integer.parseInt(comprehensive.trim());
			int pref1 = Integer.parseInt(atmosphere.trim());
			int pref2 = Integer.parseInt(environment.trim());
			int pref3 = Integer.parseInt(prospect.trim());
			double vpref0, vpref1, vpref2, vpref3, sumeval0 = 0, sumeval1 = 0, sumeval2 = 0, sumeval3 = 0, sumeval4 = 0;
		    result = new ArrayList<resultset>();
			schoolrecommenddao info = new schoolrecommenddao();
			vpref0 = (double) pref0 / (double) (pref0 + pref1 + pref2 + pref3);
			vpref1 = (double) pref1 / (double) (pref0 + pref1 + pref2 + pref3);
			vpref2 = (double) pref2 / (double) (pref0 + pref1 + pref2 + pref3);
			vpref3 = (double) pref3 / (double) (pref0 + pref1 + pref2 + pref3);
			List<Object[]> resultlist1 = info.querywithmajorforschool(usrCate.trim(),
					province.trim(), major.trim(),"" + difference);
			for (int i = 0; i < resultlist1.size(); i++) {
				resultset temp = new resultset();
				temp.school = resultlist1.get(i)[0].toString();
				temp.basescore = Integer.parseInt(resultlist1.get(i)[1].toString());
				result.add(temp);
			}
			for (resultset temp : result) {
				List<Object[]> resultlist2 = info.queryforevaluation(temp.school);
				List<Object[]> resultlist3 = info.queryforschoolinfobyname(temp.school);
				if (resultlist2.size() != 0) {
					temp.comprehensive = Double
							.parseDouble(resultlist2.get(0)[1].toString());
					temp.atmosphere = Double.parseDouble(resultlist2.get(0)[2]
							.toString());
					temp.environment = Double.parseDouble(resultlist2.get(0)[3]
							.toString());
					temp.prospect = Double.parseDouble(resultlist2.get(0)[4]
							.toString());
					sumeval0 += temp.comprehensive;
					sumeval1 += temp.atmosphere;
					sumeval2 += temp.environment;
					sumeval3 += temp.prospect;
					sumeval4 += temp.basescore;
				}
				if(resultlist3.size() != 0){
					Object[] row = resultlist3.get(0);
					if(row != null){
						temp.province = row[1].toString();
						temp.belongto = row[2].toString();
						temp.type = row[3].toString();
						temp.tags = row[4].toString();
						temp.toppicurl = row[5].toString();
						temp.location = row[6].toString();
						temp.numoftop = row[7].toString();
						temp.numofmaster = row[8].toString();
						temp.numofphd = row[9].toString();
					}
				}
			}
			for (resultset temp : result) {
				java.text.DecimalFormat df = new java.text.DecimalFormat(
						"#.0000");
				temp.prefscore = Double.parseDouble(df.format(((vpref0
						* (temp.comprehensive / sumeval0) + vpref1
						* (temp.atmosphere / sumeval1) + vpref2
						* (temp.environment / sumeval2) + vpref3
						* (temp.prospect / sumeval3))) * 0.8 + (temp.basescore) / sumeval4 * 0.2));
			}
			Collections.sort(result);
			return "success";
		} catch (Exception ex) {
			return "error";
		}
	}
}
