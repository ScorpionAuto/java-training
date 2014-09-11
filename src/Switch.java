
public class Switch {

	String s;
	
	private void add() {
		// TODO Auto-generated method stub

	}
	
	public static void main(String[] args) {
		
		Switch sw= new Switch();
		
		int i=5;
		sw.s="asas";
		switch(sw.s)
		{
		case "one": System.out.println("Case 1");
				sw.add();
				break;
		case "two ": System.out.println("case 2");
				break;
				
		default : System.out.println("This is default case");
		}
	}
}
