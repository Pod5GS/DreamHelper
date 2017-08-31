package common;

public class Type implements Comparable<Type>{
	private String typeName;
	private String typedescription;
	private int typevalue;
	public Type(String typeName, String typedescription, int typevalue) {
		super();
		this.typeName = typeName;
		this.typedescription = typedescription;
		this.typevalue = typevalue;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public int getTypevalue() {
		return typevalue;
	}
	public void setTypevalue(int typevalue) {
		this.typevalue = typevalue;
	}
	public String getTypedescription() {
		return typedescription;
	}
	public void setTypedescription(String typedescription) {
		this.typedescription = typedescription;
	}
	public int compareTo(Type t) {
		if(this.typevalue > t.typevalue)
			return 1;
		else
			return -1;
	}
}
