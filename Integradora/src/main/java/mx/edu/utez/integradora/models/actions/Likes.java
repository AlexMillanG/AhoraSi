package mx.edu.utez.integradora.models.actions;


import mx.edu.utez.integradora.models.stories.Stories;
import mx.edu.utez.integradora.models.user.User;

public class Likes {
    private  long id;
    private Stories stories;
    private User user;

    public Likes() {
    }

    public Likes(long id, Stories stories, User user) {
        this.id = id;
        this.stories = stories;
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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
}
