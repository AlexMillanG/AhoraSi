package mx.edu.utez.integradora.controllers;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mx.edu.utez.integradora.models.user.DaoUser;
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
        "/api/user/logout",
        "/api/user/all",
        "/api/user/one",
        "/api/user/save",
        "/api/user/create",
        "/api/user/modify",
        "/api/user/update",

})
public class ServletUser extends HttpServlet {
    String action,redirect="/api/auth";
    User user;
    HttpSession  session;
    String id,name,lastname,surname,birthday,sex,email,pass;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        action=req.getServletPath();
        switch (action){
            case "/api/auth":

                redirect="/index.jsp";
                break;
        }
        req.getRequestDispatcher(redirect).forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        action=req.getServletPath();
        switch (action){
            case "/api/auth":
                email=req.getParameter("email");
                pass=req.getParameter("pass");
                try {
                    user=new DaoUser().loadUserByUsernameAndPassword(email,pass);
                    if (user!=null){
                        session=req.getSession();
                        session.setAttribute("user",user);
                        switch (user.getRols().getRol()){
                            case"superAdmin":
                                break;
                        }
                    }
                }catch (Exception e){
                    redirect="/api/auth?result=false&message="+ URLEncoder.encode("Usuario y/o contraseña incorrecta", StandardCharsets.UTF_8);
                }
                break;
        }
    }
}
