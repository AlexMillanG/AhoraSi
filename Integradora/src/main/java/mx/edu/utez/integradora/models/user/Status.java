package mx.edu.utez.integradora.models.user;

public class Status {
    private long id;
    private String type_status;

    public Status() {
    }

    public Status(long id, String type_status) {
        this.id = id;
        this.type_status = type_status;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getType_status() {
        return type_status;
    }

    public void setType_status(String type_status) {
        this.type_status = type_status;
    }

    @Override
    public String toString() {
        return "Status{" +
                "id=" + id +
                ", type_status='" + type_status + '\'' +
                '}';
    }
}
