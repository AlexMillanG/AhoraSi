package mx.edu.utez.integradora.controllers.user;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
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
import java.sql.SQLException;
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
        "/api/superadmin/delete-story",
        "/api/user/like"




})
public class ServletUser extends HttpServlet {
    String action,redirect="/api/auth";
    User user;
    Status status1;
    Categories categories;
    HttpSession  session,getSession;
    Images images;
    String id,name,lastname,surname,birthday,sex,email,pass,status,rol,category, user_id, story_id,filename,mime;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        action=req.getServletPath();
        switch (action){
            //Pantalla de Inicio
            case "/api/auth":
                redirect="/index.jsp";
                break;
            //End Points para usuarios
            case "/api/user/home":
            List<Objects> likes = new ArrayList<>();
        //    req.setAttribute("likes",new DaoLikes().findAllLikes());

            List<Objects> stories = new ArrayList<>();
            req.setAttribute("stories", new DaoStories().findAllStories());

            List<Objects> articles = new ArrayList<>();
            req.setAttribute("articles", new DaoStories().findAllPublishedArticles());

            List<Objects> users= new ArrayList<>();
            req.setAttribute("users",users);
            req.setAttribute("categories",new DaoStories().findAllCategories());
            redirect = "/home.jsp";
           req.setAttribute("categories",new DaoStories().findAllCategories());
            redirect="/view/user/home.jsp";
            break;

            case "/api/user/perfil":
                System.out.println("PErfil "+getSession.getAttribute("id"));
               id= getSession.getAttribute("id").toString();
                System.out.println(id);
                List<Objects> Stories = new ArrayList<>();
                req.setAttribute("Stories",new DaoStories().findAllUserStories(id != null ? Long.parseLong(id):0));
                req.setAttribute("user1",new DaoUser().findOne(  id != null ? Long.parseLong(id):0));
                redirect="/view/user/perfil.jsp";
            break;
                //End points para Admin
            case "/api/admin/admin-historias":
                redirect="/view/admin/adminHistorias.jsp";
                break;

            case "/api/admin/admin-user":
                List<Objects> users2=new ArrayList<>();
                req.setAttribute("users2", new DaoUser().fiandAll());
                redirect="/view/admin/superAdminHome.jsp";
                break;

            case"/api/admin/home":
                redirect="/view/admin/adminIndex.jsp";
                break;

                //EndPonits  superAdmin
            case"/api/superadmin/home":
                List<Objects> waitingArticles = new ArrayList<>();
                req.setAttribute("waitingArticles", new DaoStories().findAllWaitingArticles());
                redirect="/view/superadmin/adminIndex.jsp";
                break;

            case "/api/superadmin/admins-view":
                List<Objects> admin=new ArrayList<>();
                req.setAttribute("admin", new DaoUser().findAllAdmin());
                redirect="/view/superadmin/adminForos.jsp";
                break;

            case "/api/superadmin/admin-historias":
                redirect="/view/superadmin/adminHistorias.jsp";
                break;

            case "/api/superadmin/mas":
                req.setAttribute("categories",new DaoCategories().fiandAll());
                req.setAttribute("image",new DaoUser().imagesList());
                redirect="/view/superadmin/adminMas.jsp";
                break;

            case "/api/superadmin/admin-user":
                List<Objects> users1=new ArrayList<>();
                id=req.getParameter("id");
                System.out.println(id);
                req.setAttribute("users2",new DaoUser().findOne(id!= null ? Long.parseLong(id):0));
                req.setAttribute("users1", new DaoUser().fiandAll());
                redirect="/view/superadmin/superAdminHome.jsp";
                break;
        }
        req.getRequestDispatcher(redirect).forward(req,resp);
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
                    user.setId(0L);
                    user.setName(name);
                    user.setLastname(lastname);
                    user.setSurname(surname);
                    user.setBirthday(birthday);
                    user.setEmail(email);
                    user.setSex(sex);
                    user.setPass(pass);
                    user.setRols(rols);
                    user.setStatus(status1);

                    boolean result = new DaoUser().save(user);

                    if (result) {

                        redirect = "/api/user/home?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! Te has registrado correctamente.",
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
                    name = req.getParameter("name");
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
                    redirect = "/api/user/perfil?result=false&message=" + URLEncoder.encode("Ocurrio un eror", StandardCharsets.UTF_8);
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
                    System.out.println("en el caso");
                    id = req.getParameter("id");
                    category = req.getParameter("categoria1");

                    System.out.println(id);
                    System.out.println(category);
               Categories categories=new Categories();
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


            default:
                redirect="/api/user/home";
    }

        System.out.println("request" +req.getContextPath()+redirect);
        resp.sendRedirect(req.getContextPath()+redirect);
    }
}