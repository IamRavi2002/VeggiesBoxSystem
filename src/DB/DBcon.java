

package DB;

import java.sql.*;
 


public class DBcon {
    public Connection con;
    public Statement stmt;
    public PreparedStatement pstmt;
    public ResultSet rst;
    public DBcon()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/veggiebox","root","ROOT");
        }
            catch(Exception e)
                    {
                    e.printStackTrace();
                    }
    }
    
}
