package enterpriseapp.mysql.auth.dao;

import enterpriseapp.mysql.auth.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmployeeDao {

    public int registerEmployee(User user) throws  ClassNotFoundException{

        String INSERT_USERS_SQL="INSERT INTO user " +
                "(name,email,pasword) VALUES (?,?,?)";

        int result=0;

        Class.forName("com.mysql.jdbc.Driver");

        try (
                Connection connection =
                        DriverManager.getConnection("jdbc:mysql://localhost:3306/enterpriseapp","root","root");
                PreparedStatement preparedStatement =connection.prepareStatement(INSERT_USERS_SQL)) {

            preparedStatement.setString(1,user.getName());
            preparedStatement.setString(2,user.getEmail());
            preparedStatement.setString(3,user.getPassword());

            System.out.println(preparedStatement);

            result =preparedStatement.executeUpdate();

        }

        catch (SQLException throwable) {
            throwable.printStackTrace();
        }

        return  result;

    }



}
