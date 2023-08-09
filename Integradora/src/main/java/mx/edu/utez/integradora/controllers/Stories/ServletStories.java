package mx.edu.utez.integradora.controllers.Stories;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mx.edu.utez.integradora.models.stories.Categories;
import mx.edu.utez.integradora.models.stories.DaoStories;
import mx.edu.utez.integradora.models.stories.Stories;
import mx.edu.utez.integradora.models.user.DaoUser;
import mx.edu.utez.integradora.models.user.Status;
import mx.edu.utez.integradora.models.user.User;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "story",urlPatterns ={
        "/api/auth2",
        "/api/story/save",
        "/api/categories/all"


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


        switch(action){
            case "/api/story/save":
                try {

                    title = req.getParameter("title");
                    content = req.getParameter("content");
                    file = req.getParameter("file");
                    user_id = req.getParameter("user_id");
                    status_id = req.getParameter("status");
                    Status status1 = new Status();
                    status_id = req.getParameter("status"); //status publicado
                    System.out.println("estatus recibido " +status_id);
                   status1.setId(Long.parseLong(status_id));

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


                  Categories categories1 = new Categories();
                    categories1.setId(Long.parseLong(category_id));
                  story.setCategories(categories1);
                    boolean result = new DaoStories().saveStory(story);

                    if (result) {

                        redirect = "/api/user/home?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! Te has registrado correctamente.",
                                StandardCharsets.UTF_8);

                    } else {

                        redirect = "/api/user/home?result= " + result + "&message=" + URLEncoder.encode("¡Error! Acción no realizada correctamente.",
                                StandardCharsets.UTF_8);
                    }
                          // story.setCategories(Categories categories);



                    /*id, title content, created_atDATETIME, file
                     * status, user, categories*/

                }catch (Exception e){
                    redirect = "/api/user/home?result= " + URLEncoder.encode("Historia no publicada correctamente", StandardCharsets.UTF_8);
                }
                break;

        }

        resp.sendRedirect(req.getContextPath()+redirect);

    }
    }
