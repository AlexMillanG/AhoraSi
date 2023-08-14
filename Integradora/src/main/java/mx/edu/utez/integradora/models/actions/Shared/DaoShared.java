package mx.edu.utez.integradora.models.actions.Shared;

import mx.edu.utez.integradora.models.actions.likes.Likes;
import mx.edu.utez.integradora.models.stories.DaoStories;
import mx.edu.utez.integradora.models.stories.Stories;
import mx.edu.utez.integradora.models.user.User;
import mx.edu.utez.integradora.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoShared {
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    public boolean save(Likes object) {
        try {
            conn = new MySQLConnection().connect();
            String query = "INSERT INTO likes(story_id, user_id) values (?,?)";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, object.getStories().getId());
            pstm.setLong(2, object.getUser().getId());
            return pstm.executeUpdate() > 0;

        } catch (SQLException e) {
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE, "ERROR save" + e.getMessage());

        } finally {
            close();
        }
        return false;
    }

    public Likes findAllLikes1(int story_id) {
        try {
            conn = new MySQLConnection().connect();
            String query = "SELECT count(*) from likes where = story_id = ?;";
            pstm = conn.prepareStatement(query);
            pstm.setInt(1, story_id);
            rs = pstm.executeQuery();
            Likes likes1 = new Likes();
            if (rs.next()) {
                Stories story = new Stories();
                story.setId(rs.getLong("story_id"));
                likes1.setStories(story);
                User user = new User();
                user.setId(rs.getLong("user_id"));
                likes1.setUser(user);

            }
            return likes1;
        } catch (SQLException e) {
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE, "ERROR FINDALL Likes" + e.getMessage());
        } finally {
            close();
        }
        return null;

    }

    public int findAllLikes(int story_id) {
        try {
            int valor = 0;
            System.out.println("get story_id: " + story_id);

            conn = new MySQLConnection().connect();
            String query = "select  count(*) as eldrip from likes where story_id = ?;";
            pstm = conn.prepareStatement(query);
            pstm.setInt(1, story_id);
            rs = pstm.executeQuery();
            System.out.println(rs.getFetchSize());
            Likes likes1 = new Likes();
            System.out.println("get row : " + rs.getRow());
            if (rs.next()) {
                valor = rs.getInt("eldrip");

            }
            return valor;
        } catch (SQLException e) {
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE, "ERROR FINDALL Likes" + e.getMessage());
            return 0;
        } finally {

            close();
        }

    }

    public boolean delete(Long user_id, Long story_id) {
        try {
            conn = new MySQLConnection().connect();
            String query = "delete from likes where user_id = ? and story_id = ?;";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, user_id);
            pstm.setLong(2, story_id);
            return pstm.executeUpdate() > 1;
        } catch (SQLException e) {
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE, "ERROR delete Like" + e.getMessage());
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