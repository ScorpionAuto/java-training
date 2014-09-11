import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;


public class Client {

	;
	
	public static void main(String[] args) throws UnknownHostException, IOException {
		
		Socket clientsoc=new Socket("localhost", 6666);
	}
}
