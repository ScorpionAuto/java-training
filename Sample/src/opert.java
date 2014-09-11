
public class opert {
	
	int a,b,res;
 
	public opert(){ 
		a=6;
		b=3;
	}
 
	private void add() {
		res=a+b;
		System.out.println("addition is:"+ res);
	}

	private void sub() {
		res=a-b;
		System.out.println("Subtraction is:"+ res);
	}
	
	private void div() {
		res=a/b;
		System.out.println("Division is:"+ res);
	}
	
	private void mul() {
		System.out.println("Multiplication  is:"+(a*b));
	}
	
	public static void main(String[] args) {
		opert op=new opert();
		op.add();
		op.div();
		op.sub();
		op.mul();
	}
}