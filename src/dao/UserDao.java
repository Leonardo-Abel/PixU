package dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

	//Mensagem
    public static void insertMessage(String Name, String Email, String Message) {

        int r;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Pixu", "sa", "1234567");

            PreparedStatement ps = con.prepareStatement("insert into MessageCli(nameCli,emailCli,msgCli,statusMsg,wpResp,dateMsg) values (?,?,?,?)");
            ps.setString(1, Name);
            ps.setString(2, Email);
            ps.setString(3, Message);
            ps.setInt(4, 0);

            r = ps.executeUpdate();
            if (r >= 1) {
                System.out.println("Stored in database successfully");
            } else {
                System.out.println("Failed to store in database");
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
}
