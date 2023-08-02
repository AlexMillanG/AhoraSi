package mx.edu.utez.integradora.controllers.Stories;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mx.edu.utez.integradora.models.stories.Stories;
import mx.edu.utez.integradora.models.user.Status;

import java.io.IOException;

@WebServlet(name = "story",urlPatterns ={
        "/api/auth",
        "/api/story/save"


        })

public class ServletStories extends HttpServlet {
    String action, redirect ="/api/auth";
    Stories story;
    HttpSession session;
    String id, title, content, created_atDATETIME,file, status, user, categories;

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
        switch (action){
            case "/api/story/save":
                try {
                    title = req.getParameter("title");
                    content = req.getParameter("content");
                    created_atDATETIME = req.getParameter("created_atDATETIME");
                    file = req.getParameter("file"); //dudo que esto vaya a ser así
                    user = req.getParameter("user");
                    categories = req.getParameter("categories");


                    Status status1 = new Status();
                    status = "3";//publicado
                    status1.setType_status(status);


                    /*
                     * id 1
                     * tittle 1
                     * content 1
                     * created_atDATETIME 1
                     * file 0
                     * status 1
                     * user
                     * category
                     * */
                }catch (Exception e){

                }
                break;


        }
    }
}




