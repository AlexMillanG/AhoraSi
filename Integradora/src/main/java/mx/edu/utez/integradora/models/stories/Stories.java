package mx.edu.utez.integradora.models.stories;

import com.example.preubasinte.models.user.Status;

public class Stories {
    private long id;
    private String title;
    private  String content;
    private String created_ad;//fecha de creacion
    private byte[] file;//talvez asi agregue las imagenes
    private Status status;
    private Categories categories;

    public Stories() {
    }

    public Stories(long id, String title, String content, String created_ad, byte[] file, Status status, Categories categories) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.created_ad = created_ad;
        this.file = file;
        this.status = status;
        this.categories = categories;
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

    public String getCreated_ad() {
        return created_ad;
    }

    public void setCreated_ad(String created_ad) {
        this.created_ad = created_ad;
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

    public void setCategories(Categories categories) {
        this.categories = categories;
    }
}
