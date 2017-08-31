package action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import common.TestQuestion;
import dao.testdao;

@SuppressWarnings("serial")
public class InittestAction extends ActionSupport{
	private List<TestQuestion> questionlist;

	public List<TestQuestion> getQuestionlist() {
		return questionlist;
	}

	public void setQuestionlist(List<TestQuestion> questionlist) {
		this.questionlist = questionlist;
	}
	
	public String execute(){
		try{
			testdao info = new testdao();
			List<Object[]> list = info.queryforquestion();
			questionlist = new ArrayList<TestQuestion>();
			for(Object[] row : list){
				TestQuestion temp = new TestQuestion();
				temp.index = row[0].toString();
				temp.question = row[1].toString();
				questionlist.add(temp);
			}
			return "success";
		}catch(Exception ex){
			ex.printStackTrace();
			return "error";
		}
	}
}
