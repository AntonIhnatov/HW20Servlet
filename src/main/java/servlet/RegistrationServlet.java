package servlet;

import dto.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "register", value = "/register")
public class RegistrationServlet extends HttpServlet {

    public static List<User> registeredUsers = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/registration.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = User.builder()
                .username(req.getParameter("username"))
                .lastname(req.getParameter("lastName"))
                .email(req.getParameter("email"))
                .password(req.getParameter("password"))
                .build();

        registeredUsers.add(user);

        req.setAttribute("name", user.getUsername());
        req.setAttribute("lastName", user.getLastname());
        req.setAttribute("email", user.getEmail());

        req.getRequestDispatcher("pageUser.jsp").forward(req, resp);
    }
}
