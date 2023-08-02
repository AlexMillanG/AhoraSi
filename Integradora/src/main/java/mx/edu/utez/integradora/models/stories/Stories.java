package mx.edu.utez.integradora.models.stories;

import mx.edu.utez.integradora.models.user.Status;
import mx.edu.utez.integradora.models.user.User;

public class Stories {
    private long id;
    private String title;
    private String content;
    private String created_atDATETIME;//fecha de creacion
    private byte[] file;//talvez asi agregue las imagenes
    private Status status_id;
    private User user_id;
    private Categories category_id;

    public Stories() {

    }

    public Stories(long id, String title, String content, String created_atDATETIME, byte[] file, Status status_id, User user_id, Categories category_id) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.created_atDATETIME = created_atDATETIME;
        this.file = file;
        this.status_id = status_id;
        this.user_id = user_id;
        this.category_id = category_id;
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

    public Status getStatus_id() {
        return status_id;
    }

    public void setStatus_id(Status status_id) {
        this.status_id = status_id;
    }

    public User getUser_id() {
        return user_id;
    }

    public void setUser_id(User user_id) {
        this.user_id = user_id;
    }

    public Categories getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Categories category_id) {
        this.category_id = category_id;
    }
}
