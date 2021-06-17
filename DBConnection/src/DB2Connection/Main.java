package DB2Connection;

import java.sql.*;

public class Main {
    public static void main(String[] args) {
        String urlPrefix = "jdbc:db2:";
        String url;
        String user;
        String password;
        String str;
        Connection con;
        Statement stmt;
        ResultSet rs;

        if (args.length != 3) {
            System.err.println("Invalid value. First argument appended to " +
                    "jdbc:db2: must specify a valid URL.");
            System.err.println("Second argument must be a valid user ID.");
            System.err.println("Third argument must be the password for the user ID.");
            System.exit(1);
        }

        url = urlPrefix + args[0];
        user = args[1];
        password = args[2];
        try {
            // Load the driver
            Class.forName("com.ibm.db2.jcc.DB2Driver");
            System.out.println("**** Loaded the JDBC driver");

            // Create the connection using the IBM Data Server Driver for JDBC and SQLJ
            con = DriverManager.getConnection(url, user, password);
            // Commit changes manually
            con.setAutoCommit(false);
            System.out.println("**** Created a JDBC connection to the data source");

            // Create the Statement
            stmt = con.createStatement();
            System.out.println("**** Created JDBC Statement object");

            // Execute a query and generate a ResultSet instance

            rs = getResultSet(stmt, "SELECT * FROM TABLE(FN71913.get_teachers_subjects()) T");

            // Print all subjects and the teacher that teaches this subjects
            while (rs.next()) {
                str = rs.getString(1);
                System.out.print("Teacher name: " + str + " ");
                str = rs.getString(2);
                System.out.println("Teacher subject: " + str);
            }

            System.out.println();

            rs = getResultSet(stmt, "select * from FN71845.ACCESSES");
            System.out.printf("%-20s%-20s%-20s%-20s\n", "GURADIAN", "STUDENT", "CLASS NUMBER", "CLASS LETTER");

            while (rs.next()) {
                //System.out.println("yes");
                System.out.printf("%-20s%-20s%-20s%-20s\n",
                        rs.getString("GUARDIAN"),
                        rs.getString("STUDENT"),
                        rs.getString("CLASS_NUMBER"),
                        rs.getString("CLASS_LETTER"));
            }

            System.out.println("**** Fetched all rows from JDBC ResultSet");
            // Close the ResultSet
            rs.close();
            System.out.println("**** Closed JDBC ResultSet");

            // Close the Statement
            stmt.close();
            System.out.println("**** Closed JDBC Statement");

            // Connection must be on a unit-of-work boundary to allow close
            con.commit();
            System.out.println("**** Transaction committed");

            // Close the connection
            con.close();
            System.out.println("**** Disconnected from data source");

            System.out.println("**** JDBC Exit from class EzJava - no errors");


        } catch (ClassNotFoundException e) {
            System.err.println("Could not load JDBC driver");
            System.out.println("Exception: " + e);
            e.printStackTrace();
        } catch (SQLException ex) {
            System.err.println("SQLException information");
            while (ex != null) {
                System.err.println("Error msg: " + ex.getMessage());
                System.err.println("SQLSTATE: " + ex.getSQLState());
                System.err.println("Error code: " + ex.getErrorCode());
                ex.printStackTrace();
                ex = ex.getNextException(); // For drivers that support chained exceptions
            }
        }


    }  // End main

    private static ResultSet getResultSet(Statement stmt, String query) throws SQLException {
        ResultSet rs;
        rs = stmt.executeQuery(query);
        return rs;
    }
}    // End EzJava
