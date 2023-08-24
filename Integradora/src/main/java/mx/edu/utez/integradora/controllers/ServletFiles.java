package mx.edu.utez.integradora.controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import mx.edu.utez.integradora.models.stories.Categories;
import mx.edu.utez.integradora.models.stories.DaoCategories;
import mx.edu.utez.integradora.models.stories.DaoStories;
import mx.edu.utez.integradora.models.stories.Stories;
import mx.edu.utez.integradora.models.user.DaoUser;
import mx.edu.utez.integradora.models.user.Images;
import mx.edu.utez.integradora.models.user.User;

import java.io.IOException;
import java.io.OutputStream;

@WebServlet(name="Files",urlPatterns = {
        "/api/stories/loadFiles",
        "/api/avatar/loadFiles",
        "/api/categories/loadFiles",
        "/api/user/loadFiles"
})

public class    ServletFiles extends HttpServlet {
    private String action;
    private Stories stories;
    private Categories categories;
    private Images images;
    private DaoStories stories1;
    private User user;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.setCharacterEncoding("UTF-8");
    action=req.getServletPath();
    switch (action){
        case"/api/stories/loadFiles":
        int id =Integer.parseInt(req.getParameter("id")!= null ? req.getParameter("id"):"0");
            stories=new DaoStories().findFile(id);
            OutputStream outputStream=resp.getOutputStream();
            outputStream.write(stories.getFile(),0,stories.getFile().length);
            break;
        case"/api/avatar/loadFiles":
            int id1 =Integer.parseInt(req.getParameter("idA")!= null ? req.getParameter("idA"):"0");
            images= new DaoUser().findFile(id1);
            OutputStream stream=resp.getOutputStream();
           stream.write(images.getFile(),0,images.getFile().length);
            break;
        case"/api/categories/loadFiles":
            int id2 = Integer.parseInt(req.getParameter("id") != null ? req.getParameter("id") : "0");
            categories=new DaoCategories().findFile(id2);
            OutputStream outputStream1=resp.getOutputStream();
            outputStream1.write(categories.getFile(),0,categories.getFile().length);
            break;
        case"/api/user/loadFiles":
            int id3= Integer.parseInt(req.getParameter("id") != null ? req.getParameter("id") : "0");
            user=new DaoUser().findFile2(id3);
            OutputStream outputStream2=resp.getOutputStream();
            outputStream2.write(user.getImage(),0,user.getImage().length);

            break;
        default:
            if (action=="/api/stories/loadFiles"){
                req.getRequestDispatcher("/api/user/home").forward(req,resp);
                req.getRequestDispatcher("/api/user/perfil").forward(req,resp);

            }
            if (action=="/api/categories/loadFiles"){
                req.getRequestDispatcher("/api/superadmin/mas").forward(req,resp);
            }
            if (action=="api/avatar/loadFiles"){
                req.getRequestDispatcher("/api/superadmin/mas").forward(req,resp);
            }
            if (action=="/api/user/loadFiles"){
                req.getRequestDispatcher("/api/user/home").forward(req,resp);
                req.getRequestDispatcher("/api/user/perfil").forward(req,resp);

            }

    }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
