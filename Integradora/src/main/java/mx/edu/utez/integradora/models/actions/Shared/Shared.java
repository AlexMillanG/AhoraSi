package mx.edu.utez.integradora.models.actions.Shared;



import mx.edu.utez.integradora.models.stories.Stories;
import mx.edu.utez.integradora.models.user.User;

public class Shared {
    private Stories stories;
    private User user;

    public Shared() {
    }

    public Shared(Stories stories, User user) {
        this.stories = stories;
        this.user = user;
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
