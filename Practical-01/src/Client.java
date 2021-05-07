import java.net.*;
import java.io.*;

public class Client {
    private final static String host = "localhost";
    private final static int port = 7000;

    public static void main(String[] args) throws Exception {
        Socket client = new Socket(host, port);
        System.out.println("Successfully connnected to the server");

        DataOutputStream writer = new DataOutputStream(client.getOutputStream());
        writer.writeUTF("Hello Server");
        
        writer.flush();
        writer.close();
        client.close();
    }

}
