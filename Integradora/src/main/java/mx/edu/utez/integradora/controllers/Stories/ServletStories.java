package mx.edu.utez.integradora.controllers.Stories;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mx.edu.utez.integradora.models.stories.Categories;
import mx.edu.utez.integradora.models.stories.Stories;
import mx.edu.utez.integradora.models.user.Status;
import mx.edu.utez.integradora.models.user.User;

import java.io.IOException;

@WebServlet(name = "story",urlPatterns ={
        "/api/auth1",
        "/api/story/save"

})

public class ServletStories extends HttpServlet {
    String action, redirect ="/api/auth1";
    Stories story;
    HttpSession session;
    String id, title, content, created_atDATETIME,file, status, user_id, categories;

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
        switch(action){
            case "/api/story/save":
                try {
                    title = req.getParameter("title");
                    content = req.getParameter("content");
                    file = req.getParameter("file");
                    user_id = req.getParameter("user_id");

                    Status status1 = new Status();
                    status = "3"; //status publicado
                    status1.setType_status(status);
                    User user1 = new User();

                    categories = req.getParameter("categories");

                    story = new Stories();
                    story.setId(0L);
                    story.setTitle(title);
                    story.setContent(content);
                    //story.setFile(byte[] file); // pendiente pk no le sabemos
                    story.setStatus(status1);
                  //  story.setUser_id(User user_id);
             //       story.setCategories(Categories categories);



                    /*id, title content, created_atDATETIME, file
                    * status, user, categories*/

                }catch (Exception e){

                }
            break;

        }

    }
}




