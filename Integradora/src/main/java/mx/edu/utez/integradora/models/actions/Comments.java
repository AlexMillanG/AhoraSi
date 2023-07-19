package mx.edu.utez.integradora.models.actions;

import com.example.preubasinte.models.stories.Stories;
import com.example.preubasinte.models.user.User;

public class Comments {
    private long id;
    private  String content;
    private Stories stories;
    private User user;
    private Comments comments;

    public Comments() {
    }

    public Comments(long id, String content, Stories stories, User user, Comments comments) {
        this.id = id;
        this.content = content;
        this.stories = stories;
        this.user = user;
        this.comments = comments;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Stories getStories() {
        return stories;
    }

    public void setStories(Stories stories) {
        this.stories = stories;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Comments getComments() {
        return comments;
    }

    public void setComments(Comments comments) {
        this.comments = comments;
    }
}
