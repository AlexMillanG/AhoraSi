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
        "/api/auth2",
        "/api/story/save"

})

public class ServletStories extends HttpServlet {
    String action, redirect ="/api/auth2";
    Stories story;
    private Status status;
    private Categories categories;
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

        switch(action){
            case "/api/story/save":
                try {
                    title = req.getParameter("title");
                    content = req.getParameter("content");
                    file = req.getParameter("file");
                    user_id = req.getParameter("user_id");

                    Status status1 = new Status();
                    status_id = "3"; //status publicado
                   status1.setType_status(status_id);

                    //User user1 = new User();

                   category_id = req.getParameter("categories");
                    story = new Stories();
                    story.setId(0L);
                    story.setTitle(title);
                    story.setContent(content);
                    //story.setFile(byte[] file); // pendiente pk no le sabemos
                    story.setStatus(status1);
                    User user = new User();
                    user.setId(Long.parseLong(user_id));
                    story.setUser_id(user);

                    System.out.println(title);
                    System.out.println(content);
                    System.out.println(user.getId());
                    System.out.println(user_id);

                  Categories categories1 = new Categories();
                          // story.setCategories(Categories categories);



                    /*id, title content, created_atDATETIME, file
                     * status, user, categories*/

                }catch (Exception e){

                }
                break;

        }

//>>>>>>> 5b132da2375c229295a9aef189a06702cb4ffb7e
    }
    }




