package mx.edu.utez.integradora.models.stories;

import mx.edu.utez.integradora.models.user.Images;
import mx.edu.utez.integradora.models.user.Status;
import mx.edu.utez.integradora.models.user.User;

public class Stories {
    private long id;
    private String title;
    private String content;
    private String created_atDATETIME;//fecha de creacion
    private byte[] file;//talvez asi agregue las imagenes
    private String file_name;
    private Images images;
    private Status status;
    private User user_id;
    private Categories categories;
    private  int Likes;
    private long img_id;



    public Stories() {

    }

    public Stories(long id, String title, String content, String created_atDATETIME, byte[] file, String file_name, Images images, Status status, User user_id, Categories categories, int likes, long img_id) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.created_atDATETIME = created_atDATETIME;
        this.file = file;
        this.file_name = file_name;
        this.images = images;
        this.status = status;
        this.user_id = user_id;
        this.categories = categories;
        Likes = likes;
        this.img_id = img_id;
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

    public User getUser_id() {
        return user_id;
    }

    public void setUser_id(User user_id) {
        this.user_id = user_id;
    }

    public Categories getCategories() {
        return categories;
    }

    public void setCategories(Categories categories) {
        this.categories = categories;
    }

    public Images getImages() {
        return images;
    }

    public void setImages(Images images) {
        this.images = images;
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public int getLikes() {
        return Likes;
    }

    public void setLikes(int likes) {
        Likes = likes;
    }

    public long getImg_id() {
        return img_id;
    }

    public void setImg_id(long img_id) {
        this.img_id = img_id;
    }
}