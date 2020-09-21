package enterpriseapp.mysql.auth.controller;

import enterpriseapp.mysql.auth.dao.EmployeeDao;
import enterpriseapp.mysql.auth.dao.UserDAO;
import enterpriseapp.mysql.auth.dao.UserDAOImpl;
import enterpriseapp.mysql.auth.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        EmployeeDao employeeDao = new EmployeeDao();
         UserDAOImpl userDAO = new UserDAOImpl() {

         };

        String Name = request.getParameter("Name");
        String Email = request.getParameter("Email");
        String Password = request.getParameter("Password");

        User user = new User();
        user.setName(Name);
        user.setEmail(Email);
        user.setPassword(Password);

        String err = "";
        String url = "Error.jsp";


        if (Name.equals("") || Email.equals("") || Password.equals("") ) {
            err += "Please fill the details ";
        } else {


                Pattern pattenObj = Pattern
                        .compile("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
                                + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");
                Matcher matcherObj = pattenObj.matcher(Email);
                if (!matcherObj.matches()) {
                    err += "This is not an valid Email";
                }

        }

        if (err.length() > 0) {
            request.setAttribute("err", err);
        }


            try {

                if (err.length() == 0) {
                    HttpSession session = request.getSession();
                    session.setAttribute("Email",Email);
                    session.setAttribute("Name",Name);
                    Cookie name = new Cookie("Name", Name);
                    response.addCookie(name);
                    name.setMaxAge(60*60);


                    employeeDao.registerEmployee(user);
                    userDAO.login(Email, Password);
                    Cookie loginCookie = new Cookie("Email",Email);
                    //setting cookie to expiry in 30 mins
                    loginCookie.setMaxAge(30*60);
                    response.addCookie(loginCookie);


                    if(name == null){
                        response.sendRedirect("home.jsp");
                    }else{
                        response.sendRedirect("account.jsp");
                    }


                } else {
                    url = "Error.jsp";

                  HttpSession session=request.getSession();
                  session.setAttribute("err",err);

                response.sendRedirect(url);

//                    PrintWriter out = response.getWriter();
//                    out.println(err);

                }

            } catch (Exception e) {
                e.printStackTrace();
                url = "Error.jsp";

//                Cookie error= new Cookie("err", err);
//                response.addCookie(error);
                response.sendRedirect(url);
            }


        }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
