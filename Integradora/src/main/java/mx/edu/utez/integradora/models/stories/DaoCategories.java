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
            String query = "SELECT * FROM categories;";  // CALL ShowCategories();

            pstm = conn.prepareStatement(query);
            rs = pstm.executeQuery();
            while (rs.next()) {
                Categories categorie = new Categories();
                categorie.setId(rs.getLong("id"));
                categorie.setCategory(rs.getString("category"));
                categorie.setImg_id(rs.getLong("img_id"));
                categories.add(categorie);
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE, "ERROR findAll" + e.getMessage());
        } finally {
            close();
        }
        return categories;
    }
    public Categories findFile(long id) {
        Categories categories = null;
        try {
            conn = new MySQLConnection().connect();
            String query = "SELECT * FRom  images WHERE id = ?;"; //CALL SelectImageById(1);

            pstm = conn.prepareStatement(query);
            pstm.setLong(1, id);
            rs = pstm.executeQuery();
            if (rs.next()) {
                categories = new Categories();
                categories.setFileName(rs.getString("file_name"));
                categories.setFile(rs.getBytes("image"));
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoCategories.class.getName())
                    .log(Level.SEVERE, "ERROR findFile" + e.getMessage());
        } finally {
            close();
        }
        return categories;
    }

    public Categories findOne(Long id) {
        try {
            conn = new MySQLConnection().connect();
            String query = "select * from categories where id=?"; // CALL SelectCategoryById(1);
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
            String query = "insert into images (image,file_name)values(?,?);";  //CALL InsertImage(<image_data>, '<file_name>');

            pstm=conn.prepareStatement(query,PreparedStatement.RETURN_GENERATED_KEYS);
            pstm.setBytes(1,categories.getFile());
            pstm.setString(2,categories.getFileName());
            pstm.execute();
            rs=pstm.getGeneratedKeys();
            if (rs.next()){
                long id= rs.getLong(1);//id Image
                System.out.println(id);
                String querySaveImg="insert into categories (category,img_id)values(?,?);"; //CALL InsertCategoryWithImage('<category_name>', <img_id>);

                pstm=conn.prepareStatement(querySaveImg);
                pstm.setString(1, categories.getCategory());
                pstm.setLong(2,id);
                pstm.execute();
            }
            conn.commit();
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
            String query = "update images set image=?,file_name=? where id=?;"; // CALL UpdateImage(<image_data>, '<file_name>', <image_id>);

            pstm=conn.prepareStatement(query,PreparedStatement.RETURN_GENERATED_KEYS);
            pstm.setBytes(1,categories.getFile());
            pstm.setString(2,categories.getFileName());
            pstm.setLong(3,categories.getImg_id());
            pstm.execute();
            rs=pstm.getGeneratedKeys();
            if (pstm.executeUpdate()==1){
                String query1="update categories set category=?,img_id=? where id=?;"; //CALL UpdateCategory('<new_category_name>', <new_img_id>, <category_id>);
                pstm=conn.prepareStatement(query1);
                pstm.setString(1, categories.getCategory());
                pstm.setLong(2,categories.getImg_id());
                pstm.setLong(3,categories.getId());
                pstm.execute();
            }
            conn.commit();
            return true;
        } catch (SQLException e) {
            Logger.getLogger(DaoCategories.class.getName())
                    .log(Level.SEVERE, "ERROR save " + e.getMessage());
        } finally {
            close();
        }
        return false;
    }

    public boolean delete(Long id) {
        try {
            conn = new MySQLConnection().connect();
            String query = "delete from categories where id=?"; //CALL DeleteCategory(1);
            pstm = conn.prepareStatement(query);
            System.out.println("Adentro del delete");
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




