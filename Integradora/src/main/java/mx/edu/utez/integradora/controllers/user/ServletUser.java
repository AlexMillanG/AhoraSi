package mx.edu.utez.integradora.controllers.user;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import mx.edu.utez.integradora.models.actions.Shared.DaoShared;
import mx.edu.utez.integradora.models.actions.Shared.Shared;
import mx.edu.utez.integradora.models.actions.comments.Comments;
import mx.edu.utez.integradora.models.actions.comments.DaoComments;
import mx.edu.utez.integradora.models.actions.likes.DaoLikes;
import mx.edu.utez.integradora.models.actions.likes.Likes;
import mx.edu.utez.integradora.models.stories.Categories;
import mx.edu.utez.integradora.models.stories.DaoCategories;
import mx.edu.utez.integradora.models.stories.DaoStories;
import mx.edu.utez.integradora.models.stories.Stories;
import mx.edu.utez.integradora.models.user.*;

import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

@MultipartConfig(
        fileSizeThreshold =1024*1024,
        maxFileSize = 1024*1024*5,
        maxRequestSize = 1024*1024*100
)
@WebServlet (name = "user",urlPatterns = {
        "/api/auth",
        "/api/user/home",
        "/api/user/perfil",
        "/api/user/save",
        "/api/user/update",
        "/api/user/delete",
        "/api/admin/home",
        "/api/superadmin/home",

        "/api/admin/superadminhome",
        "/api/admin/update-user",//Actualizar usuarios desde el perfil Administrador
        "/api/superadmin/admins-view", //vista crud admins
        "/api/admin/admin-historias",//vistaAdminHistorias
        "/api/admin/admin-user",//"/api/admin/admins-view", //vista crud admins
        "/api/actoresDeDoblaje/update",
        "/api/superadmin/admins-save",//crear administradores
        "/api/superadmin/admin-historias",//vistaAdminHistorias
        "/api/superadmin/mas",//
        "/api/superadmin/admin-user",//
        "/api/superadmin/add-category",//añadir categoria
        "/api/actoresDeDoblaje",//Borrar categoria
        "/api/user/super-delete",// eliminar usuarios desdel SuperAdmin
        "/api/superadmin/delete-admin",//eliminar Administradores
        "/api/superadmin/update-admin",//actualizar administradores desde el Super
        "/api/superadmin/add-avatar",
        "/api/user/delete-story",
        "/api/superadmin/aprove",
        "/api/superadmin/aproveAdmin",
        "/api/superadmin/delete-story",
        "/api/user/like",
        "/api/user/like-perfil",
        "/api/admin/admins-save",
        "/api/user/shared",
        "/api/user/delete-shared",
        "/api/user/update-plus",
        "/api/user/save-comment",
        "/api/user/save-comment-perfil",
        "/api/user/comment"




})
public class ServletUser extends HttpServlet {
    String action,redirect="/api/auth";
    User user;
    Status status1;
    Categories categories;
    Stories stories;
    HttpSession  session,getSession,httpSession;
    Images images;
    String id,name,lastname,surname,birthday,sex,email,pass,status,rol,category, user_id, story_id,filename,mime,idImg,content, comment_id;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        action = req.getServletPath();
        switch (action) {
            //Pantalla de Inicio
            case "/api/auth":
                redirect = "/index.jsp";
                break;
            //End Points para usuarios
            case "/api/user/home":
                List<Objects> likes = new ArrayList<>();

                List<Stories> stories = new DaoStories().findAllStories();
                req.setAttribute("stories", stories);
                //  req.setAttribute("stories", new DaoStories().findAllStories());

                List<Comments> comments = new ArrayList();
                for(Stories story : stories){
                    List temp = new DaoComments().findAllComments(story.getId());
                    comments.addAll(temp);
                }
                req.setAttribute("comment_list", comments);

                List<Stories> articles = new DaoStories().findAllPublishedArticles();
                req.setAttribute("articles",articles);
                List<Comments> commentsViewArticles3 = new ArrayList();
                for(Stories articles1 : articles){
                    List temp = new DaoComments().findAllComments(articles1.getId());
                    commentsViewArticles3.addAll(temp);
                }
                req.setAttribute("comment_listArticles", commentsViewArticles3);
//                req.setAttribute("articles", new DaoStories().findAllPublishedArticles());

                List<Objects> users = new ArrayList<>();
                req.setAttribute("users", users);
                req.setAttribute("categories", new DaoStories().findAllCategories());


                //       List<Objects> comments = new ArrayList<>();
                //       req.setAttribute("comments",new DaoComments().findAllComments(Long.parseLong(story_id)));
                redirect = "/view/user/home.jsp";
                break;

            case "/api/user/perfil":
                List<Objects> Shared = new ArrayList<>();
                id = getSession.getAttribute("id").toString();
                req.setAttribute("Shared", new DaoShared().FindAllSharedStories(id != null ? Long.parseLong(id) : 0));

                List<Stories> Stories = new DaoStories().findAllUserStories(id != null ? Long.parseLong(id) : 0);
                req.setAttribute("Stories", Stories);

                List<Comments> comments1 = new ArrayList();
                for(Stories story : Stories){
                    List temp = new DaoComments().findAllComments(story.getId());
                    comments1.addAll(temp);
                }
                req.setAttribute("comment_list", comments1);
                req.setAttribute("categories", new DaoStories().findAllCategories());
                req.setAttribute("user1", new DaoUser().findOne(id != null ? Long.parseLong(id) : 0));

                redirect = "/view/user/perfil.jsp";
                break;
            //End points para Admin
            case "/api/admin/admin-historias":
                List<Objects> likesView = new ArrayList<>();

                List<Stories> storiesView = new DaoStories().findAllStories();
                req.setAttribute("stories", storiesView);

                List<Comments> commentsView = new ArrayList();
                for(Stories story : storiesView){
                    List temp = new DaoComments().findAllComments(story.getId());
                    commentsView.addAll(temp);
                }
                req.setAttribute("comment_list", commentsView);

                List<Stories> articlesView2 = new DaoStories().findAllPublishedArticles();
                req.setAttribute("articlesView2",articlesView2);
                List<Comments> commentsViewArticles1 = new ArrayList();
                for(Stories story : articlesView2){
                    List temp = new DaoComments().findAllComments(story.getId());
                    commentsViewArticles1.addAll(temp);
                }
                req.setAttribute("comment_list1", commentsViewArticles1);
//                req.setAttribute("articles", new DaoStories().findAllPublishedArticles());

                List<Objects> users3 = new ArrayList<>();
                req.setAttribute("users", users3);
                req.setAttribute("categories", new DaoStories().findAllCategories());

                List<Categories> categories1 = new DaoCategories().fiandAll();
                req.setAttribute("categorias",categories1);

                redirect = "/view/admin/adminHistorias.jsp";
                break;

            case "/api/admin/admin-user":
                List<Objects> users2 = new ArrayList<>();
                req.setAttribute("users2", new DaoUser().fiandAll());
                redirect = "/view/admin/superAdminHome.jsp";
                break;

            case "/api/admin/home":
                req.setAttribute("waitingArticles", new DaoStories().findAllWaitingArticles());

                redirect = "/view/admin/adminIndex.jsp";
                break;

            //EndPonits  superAdmin
            case "/api/superadmin/home":
                List<Objects> waitingArticles = new ArrayList<>();
                List<Status> status = new ArrayList<>();
              //  req.setAttribute("status",new DaoSta;
                req.setAttribute("waitingArticles", new DaoStories().findAllWaitingArticles());
                redirect = "/view/superadmin/adminIndex.jsp";
                break;

            case "/api/superadmin/admins-view":
                List<Objects> admin = new ArrayList<>();
                req.setAttribute("admin", new DaoUser().findAllAdmin());
                redirect = "/view/superadmin/adminForos.jsp";
                break;

            case "/api/superadmin/admin-historias":
                List<Objects> likesView1 = new ArrayList<>();

                List<Stories> storiesView1 = new DaoStories().findAllStories();
                req.setAttribute("storiesView1", storiesView1);

                List<Comments> commentsView1 = new ArrayList();
                for(Stories story : storiesView1){
                    List temp = new DaoComments().findAllComments(story.getId());
                    commentsView1.addAll(temp);
                }
                req.setAttribute("comment_list", commentsView1);

                List<Stories> articlesView1 = new DaoStories().findAllPublishedArticles();
                req.setAttribute("articlesView1",articlesView1);
                List<Comments> commentsViewArticles = new ArrayList();
                for(Stories story : storiesView1){
                    List temp = new DaoComments().findAllComments(story.getId());
                    commentsViewArticles.addAll(temp);
                }
                req.setAttribute("comment_list2", commentsViewArticles);
//                req.setAttribute("articles", new DaoStories().findAllPublishedArticles());

                List<Objects> users4 = new ArrayList<>();
                req.setAttribute("users", users4);
                req.setAttribute("categories", new DaoStories().findAllCategories());
                redirect = "/view/superadmin/adminHistorias.jsp";
                break;

            case "/api/superadmin/mas":
                req.setAttribute("categories", new DaoCategories().fiandAll());
                req.setAttribute("image", new DaoUser().imagesList());
                redirect = "/view/superadmin/adminMas.jsp";
                break;

            case "/api/superadmin/admin-user":
                List<Objects> users1 = new ArrayList<>();
                id = req.getParameter("id");
                System.out.println(id);
                req.setAttribute("users2", new DaoUser().findOne(id != null ? Long.parseLong(id) : 0));
                req.setAttribute("users1", new DaoUser().fiandAll());
                redirect = "/view/superadmin/superAdminHome.jsp";
                break;

        }
        req.getRequestDispatcher(redirect).forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        action = req.getServletPath();
        System.out.println("post");
        switch (action) {
            case "/api/auth":
                email = req.getParameter("email");
                pass = req.getParameter("pass");
                System.out.println(email);
                System.out.println(pass);
                try {
                    user = new DaoUser().loadUserByUsernameAndPassword(email, pass);
                    if (user != null) {
                        System.out.println(user.getRols().getRol());
                        session = req.getSession();
                        session.setAttribute("user", user);
                        getSession=req.getSession();
                        getSession.setAttribute("id",user.getId());
                        System.out.println(user.getId());
                        System.out.println("SESSION"+getSession.getAttribute("id"));
                        switch (user.getRols().getRol()) {
                            case "superAdmin":
                                redirect = "/api/superadmin/home";
                                break;
                            case"user":
                                redirect="/api/user/home";
                                break;
                            case "admin":
                                redirect = "/api/admin/home";
                                break;
                        }
                    } else {
                        throw new Exception("Credentials mismatch");
                    }
                } catch (Exception e) {
                    System.out.println("c: " + e.getMessage());
                    redirect = "/api/auth?result=false&message=" + URLEncoder.encode("Usuario y/o contraseña incorrecta", StandardCharsets.UTF_8);
                }
                break;

            case "/api/user/save":
                try {
                   User user1=new User();
                    for (Part part: req.getParts()){
                        filename=part.getSubmittedFileName();
                        System.out.println(part.getSubmittedFileName());
                        System.out.println(filename);
                        if (filename!=null){
                            mime =part.getContentType().split("/")[1];
                            System.out.println(mime);
                            String uid= UUID.randomUUID().toString();
                            user1.setFile_name(uid+"."+mime);
                            InputStream stream=part.getInputStream();
                            byte[] arr=stream.readAllBytes();
                            user1.setImage(arr);
                        }
                    }

                    name = req.getParameter("name");
                    lastname = req.getParameter("lastname");
                    surname = req.getParameter("surname");
                    birthday = req.getParameter("birthday");
                    sex = req.getParameter("sex");
                    email = req.getParameter("emailRegistro");
                    pass = req.getParameter("pass");

                    Rols rols = new Rols();
                    rol = "user";

                    Status status1 = new Status();
                    status = "1";
                    status1.setType_status(status);
                    rols.setRol(rol);
                    user = new User();
                    user1.setId(0L);
                    user1.setName(name);
                    user1.setLastname(lastname);
                    user1.setSurname(surname);
                    user1.setBirthday(birthday);
                    user1.setEmail(email);
                    user1.setSex(sex);
                    user1.setPass(pass);
                    user1.setRols(rols);
                    user1.setStatus(status1);

                    boolean result = new DaoUser().save(user1);

                    if (result) {

                        redirect = "/api/auth?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! Te has registrado correctamente.",
                                StandardCharsets.UTF_8);

                    } else {

                        redirect = "/api/auth?result= " + result + "&message=" + URLEncoder.encode("¡Error! Acción no realizada correctamente.",
                                StandardCharsets.UTF_8);
                    }

                } catch (Exception e) {
                    redirect = "/api/user/auth?result=false&message=" + URLEncoder.encode("Ocurrio un eror", StandardCharsets.UTF_8);
                }
                break;

            case "/api/admin/admins-save":
                try {
                    name = req.getParameter("name1");
                    lastname = req.getParameter("lastname");
                    surname = req.getParameter("surname");
                    birthday = req.getParameter("birthday");
                    sex = req.getParameter("sex");
                    email = req.getParameter("email");
                    pass = req.getParameter("pass");


                    Rols rols = new Rols();
                    rol = "admin";

                    Status status2 = new Status();
                    status = "1";
                    status2.setType_status(status);
                    rols.setRol(rol);
                    user = new User();
                    user.setId(0L);
                    user.setName(name);
                    user.setLastname(lastname);
                    user.setSurname(surname);
                    user.setBirthday(birthday);
                    user.setEmail(email);
                    user.setSex(sex);
                    user.setPass(pass);
                    user.setRols(rols);
                    user.setStatus(status2);
                    System.out.println(user.getRols().getRol());
                    System.out.println(user.getStatus().getType_status());
                    boolean result = new DaoUser().createAdmin(user);

                    if (result) {
                        redirect = "/api/superadmin/admins-view?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! Te has registrado correctamente.",
                                StandardCharsets.UTF_8);
                    } else {

                        redirect = "/api/superadmin/admins-view?result= " + result + "&message=" + URLEncoder.encode("¡Error! Acción no realizada correctamente.",
                                StandardCharsets.UTF_8);
                    }

                } catch (Exception e) {
                    redirect = "/api/superadmin/admins-view?result=false&message=" + URLEncoder.encode("Ocurrio un eror", StandardCharsets.UTF_8);
                }
                break;

            case "/api/user/delete":
                id = req.getParameter("id");

                if (new DaoUser().delete(Long.parseLong(id)))
                    redirect = "/api/admin/admin-user?result=" + true + "&message" + URLEncoder.encode
                            ("¡Exito!Usuario Eliminado correctamente.", StandardCharsets.UTF_8);

                else{
            redirect = "/api/admin/admin-user?result=" + false + "&message=" + URLEncoder.encode("¡Error Accion no realizada correctamente",StandardCharsets.UTF_8);
              }
        break;
//BOrrar usuarios desde el superAdmin
            case "/api/user/super-delete":
                id = req.getParameter("id");
                System.out.println(id);
                System.out.println("delete");

                if (new DaoUser().delete(Long.parseLong(id)))
                    redirect = "/api/superadmin/admin-user?result=" + true + "&message" + URLEncoder.encode
                            ("¡Exito!Usuario Eliminado correctamente.", StandardCharsets.UTF_8);

                else{
                    redirect = "/api/superadmin/admin-user?result=" + false + "&message=" + URLEncoder.encode
                            ("¡Error!Usuario  no Eliminado correctamente.", StandardCharsets.UTF_8);
                }
                break;

            case "/api/superadmin/delete-admin":
                id = req.getParameter("id");
                System.out.println(id);
                System.out.println("delete");

                if (new DaoUser().deleteAdmin(Long.parseLong(id)))
                    redirect = "/api/superadmin/admins-view?result=" + true + "&message" + URLEncoder.encode
                            ("¡Exito!Administrador Eliminado correctamente.", StandardCharsets.UTF_8);

                else{
                    redirect = "/api/superadmin/admins-view?result=" + false + "&message=" + URLEncoder.encode
                            ("¡Error!accion no realizada correctamente.", StandardCharsets.UTF_8);
                }
                break;
            case "/api/user/update":
                try {
                    id = req.getParameter("id");
                    name = req.getParameter("name");
                    lastname = req.getParameter("lastname");
                    surname = req.getParameter("surname");
                    birthday = req.getParameter("birthday");
                    sex = req.getParameter("sex");
                    email = req.getParameter("emailRegistro");
                    pass = req.getParameter("pass");

                    Rols rols = new Rols();
                    rol = "3";

                    Status status1 = new Status();
                    status = "1";
                    status1.setId(Long.parseLong(status));
                    rols.setId(Long.parseLong(rol));
                    user = new User();
                    user.setId(Long.parseLong(id));
                    user.setName(name);
                    user.setLastname(lastname);
                    user.setSurname(surname);
                    user.setBirthday(birthday);
                    user.setEmail(email);
                    user.setSex(sex);
                    user.setPass(pass);
                    user.setRols(rols);
                    user.setStatus(status1);
                    boolean result = new DaoUser().update(user);

                    if (result) {

                        redirect = "/api/superadmin/admin-user?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! has Actualizado correctamente.",
                                StandardCharsets.UTF_8);

                    } else {

                        redirect = "/api/superadmin/admin-user?result= " + result + "&message=" + URLEncoder.encode("¡Error! Actualizacion no realizada correctamente.",
                                StandardCharsets.UTF_8);
                    }

                } catch (Exception e) {
                    redirect = "/api/superadmin/home?result=false&message=" + URLEncoder.encode("Ocurrio un eror", StandardCharsets.UTF_8);
                }
                    break;

            case "/api/user/update-plus":
                try {
                    id = req.getParameter("id");
                    name = req.getParameter("name");
                    lastname = req.getParameter("lastname");
                    surname = req.getParameter("surname");
                    birthday = req.getParameter("birthday");
                    sex = req.getParameter("sex");
                    email = req.getParameter("emailRegistro");
                    pass = req.getParameter("pass");

                    Rols rols = new Rols();
                    rol = "3";

                    Status status1 = new Status();
                    status = "1";
                    status1.setId(Long.parseLong(status));
                    rols.setId(Long.parseLong(rol));
                    user = new User();
                    user.setId(Long.parseLong(id));
                    user.setName(name);
                    user.setLastname(lastname);
                    user.setSurname(surname);
                    user.setBirthday(birthday);
                    user.setEmail(email);
                    user.setSex(sex);
                    user.setPass(pass);
                    user.setRols(rols);
                    user.setStatus(status1);
                    boolean result = new DaoUser().update(user);

                    if (result) {

                        redirect = "/api/user/perfil?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! has Actualizado correctamente.",
                                StandardCharsets.UTF_8);

                    } else {

                        redirect = "//api/user/perfil?result= " + result + "&message=" + URLEncoder.encode("¡Error! Actualizacion no realizada correctamente.",
                                StandardCharsets.UTF_8);
                    }

                } catch (Exception e) {
                    redirect = "/api/user/perfil?result=false&message=" + URLEncoder.encode("Ocurrio un eror", StandardCharsets.UTF_8);
                }
                break;

            case "/api/admin/update-user":
                try {
                    id = req.getParameter("id");
                    name = req.getParameter("name");
                    lastname = req.getParameter("lastname");
                    surname = req.getParameter("surname");
                    birthday = req.getParameter("birthday");
                    sex = req.getParameter("sex");
                    email = req.getParameter("emailRegistro");
                    pass = req.getParameter("pass");

                    Rols rols = new Rols();
                    rol = "3";

                    Status status1 = new Status();
                    status = "1";
                    status1.setId(Long.parseLong(status));
                    rols.setId(Long.parseLong(rol));
                    user = new User();
                    user.setId(Long.parseLong(id));
                    user.setName(name);
                    user.setLastname(lastname);
                    user.setSurname(surname);
                    user.setBirthday(birthday);
                    user.setEmail(email);
                    user.setSex(sex);
                    user.setPass(pass);
                    user.setRols(rols);
                    user.setStatus(status1);
                    boolean result = new DaoUser().update(user);

                    if (result) {

                        redirect = "/api/admin/admin-user?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! has Actualizado correctamente.",
                                StandardCharsets.UTF_8);

                    } else {

                        redirect = "/api/admin/admin-user?result= " + result + "&message=" + URLEncoder.encode("¡Error! Actualizacion no realizada correctamente.",
                                StandardCharsets.UTF_8);
                    }

                } catch (Exception e) {
                    redirect = "/api/admin/admin-user?result=false&message=" + URLEncoder.encode("Ocurrio un eror", StandardCharsets.UTF_8);
                }
                break;

            case "/api/superadmin/update-admin":
                try {
                    id = req.getParameter("id");
                    name = req.getParameter("name1");
                    lastname = req.getParameter("lastname1");
                    surname = req.getParameter("surname1");
                    birthday = req.getParameter("birthday1");
                    sex = req.getParameter("sex");
                    email = req.getParameter("emailRegistro");
                    pass = req.getParameter("pass1");

                    Rols rols = new Rols();
                    rol = "2";
                    status1 =new Status();
                    status = "1";
                    status1.setId(Long.parseLong(status));
                    rols.setId(Long.parseLong(rol));
                    user = new User();
                    user.setId(Long.parseLong(id));
                    user.setName(name);
                    user.setLastname(lastname);
                    user.setSurname(surname);
                    user.setBirthday(birthday);
                    user.setEmail(email);
                    user.setSex(sex);
                    user.setPass(pass);
                    user.setRols(rols);
                    user.setStatus(status1);
                    boolean result = new DaoUser().update(user);
                    if (result) {

                        redirect = "/api/superadmin/admins-view?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! has Actualizado correctamente.",
                                StandardCharsets.UTF_8);

                    } else {

                        redirect = "/api/superadmin/admins-view?result= " + result + "&message=" + URLEncoder.encode("¡Error! Actualizacion no realizada correctamente.",
                                StandardCharsets.UTF_8);
                    }

                } catch (Exception e) {
                    redirect = "/api/superadmin/admins-view?result=false&message=" + URLEncoder.encode("Ocurrio un eror", StandardCharsets.UTF_8);
                }
                break;

            case  "/api/user/delete-story":
                try{
                    id = req.getParameter("id");
                    System.out.println("ID de la historia borrar" + id);
                    if (new DaoStories().delete(Long.parseLong(id)))
                        redirect = "/api/user/perfil?result=" + true + "&message" + URLEncoder.encode
                                ("¡Exito!Historia Eliminado correctamente.", StandardCharsets.UTF_8);

                }catch (Exception e) {
                    redirect = "/api/user/perfil?result=false&message=" + URLEncoder.encode("Ocurrio un error al borrar la historia", StandardCharsets.UTF_8);
                }
                break;

            case"/api/superadmin/add-category":
                try {
                    categories=new Categories();
                    for (Part part: req.getParts()){
                        filename=part.getSubmittedFileName();
                        System.out.println(part.getSubmittedFileName());
                        System.out.println(filename);
                        if (filename!=null){
                            mime =part.getContentType().split("/")[1];
                            System.out.println(mime);
                            String uid= UUID.randomUUID().toString();
                            categories.setFileName(uid+"."+mime);
                            InputStream stream=part.getInputStream();
                            byte[] arr=stream.readAllBytes();
                            categories.setFile(arr);
                        }
                    }
                    category=req.getParameter("categoria");
                    categories.setCategory(category);
                    System.out.println(categories.getFile());
                    System.out.println(categories.getFileName());
                    boolean result = new DaoCategories().save(categories);
                    if (result) {
                        redirect = "/api/superadmin/mas?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! categorgia añadida con exito.",
                                StandardCharsets.UTF_8);
                    } else {
                        redirect = "/api/superadmin/mas?result= " + result + "&message=" + URLEncoder.encode("¡Error! no se pudo agregar la categoria.",
                                StandardCharsets.UTF_8);
                    }
                } catch (Exception e) {
            redirect = "/api/superadmin/mas?result=false&message=" + URLEncoder.encode("Ocurrio un error al agregar la categoria", StandardCharsets.UTF_8);
                }
                break;


            case"/api/actoresDeDoblaje": //borrar categorías
                try {
                    id=req.getParameter("id");
                    System.out.println("Id categorias "+id);

                    if (new DaoCategories().delete(Long.parseLong(id))) {
                        redirect = "/api/superadmin/mas?result= " + true + "&message=" + URLEncoder.encode("¡Éxito! has Eliminado  correctamente la Categorias.",
                                StandardCharsets.UTF_8);
                    } else {
                        redirect = "/api/superadmin/mas?result= " + false + "&message=" + URLEncoder.encode("¡Error! accion no realizada correctamente.",
                                StandardCharsets.UTF_8);
                    }
                } catch (Exception e) {
                    redirect = "/api/superadmin/mas?result=false&message=" + URLEncoder.encode("Ocurrio un eror", StandardCharsets.UTF_8);
                }
                break;

            case "/api/actoresDeDoblaje/update": //actualizar categorias
                try {

                    categories=new Categories();
                    images=new Images();
                    for (Part part: req.getParts()){
                        filename=part.getSubmittedFileName();
                        System.out.println(part.getSubmittedFileName());
                        System.out.println(filename);
                        if (filename!=null){
                            mime =part.getContentType().split("/")[1];
                            System.out.println(mime);
                            String uid= UUID.randomUUID().toString();
                            categories.setFileName(uid+"."+mime);
                            InputStream stream=part.getInputStream();
                            byte[] arr=stream.readAllBytes();
                            categories.setFile(arr);
                        }
                    }
                    id = req.getParameter("id");
                    category = req.getParameter("categoria1");
                    idImg = req.getParameter("idImg");

                    categories.setImg_id(Long.parseLong(idImg));
                    System.out.println(id);
                    System.out.println(category);
                        categories.setId(Long.parseLong(id));
                  categories.setCategory(category);

                    boolean result = new DaoCategories().update(categories);
                    if (result) {

                        redirect = "/api/superadmin/mas?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! has Actualizado correctamente.",
                                StandardCharsets.UTF_8);
                    } else {
                        redirect = "/api/superadmin/mas?result= " + result + "&message=" + URLEncoder.encode("¡Error! Actualizacion no realizada correctamente.",
                                StandardCharsets.UTF_8);
                    }


                }catch (Exception e) {
                    redirect = "/api/superadmin/mas?result=false&message=" + URLEncoder.encode("Ocurrio un eror", StandardCharsets.UTF_8);
                }
                break;
            case "/api/superadmin/aprove":
                id = req.getParameter("articleId");
                System.out.println(id);
                req.setAttribute(id,new DaoStories().AproveArticle(Long.parseLong(id)));
                redirect= "/api/superadmin/home";
                break;
            case "/api/superadmin/aproveAdmin":
                id = req.getParameter("articleId");
                System.out.println(id);
                req.setAttribute(id,new DaoStories().AproveArticle(Long.parseLong(id)));
                redirect= "/api/admin/home";
                break;
            case "/api/superadmin/delete-story":
                id = req.getParameter("articleId");
                System.out.println("id del articulo " + id);
                req.setAttribute(id,new DaoStories().delete(Long.parseLong(id)));
                redirect= "/api/superadmin/home";
                break;
            case "/api/user/like":
                try {
                    user_id = req.getParameter("user_id");
                    story_id = req.getParameter("story_id");
                    Likes like = new Likes();
                    User user1 = new User();
                    user1.setId(Long.parseLong(user_id));
                    Stories stories = new Stories();
                    stories.setId(Long.parseLong(story_id));
                    like.setUser(user1);
                    like.setStories(stories);

                    boolean result = new DaoLikes().save(like);
                    if (result == false){
                        boolean result2 = new DaoLikes().delete(Long.parseLong(user_id),Long.parseLong(story_id));
                        redirect = "/api/user/home?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! Te has registrado correctamente.",
                                StandardCharsets.UTF_8);
                    }

                    if (result) {

                        redirect = "/api/user/home?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! se ha registrado el like registrado correctamente.",
                                StandardCharsets.UTF_8);

                    } else {

                        redirect = "/api/user/home?result= " + result + "&message=" + URLEncoder.encode("¡Éxito!, se ha eliminado el like correctamente.",
                                StandardCharsets.UTF_8);
                    }
                }catch (Exception e){
                    redirect = "/api/user/home?result= " + URLEncoder.encode("Historia no publicada correctamente", StandardCharsets.UTF_8);

                }
                break;
            case "/api/user/like-perfil":
                try {
                    user_id = req.getParameter("user_id");
                    story_id = req.getParameter("story_id");
                    Likes like = new Likes();
                    User user1 = new User();
                    user1.setId(Long.parseLong(user_id));
                    Stories stories = new Stories();
                    stories.setId(Long.parseLong(story_id));
                    like.setUser(user1);
                    like.setStories(stories);

                    boolean result = new DaoLikes().save(like);
                    if (result == false){
                        boolean result2 = new DaoLikes().delete(Long.parseLong(user_id),Long.parseLong(story_id));
                        redirect = "/api/user/perfil?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! Te has registrado correctamente.",
                                StandardCharsets.UTF_8);
                    }

                    if (result) {

                        redirect = "/api/user/perfil?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! se ha registrado el like registrado correctamente.",
                                StandardCharsets.UTF_8);

                    } else {

                        redirect = "/api/user/perfil?result= " + result + "&message=" + URLEncoder.encode("¡Éxito!, se ha eliminado el like correctamente.",
                                StandardCharsets.UTF_8);
                    }
                }catch (Exception e){
                    redirect = "/api/user/perfil?result= " + URLEncoder.encode("Historia no publicada correctamente", StandardCharsets.UTF_8);

                }
                break;

            case "/api/superadmin/add-avatar":
                try {
                    images=new Images();
                    for (Part part: req.getParts()){
                        filename=part.getSubmittedFileName();
                        System.out.println(part.getSubmittedFileName());
                        System.out.println(filename);
                        if (filename!=null){
                            mime =part.getContentType().split("/")[1];
                            System.out.println(mime);
                            String uid= UUID.randomUUID().toString();
                            images.setFilename(uid+"."+mime);
                            InputStream stream=part.getInputStream();
                            byte[] arr=stream.readAllBytes();
                            images.setFile(arr);
                            System.out.println(images.getFile());
                        }
                    }


                    boolean result = new DaoUser().saveImg(images);
                    if (result) {
                        redirect = "/api/superadmin/mas?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! has Actualizado correctamente.",
                                StandardCharsets.UTF_8);
                    } else {
                        redirect = "/api/superadmin/mas?result= " + result + "&message=" + URLEncoder.encode("¡Error! Actualizacion no realizada correctamente.",
                                StandardCharsets.UTF_8);
                    }
                } catch (Exception e) {
                    redirect = "/api/superadmin/mas?result=false&message=" + URLEncoder.encode("Ocurrio un eror", StandardCharsets.UTF_8);
                }

                break;

            case "/api/user/shared":
                    id=getSession.getAttribute("id").toString();
                    System.out.println(id);
                    story_id = req.getParameter("story_id");
                    Shared shared = new Shared();
                    User user1 = new User();
                    user1.setId(Long.parseLong(id));
                    Stories stories = new Stories();
                    stories.setId(Long.parseLong(story_id));
                    shared.setUser(user1);
                    shared.setStories(stories);

                  boolean result= new DaoShared().save(shared);

                  if(result){
                      redirect = "/api/user/home?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! Has compartido esta historia con exito.",
                              StandardCharsets.UTF_8);
                  } else {

                      redirect = "/api/user/home?result= " + result + "&message=" + URLEncoder.encode("¡Error! compartir no realizada correctamente.",
                              StandardCharsets.UTF_8);
                  }

                break;
            case "/api/user/delete-shared":
                try{
                    story_id = req.getParameter("story_id");
                    user_id = req.getParameter("user_id");
                    System.out.println("id del compartido a borrar");


                    System.out.println("ID de la compartida borrar" + story_id);
                    if (new DaoShared().delete(Long.parseLong(user_id),Long.parseLong(story_id))){
                        redirect = "/api/user/perfil?result=" + true + "&message" + URLEncoder.encode
                                ("¡Exito!Compartir Eliminado correctamente.", StandardCharsets.UTF_8);}else{


                        redirect = "/api/user/perfil?result=" + false + "&message" + URLEncoder.encode
                                ("¡ERROR!Compartir  NO  Eliminado correctamente.", StandardCharsets.UTF_8);
                    }

                }catch (Exception e) {
                    redirect = "/api/user/perfil?result=false&message=" + URLEncoder.encode("Ocurrio un error", StandardCharsets.UTF_8);
                }

                break;
            case "/api/user/save-comment":
                try {
                    User user2 =new User();
                    Stories story=new Stories();
                    content = req.getParameter("content");
                    user_id = req.getParameter("user_id");
                    story_id = req.getParameter("story_id");
                    Comments comments = new Comments();
                    comments.setContent(content);
                    user2.setId(Long.parseLong(user_id));
                    story.setId(Long.parseLong(story_id));
                    comments.setStories(story);
                    comments.setUser(user2);
                    System.out.println("user id comment "+user_id);
                    System.out.println("story id comment "+story_id);
                    System.out.println("content comment :"+content);

                    boolean result1 = new DaoComments().saveComment(comments);
                    if (result1) {
                        redirect = "/api/user/home?result= " + result1 + "&message=" + URLEncoder.encode("¡Éxito! comentario publicado correctamente.",
                                StandardCharsets.UTF_8);
                    }else{
                        redirect = "/api/user/home?result= " + result1 + "&message=" + URLEncoder.encode("¡Error! comentario no publicado.",
                                StandardCharsets.UTF_8);
                    }
                }catch (Exception e){
                    redirect = "/api/user/home?result= " + URLEncoder.encode("Comentario no publicadd correctamente", StandardCharsets.UTF_8);

                }
                break;
            case "/api/user/save-comment-perfil":
                try {
                    User user2 =new User();
                    Stories story=new Stories();
                    content = req.getParameter("content1");
                    user_id = req.getParameter("user_id");
                    story_id = req.getParameter("story_id");
                    Comments comments = new Comments();
                    comments.setContent(content);
                    user2.setId(Long.parseLong(user_id));
                    story.setId(Long.parseLong(story_id));
                    comments.setStories(story);
                    comments.setUser(user2);


                    boolean result1 = new DaoComments().saveComment(comments);
                    if (result1) {
                        redirect = "/api/user/perfil?result= " + result1 + "&message=" + URLEncoder.encode("¡Éxito! comentario publicado correctamente.",
                                StandardCharsets.UTF_8);
                    }else{
                        redirect = "/api/user/perfil?result= " + result1 + "&message=" + URLEncoder.encode("¡Error! comentario no publicado.",
                                StandardCharsets.UTF_8);
                    }
                }catch (Exception e){
                    redirect = "/api/user/perfil?result= " + URLEncoder.encode("Comentario no publicadd correctamente", StandardCharsets.UTF_8);

                }
                break;
            case "/api/user/save-response":
                try {
                    User user2 = new User();
                    Stories stories1 = new Stories();
                    Comments comments = new Comments();

                    content = req.getParameter("content");
                    user_id = req.getParameter("user_id");
                    story_id = req.getParameter("story_id");
                    comment_id = req.getParameter("comment_id");

                    user2.setId(Long.parseLong(user_id));
                    stories1.setId(Long.parseLong(story_id));
                    comments.setId(Long.parseLong(comment_id));

                    Comments response = new Comments();

                    response.setUser(user2);
                    response.setStories(stories1);
                    response.setContent(content);
                    response.setComments(comments);
                    boolean result1 = new DaoComments().saveResponse(response);
                    if (result1) {
                        redirect = "/api/user/home?result= " + result1 + "&message=" + URLEncoder.encode("¡Éxito! respuesta publicado correctamente.",
                                StandardCharsets.UTF_8);
                    }else{
                        redirect = "/api/user/home?result= " + result1 + "&message=" + URLEncoder.encode("¡Error! respuesta no publicado.",
                                StandardCharsets.UTF_8);
                    }
                }catch (Exception e){
                    redirect = "/api/user/home?result= " + URLEncoder.encode("Respuesta no publicado correctamente", StandardCharsets.UTF_8);

                }
                break;
            default:
                redirect="/api/user/home";
    }

        System.out.println("request" +req.getContextPath()+redirect);
        resp.sendRedirect(req.getContextPath()+redirect);
    }
}