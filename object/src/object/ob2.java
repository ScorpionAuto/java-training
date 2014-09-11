package object;

public class ob2 {

	int res;

	public void add() {

		ob1.x = ob1.x + 1;
		ob1.setValue(ob1.x);

		System.out.println("New Value :: " + ob1.getValue());
	}

	public void Details(Object o) {
		if (o.equals("Test2")) {
			System.out.println("This is Test2 Class");
		} else
			System.out.println("Else");
	}

	public static void main(String[] args) throws CloneNotSupportedException {

		ob2 t = new ob2();
		ob1.setValue(3);

		t.res = ob1.getValue();

		System.out.println("Value is :: " + t.res);

		t.add();

		// new Test1().setObject(t);
		t.Details(new ob2());

		System.out.println(t.getClass());
		ob2 t3 = (ob2) t.clone();

		System.out.println(" " + t3.getClass());
	}

}
