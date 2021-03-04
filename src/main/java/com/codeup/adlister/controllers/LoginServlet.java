package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/users/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        session.setAttribute("userNameDoesNotExist", false);
        session.setAttribute("incorrectPassword", false);
        User user = DaoFactory.getUsersDao().findByUsername(username);

        if (user == null) {
            session.setAttribute("userNameDoesNotExist", true);
            response.sendRedirect("/login");
            return;
        }

        boolean validAttempt = Password.check(password, user.getPassword());

        if (validAttempt) {
            session.setAttribute("user", user);
            boolean isAdmin = DaoFactory.getUsersDao().isAdmin(user.getId());
            session.setAttribute("isAdmin", isAdmin);
            session.setAttribute("isLoggedIn", true);
            response.sendRedirect("/profile");
        } else {
            session.setAttribute("incorrectPassword", true);
            response.sendRedirect("/login");
        }
    }
}
