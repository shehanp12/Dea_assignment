package enterpriseapp.mysql.auth.controller;

import enterpriseapp.mysql.auth.dao.EmployeeDao;
import enterpriseapp.mysql.auth.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        EmployeeDao employeeDao = new EmployeeDao();

        String Name = request.getParameter("Name");
        String Email = request.getParameter("Email");
        String Password = request.getParameter("Password");

        User user = new User();
        user.setName(Name);
        user.setEmail(Email);
        user.setPassword(Password);


            try {
                employeeDao.registerEmployee(user);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

        response.sendRedirect("signin.jsp");

        }





    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
