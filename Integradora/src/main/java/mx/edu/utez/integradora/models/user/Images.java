package mx.edu.utez.integradora.models.user;

public class Images {
    private  long id;
    private byte file[];
    private  String filename;

    public Images() {
    }

    public Images(long id, byte[] file, String file_name) {
        this.id = id;
        this.file = file;
        this.filename = file_name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public byte[] getFile() {
        return file;
    }

    public void setFile(byte[] file) {
        this.file = file;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }
}
