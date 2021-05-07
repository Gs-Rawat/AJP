import java.net.*;
import java.io.*;

public class Server {
    private final static int port = 7000;

    public static void main(String[] args) throws Exception {
        
        ServerSocket server = new ServerSocket(port);
        System.out.println("Server successfully started at " + port + " port number.");
        Socket client = server.accept();

        DataInputStream reader = new DataInputStream(client.getInputStream());
        String msg = reader.readUTF();
        System.out.println("Client says: " + msg);

        server.close();
    }

}
