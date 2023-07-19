package mx.edu.utez.integradora.models.forums;

import com.example.preubasinte.models.stories.Categories;
import com.example.preubasinte.models.user.Status;
import com.example.preubasinte.models.user.User;

public class Forums {
    private  long id;
    private String name;
    private String description;
    private String create_at; //fehca creacion
    private Categories categories;
    private Status status;
    private User user;

    public Forums() {
    }

    public Forums(long id, String name, String description, String create_at, Categories categories, Status status, User user) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.create_at = create_at;
        this.categories = categories;
        this.status = status;
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCreate_at() {
        return create_at;
    }

    public void setCreate_at(String create_at) {
        this.create_at = create_at;
    }

    public Categories getCategories() {
        return categories;
    }

    public void setCategories(Categories categories) {
        this.categories = categories;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
