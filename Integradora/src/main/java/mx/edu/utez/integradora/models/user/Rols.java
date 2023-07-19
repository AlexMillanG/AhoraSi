package mx.edu.utez.integradora.models.user;

public class Rols {
    private  long id;
    private  String rol;

    public Rols() {
    }

    public Rols(long id, String rol) {
        this.id = id;
        this.rol = rol;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
}
