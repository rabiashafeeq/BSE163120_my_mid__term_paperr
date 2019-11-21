package db;

import java.sql.*;


public class DbConnection {
    private String dbURL = "jdbc:mysql://localhost:3306/job";
    private String username = "root";
    private String password = "";
    private Connection connection;

    public DbConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(dbURL, username, password);

            if (connection != null) {
                System.out.println("Success");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void insertData(String Username, String Password) {
        try {
            String sqlQuery = "INSERT INTO Userlogin(Username,Password) VALUES(?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, Username);
            preparedStatement.setString(2, Password);


            int noOfRowsInserted = preparedStatement.executeUpdate();
            if (noOfRowsInserted > 0) {
                System.out.println(noOfRowsInserted + " rows inserted!");
            } else {
                System.out.println("hii");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void insertData(String jobtitle,String jobdescription, String jobtype,String jobcity) {
        try {
            String sqlQuery = "INSERT INTO job(jobtitle,jobdescription,jobtype,jobcity) VALUES(?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);
            preparedStatement.setString(1, jobtitle);
            preparedStatement.setString(2, jobdescription);
            preparedStatement.setString(3, jobtype);
            preparedStatement.setString(4, jobcity);


            int noOfRowsInserted = preparedStatement.executeUpdate();
            if (noOfRowsInserted > 0) {
                System.out.println(noOfRowsInserted + " rows inserted!");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void displayRecords() {
        try {
            String sqlQuery = "SELECT * FROM userlogin";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sqlQuery);
            while (result.next()) {

                System.out.println("Username is " + result.getString("User_name"));

                System.out.println("Password is " + result.getString("Password"));

            }


        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            String sqlQuery = "SELECT * FROM tweets";
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sqlQuery);
            while (result.next()) {

                System.out.println("tweets is " + result.getString("twee_ts"));


            }


        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public int loginauthen(String username, String Pass) {
        try {
            String sqlQuery = "select id,Username from Userlogin where Username=? and Password=?";
            PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);

            preparedStatement.setString(1, username);
            preparedStatement.setString(2, Pass);
            ResultSet result = preparedStatement.executeQuery();
            int count = 0;

            while (result.next()) {
                count = result.getInt(1);
            }
            if (count > 0) {
                return 1;
            } else {
                return 0;
            }

        } catch (SQLException e) {
            System.out.println("exception occuredd");
            e.printStackTrace();
        }
        return 0;
    }

    public ResultSet displaytweets() {
        ResultSet result = null;
        try {
            String sqlQuery = "SELECT * FROM `job` ORDER BY `job`.`Time` DESC ";
            Statement statement=connection.createStatement();
            result=statement.executeQuery(sqlQuery);
            return result;
        }
        catch(SQLException e){
            e.printStackTrace();
            return result;
        }
    }

}



