package mx.edu.utez.integradora.models.stories;

import mx.edu.utez.integradora.models.user.Status;
import mx.edu.utez.integradora.models.user.User;

public class Stories {
    private long id;
    private String title;
    private  String content;
    private String created_atDATETIME;//fecha de creacion
    private byte[] file;//talvez asi agregue las imagenes
    private Status status;
    private User user;
    private long user_id;
    private Categories categories;
    private Categories category;

    public Stories() {
    }

    public Stories(long id, String title, String content, String created_atDATETIME, byte[] file, Status status, User user, long user_id, Categories categories, Categories category) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.created_atDATETIME = created_atDATETIME;
        this.file = file;
        this.status = status;
        this.user = user;
        this.user_id = user_id;
        this.categories = categories;
        this.category = category;
    }


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreated_atDATETIME() {
        return created_atDATETIME;
    }

    public void setCreated_atDATETIME(String created_atDATETIME) {
        this.created_atDATETIME = created_atDATETIME;
    }

    public byte[] getFile() {
        return file;
    }

    public void setFile(byte[] file) {
        this.file = file;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Categories getCategories() {
        return categories;
    }

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }



    public void setCategories(Categories categories) {
        this.categories = categories;
    }
}
