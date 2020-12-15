package bean;

import java.sql.Connection;
import java.sql.DriverManager;

public class Application {
   // db연결을 하기 위한 full source.
   Connection conn;
   
   public Application() {
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         conn = DriverManager.getConnection(
               "jdbc:oracle:thin:@localhost:1521:XE", 
               "sys as sysdba", "0523"
               );
         
      } catch (Exception ex) {
         ex.printStackTrace();
      }
   }
   
   public Connection getConn() {
      return conn;
   }
}