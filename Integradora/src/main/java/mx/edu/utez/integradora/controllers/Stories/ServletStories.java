package mx.edu.utez.integradora.controllers.Stories;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mx.edu.utez.integradora.models.stories.Stories;

import java.io.IOException;

@WebServlet(name = "story",urlPatterns ={
        "/api/auth1",

})

public class ServletStories extends HttpServlet {
    String action, redirect ="/api/auth1";
    Stories story;
    HttpSession session;
    String id, title, content, created_atDATETIME,file, status_id, user_id, category_id;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        action=req.getServletPath();
        switch (action){

        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        action = req.getServletPath();
        System.out.println("post");
    }
}




