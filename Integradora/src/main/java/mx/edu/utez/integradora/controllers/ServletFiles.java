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

import java.io.IOException;
import java.io.OutputStream;

@WebServlet(name="Files",urlPatterns = {
        "/api/stories/loadFiles",
        "/api/avatar/loadFiles",
        "/api/categories/loadFiles"
})

public class ServletFiles extends HttpServlet {
    private String action;
    private Stories stories;
    private Categories categories;
    private DaoStories stories1;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.setCharacterEncoding("UTF-8");
    action=req.getServletPath();
    switch (action){
        case"/api/stories/loadFiles":
        int id =Integer.parseInt(req.getParameter("id")!= null ? req.getParameter("file"):"0");
//        stories=new DaoStories().findFile(id); aun no existe la clase

            OutputStream outputStream=resp.getOutputStream();
            outputStream.write(stories.getFile(),0,stories.getFile().length);
            break;
        case"/api/avatar/loadFiles":
            int id1 =Integer.parseInt(req.getParameter("id")!= null ? req.getParameter("file"):"0");
//        stories=new DaoStories().findFile(id); aun no existe la clase

            OutputStream stream=resp.getOutputStream();
//            stream.write(stories.getFile(),0,stories.getFile().length);
            break;
        case"/api/categories/loadFiles":
            System.out.println("Dentro del case");
            System.out.println("req "+req.getParameter("id"));
            int id2 = Integer.parseInt(req.getParameter("id") != null ? req.getParameter("id") : "0");
            System.out.println(id2);
            categories=new DaoCategories().findFile(id2);
            System.out.println(categories.getFileName());
            System.out.println(categories.getFile());
            OutputStream outputStream1=resp.getOutputStream();
            outputStream1.write(categories.getFile(),0,categories.getFile().length);
            break;
        default:
            if (action=="/api/categories/loadFiles"){
                req.getRequestDispatcher("/api/superadmin/mas").forward(req,resp);
            }


    }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
