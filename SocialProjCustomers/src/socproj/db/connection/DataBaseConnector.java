package socproj.db.connection;
import java.sql.*;

public class DataBaseConnector {
	   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	   static final String DB_URL = "jdbc:mysql://localhost/SocialProj";
   	   static final String USER = "giorgtarkha";
	   static final String PASS = "kuku12345";
	
	
	    Connection establishConnection() throws SQLException{
	    	Connection conn = null;
	    	
	    	
	    	System.out.println("Connecting to database...");
		    conn = DriverManager.getConnection(DB_URL,USER,PASS);
		    conn.setAutoCommit(false);
	    	
	    	
	    	return conn;
	    }
	
}
