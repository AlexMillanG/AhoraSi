package mx.edu.utez.integradora.models.stories;

public class Categories {
    private long id;
    private String category;

    public Categories() {
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
}
