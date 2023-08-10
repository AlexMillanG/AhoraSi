package mx.edu.utez.integradora.models.actions.comments;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import mx.edu.utez.integradora.models.stories.Stories;
import mx.edu.utez.integradora.models.user.User;

@WebServlet(name = "comment", urlPatterns = {

}
)
public class ServletComments extends HttpServlet {
    String action, redirect;
    String id,content, story_id;
    Stories story;
    User user;
    Comments comment;



}
