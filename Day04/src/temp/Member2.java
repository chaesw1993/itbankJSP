package temp;

public class Member2 {
	private String id;
	private int kor;
	private int eng;
	private int math;
	
	
	public Member2(){}
	
	
	public String getId() {
		return id;
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

	public void setId(String id) {
		this.id = id;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public void setEng(int eng) {
		this.eng = eng;
	}

	public void setMath(int math) {
		this.math = math;
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
