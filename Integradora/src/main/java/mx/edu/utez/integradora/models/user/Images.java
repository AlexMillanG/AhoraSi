package mx.edu.utez.integradora.models.user;

public class Images {
    private  long id;
    private byte file[];
    private  String file_name;

    public Images() {
    }

    public Images(long id, byte[] file, String file_name) {
        this.id = id;
        this.file = file;
        this.file_name = file_name;
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

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }
}
