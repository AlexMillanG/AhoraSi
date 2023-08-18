package mx.edu.utez.integradora.controllers.Stories;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import mx.edu.utez.integradora.models.stories.Categories;
import mx.edu.utez.integradora.models.stories.DaoStories;
import mx.edu.utez.integradora.models.stories.Stories;
import mx.edu.utez.integradora.models.user.DaoUser;
import mx.edu.utez.integradora.models.user.Status;
import mx.edu.utez.integradora.models.user.User;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@WebServlet(name = "story",urlPatterns ={
        "/api/auth2",
        "/api/story/save",
        "/api/categories/all",
        "/api/user/update-story"


})
@MultipartConfig(
        fileSizeThreshold =1024*1024,
        maxFileSize = 1024*1024*5,
        maxRequestSize = 1024*1024*100
)

public class ServletStories extends HttpServlet {
    String action, redirect ="/api/auth2";
    Stories story;
    private Status status;
    private Categories categories;
    HttpSession session;
    String id, title, content, created_atDATETIME,file, status_id, user_id, category_id,filename,mime,story_id,img_id;

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
                    story = new Stories();
                    for (Part part: req.getParts()){
                        filename=part.getSubmittedFileName();
                        System.out.println(part.getSubmittedFileName());
                        System.out.println(filename);
                        if (filename!=null){
                            mime =part.getContentType().split("/")[1];
                            System.out.println(mime);
                            String uid= UUID.randomUUID().toString();
                            story.setFile_name(uid+"."+mime);
                            InputStream stream=part.getInputStream();
                            byte[] arr=stream.readAllBytes();
                            story.setFile(arr);
                        }
                    }

                    title = req.getParameter("title");
                    content = req.getParameter("content");
                    user_id = req.getParameter("user_id");
                    status_id = req.getParameter("status");
                    Status status1 = new Status();
                    status_id = req.getParameter("status"); //status publicado
                    System.out.println("estatus recibido " +status_id);
                   status1.setId(Long.parseLong(status_id));

                    //User user1 = new User();

                    category_id = req.getParameter("categories");
//                    story.setId(0L);
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
                }catch (Exception e){
                    redirect = "/api/user/home?result= " + URLEncoder.encode("Historia no publicada correctamente", StandardCharsets.UTF_8);
                }
                break;
            case"/api/user/update-story":
                try {
                    story = new Stories();
                    for (Part part: req.getParts()){
                        filename=part.getSubmittedFileName();
                        System.out.println(part.getSubmittedFileName());
                        System.out.println(filename);
                        if (filename!=null){
                            mime =part.getContentType().split("/")[1];
                            System.out.println(mime);
                            String uid= UUID.randomUUID().toString();
                            story.setFile_name(uid+"."+mime);
                            InputStream stream=part.getInputStream();
                            byte[] arr=stream.readAllBytes();
                            story.setFile(arr);
                        }
                    }

                    title = req.getParameter("titulo");
                    content = req.getParameter("contenido");
                    user_id = req.getParameter("idUserStory");
                    status=new Status();
                    status.setId(Long.parseLong("3"));
                    story_id=req.getParameter("id1");
                    img_id=req.getParameter("idImg");
                    category_id = req.getParameter("categories");

                    categories = new Categories();
                    categories.setId(Long.parseLong(category_id));
                    story.setTitle(title);
                    story.setContent(content);
                    story.setStatus(status);
                    story.setCategories(categories);
                    story.setId(Long.parseLong(story_id));
                    story.setImg_id(Long.parseLong(img_id));
                    User user = new User();
                    user.setId(Long.parseLong(user_id));
                    story.setUser_id(user);
                    boolean result = new DaoStories().updateStory(story);

                    if (result) {

                        redirect = "/api/user/perfil?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! Actualizacion hecha correctamente.",
                                StandardCharsets.UTF_8);

                    } else {

                        redirect = "/api/user/perfil?result= " + result + "&message=" + URLEncoder.encode("¡Error! Acción no realizada correctamente.",
                                StandardCharsets.UTF_8);
                    }
                }catch (Exception e){
                    redirect = "/api/user/perfil?result= " + URLEncoder.encode("Historia Actualizada correctamente", StandardCharsets.UTF_8);
                }
                break;

        }

        resp.sendRedirect(req.getContextPath()+redirect);

    }
    }
