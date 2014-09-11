public class Student {
	int rollno;
	String subject = "Physics";
	int marks;

	public Student() {
		// Please refer this() function for calling constructors within self
	}

	public void setData(int r, int m) {
		rollno = r;
		marks = m;
	}

	public void setData(int r, int m, String s) {
		rollno = r;
		marks = m;
		subject = s;
	}

	void display() {
		System.out.println(rollno + " " + marks + " " + subject);
	}

	public static void main(String[] args) {
		Student s = new Student();
		
		s.setData(111,70);
		s.display();
		s.setData(222, 86,"Chemistry");
		s.display();
	}
}
