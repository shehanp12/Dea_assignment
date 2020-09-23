package enterpriseapp.mysql.auth.controller;

import enterpriseapp.mysql.auth.dao.UserDAOImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")
public class LoginServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAOImpl userDAO = new UserDAOImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String Email = request.getParameter("Email");
        String Password = request.getParameter("Password");


        String err = "";
        if (Email.equals("") || Password.equals("")) {
            err += "Please enter details";
        } else {
            if (userDAO.login(Email, Password) == false) {
                err += "Details are wrong!";
            }
        }

        if (err.length() > 0) {
            request.setAttribute("err", err);
        }

    String    url = "/Error.jsp";
        try {
            if (err.length() == 0) {
                HttpSession session = request.getSession();
                session.setAttribute("Email", Email);

                userDAO.login(Email,Password);
                Cookie loginCookie = new Cookie("Email",Email);
                Cookie name= new Cookie("Name", Email);
                //setting cookie to expiry in 30 mins
                loginCookie.setMaxAge(30*60);
                response.addCookie(loginCookie);
                response.addCookie(name);
                response.sendRedirect("account.jsp");
//               url = "/index.jsp";
            } else {
               url = "/Error.jsp";
            RequestDispatcher rd = getServletContext()
                       .getRequestDispatcher("/Error.jsp");
             rd.forward(request, response);
            }

        } catch (Exception e) {
            e.printStackTrace();
       response.sendRedirect("/Error.jsp");
        }
    }



    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
