package mx.edu.utez.integradora.models.actions.Shared;

import mx.edu.utez.integradora.models.actions.likes.DaoLikes;
import mx.edu.utez.integradora.models.actions.likes.Likes;
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

public class DaoShared {
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    public boolean save(Shared object) {
        try {
            conn = new MySQLConnection().connect();
            String query = "INSERT INTO shared (story_id, user_id) values (?,?)";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, object.getStories().getId());
            pstm.setLong(2, object.getUser().getId());
            return pstm.executeUpdate() > 0;

        } catch (SQLException e) {
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE, "ERROR save shared" + e.getMessage());

        } finally {
            close();
        }
        return false;
    }

    public List<Shared> FindAllSharedStories(Long user_id) {
        List<Shared> shareds = new ArrayList<>();
        List<Stories>Stories=new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query = "SELECT * from SharedStories where user_id = ?;";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, user_id);
            rs = pstm.executeQuery();
            while (rs.next()) {
            Shared shared = new Shared();
                User user = new User();
                user.setId(rs.getLong("user_id"));
                user.setName(rs.getString("name_"));
                user.setLastname(rs.getString("lastname"));
                user.setSurname(rs.getString("surname"));
                Stories stories = new Stories();
                stories.setId(rs.getLong("story_id"));
                stories.setTitle(rs.getString("title"));
                stories.setContent(rs.getString("content"));
                stories.setImg_id(rs.getLong("image_id"));
                Stories.add(stories);
                shared.setStories(stories);
                shared.setUser(user);
            shareds.add(shared);
            } DaoLikes daoLikes = new DaoLikes();
            for (Stories storyLike : Stories) {
                storyLike.setLikes(daoLikes.findAllLikes((int)storyLike.getId() ));
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE, "ERROR FINDALL shared" + e.getMessage());
        } finally {
            close();
        }
        return shareds;

    }


    public boolean delete(Long user_id, Long story_id) {
        try {
            conn = new MySQLConnection().connect();
            String query = "delete from shared where user_id = ? and story_id = ?;";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, user_id);
            pstm.setLong(2, story_id);
            return pstm.executeUpdate() >= 1;
        } catch (SQLException e) {
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE, "ERROR delete shared" + e.getMessage());
        } finally {
            close();
        }
        return false;
    }


    public void close() {
        try {
            if (conn != null) conn.close();
            if (pstm != null) pstm.close();
            if (rs != null) rs.close();
        } catch (SQLException e) {

        }
    }
}