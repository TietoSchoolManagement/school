import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

class OracleConnection{
	Connection con=null;
	
	public Connection connect() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		try {
			 con = DriverManager.getConnection("jdbc:oracle:thin:school_mng/akash@//localhost:1521/ORCLPDB1.localdomain");
			//	System.out.println("Connection open!!");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}
		return con;
	}
}


public class DatabaseConnection {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
