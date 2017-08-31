package common;

public class Question {
	private int index;
	private boolean answer;
	public Question(){
	}
	public Question(int index, boolean answer) {
		super();
		this.index = index;
		this.answer = answer;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public boolean getAnswer() {
		return answer;
	}
	public void setAnswer(boolean answer) {
		this.answer = answer;
	}
}
