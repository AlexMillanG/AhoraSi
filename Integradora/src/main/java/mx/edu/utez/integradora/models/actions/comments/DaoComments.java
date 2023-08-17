package mx.edu.utez.integradora.models.actions.comments;

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

public class DaoComments {
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    public boolean saveComment (Comments object){
        try{
            conn = new MySQLConnection().connect();
            String query="insert into comments (content, story_id, user_id) values (?,?,?);";
            pstm= conn.prepareStatement(query);
            pstm.setString(1,object.getContent());
            pstm.setLong(2,object.getStories().getId());
            pstm.setLong(3,object.getUser().getId());
            return pstm.executeUpdate()>0;
        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR save Comment"+e.getMessage());
        }finally {
            close();
        }
        return false;
    }


    public boolean saveResponse (Comments object){
        try{
            conn = new MySQLConnection().connect();
            String query="insert into comments (content, story_id, user_id, comment_id) values (?,?,?,?);";
            pstm= conn.prepareStatement(query);
            pstm.setString(1,object.getContent());
            pstm.setLong(2,object.getStories().getId());
            pstm.setLong(3,object.getUser().getId());
            pstm.setLong(4,object.getComments().getId());
            return pstm.executeUpdate()>0;
        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR save response dao"+e.getMessage());
        }finally {
            close();
        }
        return false;
    }
    public List<Comments> findAllComments(Long id){
        List <Comments> comments1 = new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query ="SELECT * from Comments where story_id = ?;";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1,id);
            rs = pstm.executeQuery();
            while (rs.next()){
                Comments comments = new Comments();

                comments.setId(rs.getLong("id"));
                comments.setContent(rs.getString("content"));
                User user = new User();
                user.setId(rs.getLong("id"));
                comments.setUser(user);
                Stories stories=new Stories();
                stories.setId(rs.getLong("story_id"));
                comments.setStories(stories);
                comments1.add(comments);
            }
        return comments1;
        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR FIANDALL stories"+e.getMessage());
        }finally {
            close();
        }
        return null;
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
