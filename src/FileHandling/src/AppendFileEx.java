import java.io.*;
class AppendFileEx {
    public static void main(String[] args) {
        FileWriter out;
        if (args.length != 1) {
            System.out.println("Must specify file on the command line");
            return;
        }
        try {
            out = new FileWriter(args[0], true);
            out.write("Append to endn");
            out.close();
        } catch(IOException e) {
            System.out.println("Error appending to file " + args[0]);
        }
    }
}