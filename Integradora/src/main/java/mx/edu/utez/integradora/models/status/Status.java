package mx.edu.utez.integradora.models.status;

public class Status {
private int id;
private String type_status;

    public Status() {
    }

    public Status(int id, String type_status) {
        this.id = id;
        this.type_status = type_status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getType_status() {
        return type_status;
    }

    public void setType_status(String type_status) {
        this.type_status = type_status;
    }
}

