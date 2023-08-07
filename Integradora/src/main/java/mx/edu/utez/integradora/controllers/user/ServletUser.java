package mx.edu.utez.integradora.controllers.user;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mx.edu.utez.integradora.models.stories.DaoStories;
import mx.edu.utez.integradora.models.user.DaoUser;
import mx.edu.utez.integradora.models.user.Rols;
import mx.edu.utez.integradora.models.user.Status;
import mx.edu.utez.integradora.models.user.User;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@WebServlet (name = "user",urlPatterns = {
        "/api/auth",
        "/api/user/home",
        "/api/user/all",
        "/api/user/all-view",
        "/api/user/one",
        "/api/user/save",
        "/api/user/create",
        "/api/user/update",
        "/api/user/delete",
        "/api/admin/home",
        "/api/superadmin/home",

        "/api/admin/users-view",
        "/api/admin/stories-view",
        "/api/admin/superadminhome",
        "/api/superadmin/admins-view", //vista crud admins
        "/api/admin/admins-save",//crear administradores
        "/api/admin/admin-home",//vista adminHiome
        "/api/admin/admin-historias",//vistaAdminHistorias
        "/api/admin/admin-mas",
        "/api/admin/admin-user",//"/api/admin/admins-view", //vista crud admins


        "/api/superadmin/admins-save",//crear administradores
        "/api/superadmin/admin-home",//vista adminHiome
        "/api/superadmin/admin-historias",//vistaAdminHistorias
        "/api/superadmin/admin-mas",//
        "/api/superadmin/admin-user",//
        "/api/superadmin/delete-admin",//eliminar Administradores

        "/api/user/delete-story"




})
public class ServletUser extends HttpServlet {
    String action,redirect="/api/auth";
    User user;
    HttpSession  session;
    String id,name,lastname,surname,birthday,sex,email,pass,status,rol;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        action=req.getServletPath();
        switch (action){
            case "/api/auth":
                redirect="/index.jsp";
                break;

            case "/api/user/home":
            List<Objects> stories = new ArrayList<>();
            req.setAttribute("stories", new DaoStories().findAllStories());
            List<Objects> users= new ArrayList<>();
            req.setAttribute("users",users);
            redirect = "/home.jsp";
            req.setAttribute("categories",new DaoStories().findAllCategories());
            redirect="/view/user/home.jsp";

                break;
            case"/api/superadmin/home":
                System.out.println();
//                List<Objects> users1=new ArrayList<>();
//                req.setAttribute("users1", new DaoUser().fiandAll());
                redirect="/view/superadmin/adminIndex.jsp";
                break;
            case"/api/admin/home":
//                List<Objects> users1=new ArrayList<>();
//                req.setAttribute("users1", new DaoUser().fiandAll());
                redirect="/view/admin/adminIndex.jsp";
                break;
            case "/api/admin/users-view":

                redirect="/";
                break;
                //EndPonits  superAdmin
            case "/api/superadmin/admins-view":
                List<Objects> admin=new ArrayList<>();
                req.setAttribute("admin", new DaoUser().findAllAdmin());
                redirect="/view/superadmin/adminForos.jsp";
                break;

            case "/api/superadmin/admin-historias":
                redirect="/view/superadmin/adminHistorias.jsp";
                break;

            case "/api/superadmin/admin-mas":
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

                //EndPoints para los Admins asi los normalitosç

            case "/api/admin/admin-historias":
                redirect="/view/admin/adminHistorias.jsp";
                break;
            case "/api/admin/admin-user":
                List<Objects> users2=new ArrayList<>();
                req.setAttribute("users2", new DaoUser().fiandAll());
                redirect="/view/admin/superAdminHome.jsp";

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
                        System.out.println();
                        switch (user.getRols().getRol()) {
                            case "superAdmin":
                                redirect = "/api/superadmin/home";
                                break;
                            case"user":
                                redirect="/api/user/home";
                                System.out.println("en teoria entró al case del user");
                            case "users":
                                redirect = "/api/user/home";
                                System.out.println("Entra al users");
                                break;
                            case "admin":
                                redirect = "/api/admin/home";
                                System.out.println("Entro al case admin");

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
                    email = req.getParameter("email");
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
                    System.out.println(user.getRols().getRol());
                    System.out.println(user.getStatus().getType_status());
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

                    System.out.println("nombre es " + name);
                    System.out.println("lastname es " + lastname);
                    System.out.println("surname es " + surname);
                    System.out.println("birthday es " + birthday);
                    System.out.println("sex es " + sex);
                    System.out.println("email es " + email);
                    System.out.println("pass es " + pass);

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
                        redirect = "/api/superadmin/admin-mas?result= " + result + "&message=" + URLEncoder.encode("¡Éxito! Te has registrado correctamente.",
                                StandardCharsets.UTF_8);
                    } else {

                        redirect = "/api/superadmin/admin-mas?result= " + result + "&message=" + URLEncoder.encode("¡Error! Acción no realizada correctamente.",
                                StandardCharsets.UTF_8);
                    }

                } catch (Exception e) {
                    redirect = "/api/admin/admins-save?result=false&message=" + URLEncoder.encode("Ocurrio un eror", StandardCharsets.UTF_8);
                }
                break;

            case "/api/user/delete":
                id = req.getParameter("id");
                System.out.println(id);
                System.out.println("delete");

                if (new DaoUser().delete(Long.parseLong(id)))
                    redirect = "/api/admin/home?result=" + true + "&message" + URLEncoder.encode
                            ("¡Exito!Usuario Eliminado correctamente.", StandardCharsets.UTF_8);

                else{
               redirect = "/api/admin/home?result=" + false + "&message=" + URLEncoder.encode
                    ("¡Error!accion no realizada correctamente.", StandardCharsets.UTF_8);
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
            case  "/api/user/delete-story":
                  id = req.getParameter("idUser");
                  System.out.println(id);
                  redirect = "/api/user/home";
                break;
            default:
                redirect="/api/admin/home";
    }

        System.out.println("request" +req.getContextPath()+redirect);
        resp.sendRedirect(req.getContextPath()+redirect);
    }
}
