package enterpriseapp.mysql.auth.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public  class UserDAOImpl implements UserDAO{
    public static void main(String[] args) {
        UserDAOImpl dao = new UserDAOImpl();
        // dao.addUser(new User(0, "admin", "12345", "admin", "1"));
//		System.out.println(dao.checkUser("admin"));
//        System.out.println(dao.login("admin", "12345"));
    }



@Override
    public boolean login(String Email, String Password) {
        Connection con = DBConnect.getConnecttion();
    String sql = "select * from user where email='" + Email
            + "' and pasword='" + Password + "'";
        PreparedStatement ps;
        try {
            ps = (PreparedStatement) con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                con.close();
                return true;
            }
        } catch ( SQLException e) {
            e.printStackTrace();
        }
        return false;
    }



}
