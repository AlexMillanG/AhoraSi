package mx.edu.utez.integradora.models.stories;

import mx.edu.utez.integradora.models.user.Status;
import mx.edu.utez.integradora.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoStories {
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;
    public List<Stories> fiandAll(){
        List<Stories> stories1=new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query= "select * from stories;";
            pstm= conn.prepareStatement(query);
            rs= pstm.executeQuery();
            while (rs.next()){
                Stories stories=new Stories();
                stories.setId(rs.getLong("id"));
                stories.setTitle(rs.getString("title"));
                stories.setContent(rs.getString("content"));
                stories.setCreated_ad(rs.getString("created_ad"));
                stories.setFile(rs.getBytes("file"));//Aqui aun no funciona
                Status status= new Status();
                status.setType_status(rs.getString("type_status"));
                stories.setStatus(status);
                Categories categories=new Categories();
                categories.setCategory(rs.getString("category"));
                stories.setCategories(categories);
                stories1.add(stories);

            }

        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR FIANDALL"+e.getMessage());
        }finally {
            close();
        }
        return  stories1;

    }

    public  Stories findOne(Long id){
        try {
            conn = new MySQLConnection().connect();
            String query="select * from stories where id= ?";
            pstm= conn.prepareStatement(query);
            pstm.setLong(1,id);
            rs= pstm.executeQuery();
            Stories stories=new Stories();
            if (rs.next()){
                stories.setId(rs.getLong("id"));
                stories.setTitle(rs.getString("title"));
                stories.setContent(rs.getString("content"));
                stories.setCreated_ad(rs.getString("created_ad"));
                stories.setFile(rs.getBytes("file"));//Aqui aun no funciona
                Status status= new Status();
                status.setType_status(rs.getString("type_status"));
                stories.setStatus(status);
                Categories categories=new Categories();
                categories.setCategory(rs.getString("category"));
                stories.setCategories(categories);
            }
            return stories;
        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR FIANDONE"+e.getMessage());

        }finally {
            close();
        }
        return  null;
    }

    public boolean save(Stories object){
        try {
            conn=new MySQLConnection().connect();
            String query = "insert into ;";
            pstm=conn.prepareStatement(query);
            pstm.setString(1,object.getTitle());
            pstm.setString(2,object.getContent());
            pstm.setString(3,object.getCreated_ad());
         //   pstm.setBytes(4,object.getFile());
            pstm.setObject(4,object.getStatus());
            pstm.setObject(5,object.getCategories());
            return pstm.executeUpdate()>0;

        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR save"+e.getMessage());
        }finally {
            close();
        }
        return false;
    }

    public boolean update(Stories object){
        try {
            conn=new MySQLConnection().connect();
            String query="update set";
            pstm=conn.prepareStatement(query);
            pstm.setString(1,object.getTitle());
            pstm.setString(2,object.getContent());
            pstm.setString(3,object.getCreated_ad());
            //   pstm.setBytes(4,object.getFile());
            pstm.setObject(4,object.getStatus());
            pstm.setObject(5,object.getCategories());
            return pstm.executeUpdate()>0;
        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR update"+e.getMessage());
        }finally {
            close();
        }


        return false;
    }

    public  boolean delete(Long id){
        try {
            conn=new MySQLConnection().connect();
            String query="delete * from users where id=?";
            pstm= conn.prepareStatement(query);
            pstm.setLong(1,id);
            return pstm.executeUpdate()==1;
        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR delete"+e.getMessage());
        }finally {
            close();
        }
        return false;
    }

    public void close(){
        try{
            if (conn!=null)conn.close();
            if(pstm!= null)pstm.close();
            if (rs!= null)pstm.close();
        }catch (SQLException e){

        }
}
}
