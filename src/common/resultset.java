package common;
public class resultset implements Comparable<resultset>{
	public String school;
	public int basescore;
	public double prefscore;
	public double comprehensive;
	public double atmosphere;
	public double environment;
	public double prospect;
	public String province;
	public String location;
	public String belongto;
	public String type;
	public String numoftop;
	public String numofmaster;
	public String numofphd;
	public String tags;
	public String toppicurl;
	@Override
	public int compareTo(resultset o) {
		int result;
		if(this.prefscore > o.prefscore)
			result = -1;
		else if(this.prefscore < o.prefscore)
			result = 1;
		else
			result = 0;
		return result;
	}
}
