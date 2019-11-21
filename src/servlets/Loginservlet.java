package servlets;

import db.DbConnection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.xml.validation.Validator;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet")
public class Loginservlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String Username = request.getParameter("Username");
        String Password = request.getParameter("Password");
        DbConnection dbConnection=new DbConnection();
        int count=dbConnection.loginauthen(Username,Password);
        if (count>0){


            HttpSession session = request.getSession();
            session.setAttribute("Username",Username);
            session.setMaxInactiveInterval(30*60);


            /*Cookie loginCookie = new Cookie("Username",username);
            loginCookie.setMaxAge(30*60);
            response.addCookie(loginCookie);*/
            response.sendRedirect("jobss.jsp");




        }else {
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
            PrintWriter out = response.getWriter();
            out.write("<p style='color:red;'>Invalid Username or Password</p>");
            rd.include(request,response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
