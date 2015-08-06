package temp;

public class Member {
	private String name;
	private int kor;
	private int eng;
	private int math;
	
	public Member(String name, int kor, int eng, int math){
		this.name = name;
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}

	public String getName() {
		return name;
	}

	public int getKor() {
		return kor;
	}

	public int getEng() {
		return eng;
	}

	public int getMath() {
		return math;
	}
	
	public int total(){
		return this.kor + this.eng + this.math;
	}
	public double avg(){
		return total() / 3.0;
	}
	public String grade(){
		String msg = null;
		if(avg() >= 90){
			msg = "A";
		} else if(avg() >= 80){
			msg = "B";
		} else if(avg() >= 70){
			msg = "C";
		} else if(avg() >= 60){
			msg = "D";
		} else{
			msg = "F";
		}
		return msg;
	}
}
