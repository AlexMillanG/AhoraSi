package mx.edu.utez.integradora.models.actions.likes;

import mx.edu.utez.integradora.models.crud.DaoRepository;
import mx.edu.utez.integradora.models.stories.DaoStories;
import mx.edu.utez.integradora.models.stories.Stories;
import mx.edu.utez.integradora.models.user.User;
import mx.edu.utez.integradora.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoLikes  {
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    public boolean save(Likes object) {
        try {
        conn=new MySQLConnection().connect();
        String query = "INSERT INTO likes(story_id, user_id) values (?,?)";
        pstm=conn.prepareStatement(query);
        pstm.setLong(1,object.getStories().getId());
        pstm.setLong(2,object.getUser().getId());
        return pstm.executeUpdate()>0;

        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR save"+e.getMessage());

        }finally {
            close();
        }
        return false;
    }


    public  List<Likes> findAllLikes(){
        List<Likes> likes = new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query = "SELECT * from likes where = story_id = ?;";
            pstm = conn.prepareStatement(query);
            rs = pstm.executeQuery();
            while (rs.next()){
                Likes likes1 = new Likes();
                Stories story = new Stories();
                story.setId(rs.getLong("id"));
                likes1.setStories(story);
                User user = new User();
                user.setId(rs.getLong("id"));
                likes1.setUser(user);
                likes.add(likes1);
            }
        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR FIANDALL Likes"+e.getMessage());
        }finally {
            close();
        }
        return likes;
    }

    public boolean delete(Long id){
        try {
            conn = new MySQLConnection().connect();
            String query = "delete from likes where user_id = ?;";
            pstm= conn.prepareStatement(query);
            pstm.setLong(1,id);
            return pstm.executeUpdate()==1;
        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR delete Like"+e.getMessage());
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