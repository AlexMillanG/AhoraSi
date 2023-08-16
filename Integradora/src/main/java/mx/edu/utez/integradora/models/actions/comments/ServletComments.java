package mx.edu.utez.integradora.models.actions.comments;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.integradora.models.stories.Stories;
import mx.edu.utez.integradora.models.user.User;

import java.io.IOException;

@WebServlet(name = "comment", urlPatterns = {
        "/api/user/save-comment"
}
)
public class ServletComments extends HttpServlet {
    String action, redirect;
    String id,content, story_id;
    Stories story;
    User user;
    Comments comment;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        action=req.getServletPath();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        action = req.getServletPath();
        switch (action){
            case "/api/user/save-comment":
                content = req.getParameter("content");
                
                break;
        }
    }
}
