package controller;

import java.io.IOException;

import dao.ComplaintDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import model.Complaint;
import model.User;

@WebServlet("/complaint")
public class ComplaintServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("login.jsp");
            return;
        }

        Complaint complaint = new Complaint();

        complaint.setUserId(user.getId());
        complaint.setTitle(request.getParameter("title"));
        complaint.setDescription(request.getParameter("description"));

        ComplaintDAO dao = new ComplaintDAO();

        if (dao.addComplaint(complaint)) {
            response.sendRedirect("dashboard.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}