package mx.edu.utez.integradora.models.actions.comments;

import mx.edu.utez.integradora.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
            pstm.setString(2,object.getStories());
            pstm.setString(3,object.getUser().getId());
            return pstm.executeUpdate()>0;
        }catch (SQLException e){

        }finally {

        }
    }

}
