import java.io.*;
import java.net.*;

public class Client {
	private static String host;
	private static int port;
	private static BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

	public static void main(String[] args) {
		try {
			System.out.print("Enter host address: ");
			host = reader.readLine();
			System.out.print("Enter port number: ");
			port = Integer.parseInt(reader.readLine());

			Socket client = new Socket(host, port);
			System.out.println("Succesfully connected to server.");

			DataInputStream dataReader = new DataInputStream(client.getInputStream());
			DataOutputStream dataWriter = new DataOutputStream(client.getOutputStream());

			String sendMsg = "";
			String recvMsg = "";
			while(!sendMsg.equalsIgnoreCase("bye")) {
				
				System.out.print("enter your msg: ");
				sendMsg = reader.readLine();
				dataWriter.writeUTF(sendMsg);
				dataWriter.flush();

				recvMsg = dataReader.readUTF();
				System.out.println("Server says: " + recvMsg);
			}

			dataReader.close();
			client.close();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
