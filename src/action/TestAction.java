package action;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import common.Type;
import common.Question;
import dao.testdao;
@SuppressWarnings("serial")
public class TestAction extends ActionSupport{
	private String ans1;
	private String ans2;
	private String ans3;
	private String ans4;
	private String ans5;
	private String ans6;
	private String ans7;
	private String ans8;
	private String ans9;
	private String ans10;
	private String ans11;
	private String ans12;
	private String ans13;
	private String ans14;
	private String ans15;
	private String ans16;
	private String ans17;
	private String ans18;
	private String ans19;
	private String ans20;
	private String ans21;
	private String ans22;
	private String ans23;
	private String ans24;
	private String ans25;
	private String ans26;
	private String ans27;
	private String ans28;
	private String ans29;
	private String ans30;
	private String ans31;
	private String ans32;
	private String ans33;
	private String ans34;
	private String ans35;
	private String ans36;
	private String ans37;
	private String ans38;
	private String ans39;
	private String ans40;
	private String ans41;
	private String ans42;
	private String ans43;
	private String ans44;
	private String ans45;
	private String ans46;
	private String ans47;
	private String ans48;
	private String ans49;
	private String ans50;
	private String ans51;
	private String ans52;
	private String ans53;
	private String ans54;
	private String ans55;
	private String ans56;
	private String ans57;
	private String ans58;
	private String ans59;
	private String ans60;
	private Type typeA = new Type("A", "艺术型", 0);
	private Type typeC = new Type("C", "常规型", 0);
	private Type typeE = new Type("E", "企业型", 0);
	private Type typeI = new Type("I", "研究型", 0);
	private Type typeR = new Type("R", "现实型", 0);
	private Type typeS = new Type("S", "社会型", 0);
	ArrayList<Type> resultlist = new ArrayList<Type>();
	ArrayList<Question> questionlist = new ArrayList<Question>();
	private String testscore;//记录得分情况
	private String suitablejob;//记录适合的工作
	private String composedtype;//记录霍兰德代码
	private String[] catedescription = new String[3];//记录得分最高的三种类型的类型分析
	public String getTestscore() {
		return testscore;
	}
	public void setTestscore(String testscore) {
		this.testscore = testscore;
	}
	public String getComposedtype() {
		return composedtype;
	}
	public void setComposedtype(String composedtype) {
		this.composedtype = composedtype;
	}
	public String getSuitablejob() {
		return suitablejob;
	}
	public void setSuitablejob(String suitablejob) {
		this.suitablejob = suitablejob;
	}
	public String[] getCatedescription() {
		return catedescription;
	}
	public void setCatedescription(String[] catedescription) {
		this.catedescription = catedescription;
	}
	public String getAns1() {
		return ans1;
	}
	public void setAns1(String ans1) {
		this.ans1 = ans1;
	}
	public String getAns2() {
		return ans2;
	}
	public void setAns2(String ans2) {
		this.ans2 = ans2;
	}
	public String getAns3() {
		return ans3;
	}
	public void setAns3(String ans3) {
		this.ans3 = ans3;
	}
	public String getAns4() {
		return ans4;
	}
	public void setAns4(String ans4) {
		this.ans4 = ans4;
	}
	public String getAns5() {
		return ans5;
	}
	public void setAns5(String ans5) {
		this.ans5 = ans5;
	}
	public String getAns6() {
		return ans6;
	}
	public void setAns6(String ans6) {
		this.ans6 = ans6;
	}
	public String getAns7() {
		return ans7;
	}
	public void setAns7(String ans7) {
		this.ans7 = ans7;
	}
	public String getAns8() {
		return ans8;
	}
	public void setAns8(String ans8) {
		this.ans8 = ans8;
	}
	public String getAns9() {
		return ans9;
	}
	public void setAns9(String ans9) {
		this.ans9 = ans9;
	}
	public String getAns10() {
		return ans10;
	}
	public void setAns10(String ans10) {
		this.ans10 = ans10;
	}
	public String getAns11() {
		return ans11;
	}
	public void setAns11(String ans11) {
		this.ans11 = ans11;
	}
	public String getAns12() {
		return ans12;
	}
	public void setAns12(String ans12) {
		this.ans12 = ans12;
	}
	public String getAns13() {
		return ans13;
	}
	public void setAns13(String ans13) {
		this.ans13 = ans13;
	}
	public String getAns14() {
		return ans14;
	}
	public void setAns14(String ans14) {
		this.ans14 = ans14;
	}
	public String getAns15() {
		return ans15;
	}
	public void setAns15(String ans15) {
		this.ans15 = ans15;
	}
	public String getAns16() {
		return ans16;
	}
	public void setAns16(String ans16) {
		this.ans16 = ans16;
	}
	public String getAns17() {
		return ans17;
	}
	public void setAns17(String ans17) {
		this.ans17 = ans17;
	}
	public String getAns18() {
		return ans18;
	}
	public void setAns18(String ans18) {
		this.ans18 = ans18;
	}
	public String getAns19() {
		return ans19;
	}
	public void setAns19(String ans19) {
		this.ans19 = ans19;
	}
	public String getAns20() {
		return ans20;
	}
	public void setAns20(String ans20) {
		this.ans20 = ans20;
	}
	public String getAns21() {
		return ans21;
	}
	public void setAns21(String ans21) {
		this.ans21 = ans21;
	}
	public String getAns22() {
		return ans22;
	}
	public void setAns22(String ans22) {
		this.ans22 = ans22;
	}
	public String getAns23() {
		return ans23;
	}
	public void setAns23(String ans23) {
		this.ans23 = ans23;
	}
	public String getAns24() {
		return ans24;
	}
	public void setAns24(String ans24) {
		this.ans24 = ans24;
	}
	public String getAns25() {
		return ans25;
	}
	public void setAns25(String ans25) {
		this.ans25 = ans25;
	}
	public String getAns26() {
		return ans26;
	}
	public void setAns26(String ans26) {
		this.ans26 = ans26;
	}
	public String getAns27() {
		return ans27;
	}
	public void setAns27(String ans27) {
		this.ans27 = ans27;
	}
	public String getAns28() {
		return ans28;
	}
	public void setAns28(String ans28) {
		this.ans28 = ans28;
	}
	public String getAns29() {
		return ans29;
	}
	public void setAns29(String ans29) {
		this.ans29 = ans29;
	}
	public String getAns30() {
		return ans30;
	}
	public void setAns30(String ans30) {
		this.ans30 = ans30;
	}
	public String getAns31() {
		return ans31;
	}
	public void setAns31(String ans31) {
		this.ans31 = ans31;
	}
	public String getAns32() {
		return ans32;
	}
	public void setAns32(String ans32) {
		this.ans32 = ans32;
	}
	public String getAns33() {
		return ans33;
	}
	public void setAns33(String ans33) {
		this.ans33 = ans33;
	}
	public String getAns34() {
		return ans34;
	}
	public void setAns34(String ans34) {
		this.ans34 = ans34;
	}
	public String getAns35() {
		return ans35;
	}
	public void setAns35(String ans35) {
		this.ans35 = ans35;
	}
	public String getAns36() {
		return ans36;
	}
	public void setAns36(String ans36) {
		this.ans36 = ans36;
	}
	public String getAns37() {
		return ans37;
	}
	public void setAns37(String ans37) {
		this.ans37 = ans37;
	}
	public String getAns38() {
		return ans38;
	}
	public void setAns38(String ans38) {
		this.ans38 = ans38;
	}
	public String getAns39() {
		return ans39;
	}
	public void setAns39(String ans39) {
		this.ans39 = ans39;
	}
	public String getAns40() {
		return ans40;
	}
	public void setAns40(String ans40) {
		this.ans40 = ans40;
	}
	public String getAns41() {
		return ans41;
	}
	public void setAns41(String ans41) {
		this.ans41 = ans41;
	}
	public String getAns42() {
		return ans42;
	}
	public void setAns42(String ans42) {
		this.ans42 = ans42;
	}
	public String getAns43() {
		return ans43;
	}
	public void setAns43(String ans43) {
		this.ans43 = ans43;
	}
	public String getAns44() {
		return ans44;
	}
	public void setAns44(String ans44) {
		this.ans44 = ans44;
	}
	public String getAns45() {
		return ans45;
	}
	public void setAns45(String ans45) {
		this.ans45 = ans45;
	}
	public String getAns46() {
		return ans46;
	}
	public void setAns46(String ans46) {
		this.ans46 = ans46;
	}
	public String getAns47() {
		return ans47;
	}
	public void setAns47(String ans47) {
		this.ans47 = ans47;
	}
	public String getAns48() {
		return ans48;
	}
	public void setAns48(String ans48) {
		this.ans48 = ans48;
	}
	public String getAns49() {
		return ans49;
	}
	public void setAns49(String ans49) {
		this.ans49 = ans49;
	}
	public String getAns50() {
		return ans50;
	}
	public void setAns50(String ans50) {
		this.ans50 = ans50;
	}
	public String getAns51() {
		return ans51;
	}
	public void setAns51(String ans51) {
		this.ans51 = ans51;
	}
	public String getAns52() {
		return ans52;
	}
	public void setAns52(String ans52) {
		this.ans52 = ans52;
	}
	public String getAns53() {
		return ans53;
	}
	public void setAns53(String ans53) {
		this.ans53 = ans53;
	}
	public String getAns54() {
		return ans54;
	}
	public void setAns54(String ans54) {
		this.ans54 = ans54;
	}
	public String getAns55() {
		return ans55;
	}
	public void setAns55(String ans55) {
		this.ans55 = ans55;
	}
	public String getAns56() {
		return ans56;
	}
	public void setAns56(String ans56) {
		this.ans56 = ans56;
	}
	public String getAns57() {
		return ans57;
	}
	public void setAns57(String ans57) {
		this.ans57 = ans57;
	}
	public String getAns58() {
		return ans58;
	}
	public void setAns58(String ans58) {
		this.ans58 = ans58;
	}
	public String getAns59() {
		return ans59;
	}
	public void setAns59(String ans59) {
		this.ans59 = ans59;
	}
	public String getAns60() {
		return ans60;
	}
	public void setAns60(String ans60) {
		this.ans60 = ans60;
	}
	boolean ansstrToboolean(String strans){
		if(strans.equals("1"))
			return true;
		else
			return false;
	}
	
	public Type getTypeA() {
		return typeA;
	}
	public void setTypeA(Type typeA) {
		this.typeA = typeA;
	}
	public Type getTypeC() {
		return typeC;
	}
	public void setTypeC(Type typeC) {
		this.typeC = typeC;
	}
	public Type getTypeE() {
		return typeE;
	}
	public void setTypeE(Type typeE) {
		this.typeE = typeE;
	}
	public Type getTypeI() {
		return typeI;
	}
	public void setTypeI(Type typeI) {
		this.typeI = typeI;
	}
	public Type getTypeR() {
		return typeR;
	}
	public void setTypeR(Type typeR) {
		this.typeR = typeR;
	}
	public Type getTypeS() {
		return typeS;
	}
	public void setTypeS(Type typeS) {
		this.typeS = typeS;
	}
	public void init(){
		boolean[] answerlist = new boolean[60];
		answerlist[0] = ansstrToboolean(ans1);
		answerlist[1] = ansstrToboolean(ans2);
		answerlist[2] = ansstrToboolean(ans3);
		answerlist[3] = ansstrToboolean(ans4);
		answerlist[4] = ansstrToboolean(ans5);
		answerlist[5] = ansstrToboolean(ans6);
		answerlist[6] = ansstrToboolean(ans7);
		answerlist[7] = ansstrToboolean(ans8);
		answerlist[8] = ansstrToboolean(ans9);
		answerlist[9] = ansstrToboolean(ans10);
		answerlist[10] = ansstrToboolean(ans11);
		answerlist[11] = ansstrToboolean(ans12);
		answerlist[12] = ansstrToboolean(ans13);
		answerlist[13] = ansstrToboolean(ans14);
		answerlist[14] = ansstrToboolean(ans15);
		answerlist[15] = ansstrToboolean(ans16);
		answerlist[16] = ansstrToboolean(ans17);
		answerlist[17] = ansstrToboolean(ans18);
		answerlist[18] = ansstrToboolean(ans19);
		answerlist[19] = ansstrToboolean(ans20);
		answerlist[20] = ansstrToboolean(ans21);
		answerlist[21] = ansstrToboolean(ans22);
		answerlist[22] = ansstrToboolean(ans23);
		answerlist[23] = ansstrToboolean(ans24);
		answerlist[24] = ansstrToboolean(ans25);
		answerlist[25] = ansstrToboolean(ans26);
		answerlist[26] = ansstrToboolean(ans27);
		answerlist[27] = ansstrToboolean(ans28);
		answerlist[28] = ansstrToboolean(ans29);
		answerlist[29] = ansstrToboolean(ans30);
		answerlist[30] = ansstrToboolean(ans31);
		answerlist[31] = ansstrToboolean(ans32);
		answerlist[32] = ansstrToboolean(ans33);
		answerlist[33] = ansstrToboolean(ans34);
		answerlist[34] = ansstrToboolean(ans35);
		answerlist[35] = ansstrToboolean(ans36);
		answerlist[36] = ansstrToboolean(ans37);
		answerlist[37] = ansstrToboolean(ans38);
		answerlist[38] = ansstrToboolean(ans39);
		answerlist[39] = ansstrToboolean(ans40);
		answerlist[40] = ansstrToboolean(ans41);
		answerlist[41] = ansstrToboolean(ans42);
		answerlist[42] = ansstrToboolean(ans43);
		answerlist[43] = ansstrToboolean(ans44);
		answerlist[44] = ansstrToboolean(ans45);
		answerlist[45] = ansstrToboolean(ans46);
		answerlist[46] = ansstrToboolean(ans47);
		answerlist[47] = ansstrToboolean(ans48);
		answerlist[48] = ansstrToboolean(ans49);
		answerlist[49] = ansstrToboolean(ans50);
		answerlist[50] = ansstrToboolean(ans51);
		answerlist[51] = ansstrToboolean(ans52);
		answerlist[52] = ansstrToboolean(ans53);
		answerlist[53] = ansstrToboolean(ans54);
		answerlist[54] = ansstrToboolean(ans55);
		answerlist[55] = ansstrToboolean(ans56);
		answerlist[56] = ansstrToboolean(ans57);
		answerlist[57] = ansstrToboolean(ans58);
		answerlist[58] = ansstrToboolean(ans59);
		answerlist[59] = ansstrToboolean(ans60);
		for(int i = 0; i < 60; i++){
			Question temp = new Question();
			temp.setIndex(i + 1);
			temp.setAnswer(answerlist[i]);
			questionlist.add(temp);
		}
	}
	void computeScore() {
		for (Question q : questionlist) {
			switch (q.getIndex()) {
			case 7:
			case 19:
			case 29:
			case 39:
			case 41:
			case 51:
			case 57:
				if (q.getAnswer() == true)
					typeC.setTypevalue(typeC.getTypevalue() + 10);
				break;
			case 5:
			case 18:
			case 40:
				if (q.getAnswer() == false)
					typeC.setTypevalue(typeC.getTypevalue() + 10);
				break;
			case 2:
			case 13:
			case 22:
			case 36:
			case 43:
				if (q.getAnswer() == true)
					typeR.setTypevalue(typeR.getTypevalue() + 10);
				break;
			case 14:
			case 23:
			case 44:
			case 47:
			case 48:
				if (q.getAnswer() == false)
					typeR.setTypevalue(typeR.getTypevalue() + 10);
				break;
			case 6:
			case 8:
			case 20:
			case 30:
			case 31:
			case 42:
				if (q.getAnswer() == true)
					typeI.setTypevalue(typeI.getTypevalue() + 10);
				break;
			case 21:
			case 55:
			case 56:
			case 58:
				if (q.getAnswer() == false)
					typeI.setTypevalue(typeI.getTypevalue() + 10);
				break;
			case 11:
			case 24:
			case 28:
			case 35:
			case 38:
			case 46:
			case 60:
				if (q.getAnswer() == true)
					typeE.setTypevalue(typeE.getTypevalue() + 10);
				break;
			case 3:
			case 16:
			case 25:
				if (q.getAnswer() == false)
					typeE.setTypevalue(typeE.getTypevalue() + 10);
				break;
			case 26:
			case 37:
			case 52:
			case 59:
				if (q.getAnswer() == true)
					typeS.setTypevalue(typeS.getTypevalue() + 10);
				break;
			case 1:
			case 12:
			case 15:
			case 27:
			case 45:
			case 53:
				if (q.getAnswer() == false)
					typeS.setTypevalue(typeS.getTypevalue() + 10);
				break;
			case 4:
			case 9:
			case 10:
			case 17:
			case 33:
			case 34:
			case 49:
			case 50:
			case 54:
				if (q.getAnswer() == true)
					typeA.setTypevalue(typeA.getTypevalue() + 10);
				break;
			case 32:
				if (q.getAnswer() == false)
					typeA.setTypevalue(typeA.getTypevalue() + 10);
				break;
			}
		}
	}
	void analyse(){
		System.out.println("start analyse......");
		resultlist.add(typeA);
		resultlist.add(typeC);
		resultlist.add(typeE);
		resultlist.add(typeI);
		resultlist.add(typeR);
		resultlist.add(typeS);
		Collections.sort(resultlist,Collections.reverseOrder());
		composedtype = resultlist.get(0).getTypeName() + resultlist.get(1).getTypeName() + resultlist.get(2).getTypeName();
		testdao info = new testdao();
		System.out.println("before retrieve data......");
		List<String> rstlist = info.queryforjob(composedtype);
		if(rstlist.isEmpty()){
			composedtype = resultlist.get(0).getTypeName();
			rstlist = info.queryforjob(composedtype);
			suitablejob = rstlist.get(0);
		}
		else
			suitablejob = rstlist.get(0);
		for(int i = 0; i < 3; i++){
			List<String> rstlist1 = info.queryforcategory(resultlist.get(i).getTypeName());
			catedescription[i] = resultlist.get(i).getTypeName() + "(" + resultlist.get(i).getTypedescription() + "):" + rstlist1.get(0).replace("\\n", "\n");
		}
		testscore = "A(艺术型)：" + typeA.getTypevalue() + "\n"
				+ "C(常规型)：" + typeC.getTypevalue() + "\n"
				+ "R(现实型)：" + typeR.getTypevalue() + "\n"
				+ "I(研究型)：" + typeI.getTypevalue() + "\n"
				+ "E(企业型)：" + typeE.getTypevalue() + "\n"
				+ "S(社会型)：" + typeS.getTypevalue() + "\n";
	}
	public String execute() throws Exception{
		init();
		computeScore();
		analyse();
		System.out.print("您的得分分别为：\n"
				+ "A(艺术型)：" + typeA.getTypevalue() + "\n"
				+ "C(常规型)：" + typeC.getTypevalue() + "\n"
				+ "R(现实型)：" + typeR.getTypevalue() + "\n"
				+ "I(研究型)：" + typeI.getTypevalue() + "\n"
				+ "E(企业型)：" + typeE.getTypevalue() + "\n"
				+ "S(社会型)：" + typeS.getTypevalue() + "\n");
		System.out.println("您的霍兰德代码：" + composedtype);
		System.out.println("您适合的职业：" + suitablejob);
		System.out.println("您的测试结果分析为：");
		for(int i = 0; i < 3; i++){
			Type temp = resultlist.get(i);
			System.out.println(temp.getTypeName() + "(" + temp.getTypedescription() + ")");
			System.out.println(catedescription[i]);
		}
		return "success";
	}
	
}
