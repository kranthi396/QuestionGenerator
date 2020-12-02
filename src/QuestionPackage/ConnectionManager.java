package QuestionPackage;
import java.sql.*;
import java.util.*;

public class ConnectionManager {
	static Connection con;
	static String url;

	public static Connection getConnection() {

		try {
			String url = "jdbc:derby:C:/Users/DELL/MyDB";
			Class.forName("org.apache.derby.jdbc.EmbeddedDriver");

			try {
				con = DriverManager.getConnection(url, "kranthi", "admin");

			}

			catch (SQLException ex) {
				ex.printStackTrace();
			}
		}

		catch (ClassNotFoundException e) {
			System.out.println(e);
		}

		return con;
	}

}
