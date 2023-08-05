package mx.edu.utez.integradora.models.user;

public class User {
    private long id;
    private String name;
    private String lastname;
    private String surname;
    private String birthday;
    private String sex;
    private String email;
    private String pass;
    private String token;
    private Images images;
    private byte[] image;
     private  Rols rols;
     private Status status;

    public User() {
    }

    public User(long id, String name, String lastname, String surname, String birthday, String sex, String email, String pass, String token, Images images, byte[] image, Rols rols, Status status) {
        this.id = id;
        this.name = name;
        this.lastname = lastname;
        this.surname = surname;
        this.birthday = birthday;
        this.sex = sex;
        this.email = email;
        this.pass = pass;
        this.token = token;
        this.images = images;
        this.image = image;
        this.rols = rols;
        this.status = status;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public Rols getRols() {
        return rols;
    }

    public void setRols(Rols rols) {
        this.rols = rols;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Images getImages() {
        return images;
    }

    public void setImages(Images images) {
        this.images = images;
    }
}
