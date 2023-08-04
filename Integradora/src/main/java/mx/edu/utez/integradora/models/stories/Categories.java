package mx.edu.utez.integradora.models.stories;

public class Categories {
    private long id;
    private String category;
    private String fileName;
    private byte[] file;

    public Categories() {
    }

    public Categories(long id, String category, String fileName, byte[] file) {
        this.id = id;
        this.category = category;
        this.fileName = fileName;
        this.file = file;
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
}
