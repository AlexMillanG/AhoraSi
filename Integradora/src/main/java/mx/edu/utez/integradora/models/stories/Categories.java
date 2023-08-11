package mx.edu.utez.integradora.models.stories;

import mx.edu.utez.integradora.models.user.Images;

import java.util.Arrays;

public class Categories {
    private long id;
    private String category;
    private String fileName;
    private byte[] file;
    private Images images;
    private long img_id;

    public Categories() {
    }

    public Categories(long id, String category, String fileName, byte[] file, Images images, long img_id) {
        this.id = id;
        this.category = category;
        this.fileName = fileName;
        this.file = file;
        this.images = images;
        this.img_id = img_id;
    }

    public Categories(long id, String category) {
        this.id = id;
        this.category = category;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public byte[] getFile() {
        return file;
    }

    public void setFile(byte[] file) {
        this.file = file;
    }

    public Images getImages() {
        return images;
    }

    public void setImages(Images images) {
        this.images = images;
    }

    public long getImg_id() {
        return img_id;
    }

    public void setImg_id(long img_id) {
        this.img_id = img_id;
    }

    @Override
    public String toString() {
        return "Categories{" +
                "id=" + id +
                ", category='" + category + '\'' +
                ", fileName='" + fileName + '\'' +
                ", file=" + Arrays.toString(file) +
                ", images=" + images +
                '}';
    }
}
