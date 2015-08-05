package dto;

public class J07_People {
	private String name;
	private int age;
	
	public J07_People(){}
	public J07_People(String name, int age){
		this.name = name;
		this.age = age;
	}
	
	public String getName() {
		return name;
	}
	public int getAge() {
		return age;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	public String getAc(){
		String ac = null;
		
		if(age <= 19){
			ac = name + " 은/는 청소년 할인 대상입니다.";
		} else{
			ac = name + " 은/는 청소년 할인 대상이 아닙니다.";
		}
		return ac;
	}
}
