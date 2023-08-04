package mx.edu.utez.integradora.models.stories;

import mx.edu.utez.integradora.models.user.DaoUser;
import mx.edu.utez.integradora.models.user.Rols;
import mx.edu.utez.integradora.models.user.User;
import mx.edu.utez.integradora.utils.MySQLConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoCategories {
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;
    private CallableStatement cs;

    public List<Categories> fiandAll() {
        List<Categories> categories = new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query = "SELECT * FROM categoties;";
            pstm = conn.prepareStatement(query);
            rs = pstm.executeQuery();
            while (rs.next()) {
                Categories categorie = new Categories();
                categorie.setId(rs.getLong("id"));
                categorie.setCategory(rs.getString("category"));
                categories.add(categorie);
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE, "ERROR findAll" + e.getMessage());
        } finally {
            close();
        }
        return categories;
    }

    public Categories findOne(Long id) {
        try {
            conn = new MySQLConnection().connect();
            String query = "select * from categories where id=?";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, id);
            rs = pstm.executeQuery();
            Categories categories = new Categories();
            if (rs.next()) {
                categories.setId(rs.getLong("id"));
                categories.setCategory(rs.getString("category"));
            }
            return categories;
        } catch (SQLException e) {
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE, "ERROR findOne" + e.getMessage());

        } finally {
            close();
        }
        return null;
    }

    public boolean save(Categories categories) throws SQLException {
        try {
            conn = new MySQLConnection().connect();
            conn.setAutoCommit(false); // Preparar la transaccion
            String query = "insert into  categories(category) values(?);";
            pstm = conn.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
            pstm = conn.prepareStatement(query);
            pstm.setString(1, categories.getCategory());
            rs = pstm.getGeneratedKeys();
            if (rs.next()) {
                long id = rs.getLong(1);//ID pokemon
                String querySaveImg = "INSERT INTO images (image, file_name) VALUES (?,?);";
                pstm = conn.prepareStatement(querySaveImg);
                pstm.setBytes(1, categories.getFile());
                pstm.setString(2, categories.getFileName());
                pstm.execute();
            }
            conn.commit(); // flush - COMMIT;
            return true;
        } catch (SQLException e) {
            Logger.getLogger(DaoCategories.class.getName())
                    .log(Level.SEVERE, "ERROR save " + e.getMessage());
            conn.rollback();
        } finally {
            close();
        }
        return false;
    }

    public boolean update(Categories categories) throws SQLException {
        try {
            conn = new MySQLConnection().connect();
            conn.setAutoCommit(false); // Preparar la transaccion
            String query = "update caregories c  set c.category=? where c.id=?;";
            pstm = conn.prepareStatement(query, PreparedStatement.RETURN_GENERATED_KEYS);
            pstm = conn.prepareStatement(query);
            pstm.setString(1, categories.getCategory());
            pstm.setLong(2, categories.getId());
            rs = pstm.getGeneratedKeys();
            if (rs.next()) {
                long id = rs.getLong(1);//ID pokemon
                String querySaveImg = "UPDATE  images i SET i.image=? i.file_name=?   VALUES (?,?);";
                pstm = conn.prepareStatement(querySaveImg);
                pstm.setBytes(1, categories.getFile());
                pstm.setString(2, categories.getFileName());
                pstm.execute();
            }
            conn.commit(); // flush - COMMIT;
            return true;
        } catch (SQLException e) {
            Logger.getLogger(DaoCategories.class.getName())
                    .log(Level.SEVERE, "ERROR save " + e.getMessage());
            conn.rollback();
        } finally {
            close();
        }
        return false;

        //Probablemente no se actualizara
    }

    public boolean delete(Long id) {
        try {
            conn = new MySQLConnection().connect();
            String query = "delete * from categories where id=?";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, id);
            return pstm.executeUpdate() == 1;
        } catch (SQLException e) {
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE, "ERROR delete" + e.getMessage());
        } finally {
            close();
        }
        return false;
    }

    public void close() {
        try {
            if (conn != null) conn.close();
            if (pstm != null) pstm.close();
            if (rs != null) pstm.close();
        } catch (SQLException e) {

        }
    }
}


