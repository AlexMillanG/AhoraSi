package mx.edu.utez.integradora.models.stories;

import mx.edu.utez.integradora.models.actions.likes.DaoLikes;
import mx.edu.utez.integradora.models.user.Status;
import mx.edu.utez.integradora.models.user.User;
import mx.edu.utez.integradora.utils.MySQLConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoStories {
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;
    private CallableStatement cs;
    public List<Stories> findAllStories(){
        List<Stories> stories=new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query= "SELECT * from showStoriesByUser ;";
            pstm= conn.prepareStatement(query);
            rs= pstm.executeQuery();
            while (rs.next()){
                Stories stories1=new Stories();
                stories1.setId(rs.getLong("id"));
                stories1.setTitle(rs.getString("title"));
                stories1.setContent(rs.getString("content"));
                stories1.setCreated_atDATETIME(rs.getString("created_atDATETIME"));
                stories1.setImg_id(rs.getLong("image_id"));
                Status status= new Status();
                status.setType_status(rs.getString("status_id"));
                stories1.setStatus(status);

                Categories categories=new Categories();
                categories.setCategory(rs.getString("category"));
                categories.setId(rs.getLong("category_id"));
                stories1.setCategories(categories);
                stories.add(stories1);

            }
            DaoLikes daoLikes = new DaoLikes();
            for (Stories storyLike : stories) {
                System.out.println("story like: " +storyLike.getLikes() + " id: " +storyLike.getId());
                storyLike.setLikes(daoLikes.findAllLikes((int)storyLike.getId() ));
                System.out.println("story like: " +storyLike.getLikes() + " id: " +storyLike.getId());
            }

        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR FIANDALL stories"+e.getMessage());
        }finally {
            close();
        }
        return  stories;

    }
    public List<Stories> findAllWaitingArticles(){
        List<Stories> stories=new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query= "SELECT * from showStoriesByUser where status_id = 4;";
            pstm= conn.prepareStatement(query);
            rs= pstm.executeQuery();
            while (rs.next()){
                Stories stories1=new Stories();
                stories1.setId(rs.getLong("id"));
                stories1.setTitle(rs.getString("title"));
                stories1.setContent(rs.getString("content"));
                stories1.setCreated_atDATETIME(rs.getString("created_atDATETIME"));
                stories1.setFile(rs.getBytes("image_id"));//Aqui aun no funciona
                Status status= new Status();
                status.setType_status(rs.getString("status_id"));
                stories1.setStatus(status);

                Categories categories=new Categories();
                categories.setCategory(rs.getString("category"));
                categories.setId(rs.getLong("category_id"));
                stories1.setCategories(categories);
                stories.add(stories1);

            }

        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR FIANDALL stories"+e.getMessage());
        }finally {
            close();
        }
        return  stories;

    }

    public List<Stories> findAllPublishedArticles(){
        List<Stories> stories=new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query= "SELECT * from showStoriesByUser where status_id = 5;";
            pstm= conn.prepareStatement(query);
            rs= pstm.executeQuery();
            while (rs.next()){
                Stories stories1=new Stories();
                stories1.setId(rs.getLong("id"));
                stories1.setTitle(rs.getString("title"));
                stories1.setContent(rs.getString("content"));
                stories1.setCreated_atDATETIME(rs.getString("created_atDATETIME"));
                stories1.setFile(rs.getBytes("image_id"));//Aqui aun no funciona
                Status status= new Status();
                status.setType_status(rs.getString("status_id"));
                stories1.setStatus(status);

                Categories categories=new Categories();
                categories.setCategory(rs.getString("category"));
                categories.setId(rs.getLong("category_id"));
                stories1.setCategories(categories);
                stories.add(stories1);

            }

        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR FIANDALL stories"+e.getMessage());
        }finally {
            close();
        }
        return  stories;

    }



    public List<Stories> findAllUserStories(Long id){
        List<Stories> Stories=new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query= "SELECT * from showStoriesByUser where user_id = ?;";
            pstm= conn.prepareStatement(query);
            pstm.setLong(1,id);
            System.out.println("id en el dao "+id);

            rs= pstm.executeQuery();
            System.out.println(rs.next());
            while (rs.next())
            {
                Stories stories1=new Stories();
                stories1.setId(rs.getLong("id"));
                stories1.setTitle(rs.getString("title"));
                stories1.setContent(rs.getString("content"));
             //   stories1.setFile(rs.getBytes("image_id"));//Aqui aun no funciona
                User user = new User();
                user.setName(rs.getString("name_"));
                user.setLastname(rs.getString("lastname"));

                user.setSurname(rs.getString("surname"));
            //    user.setId(rs.getLong("id"));
                stories1.setUser_id(user);
                System.out.println(stories1.getTitle());
                System.out.println(stories1.getContent());

                Categories categories=new Categories();
                categories.setCategory(rs.getString("category"));
                stories1.setCategories(categories);
                Stories.add(stories1);

            }

        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR FIANDALL stories"+e.getMessage());
        }finally {
            close();
        }
        return  Stories;

    }
    public  boolean AproveArticle(Long id){
        try {
            conn=new MySQLConnection().connect();
            String query="update stories set status_id = 5 where id =?";
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

    public List<Categories> findAllCategories(){
        List<Categories> categories=new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query= "select * from categories;";
            pstm= conn.prepareStatement(query);
            rs= pstm.executeQuery();
            while (rs.next()){
                Categories categories1 = new Categories();

                categories1.setId(rs.getLong("id"));
                categories1.setCategory(rs.getString("category"));
                categories.add(categories1);
            }
        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR FIAND ALL categorias"+e.getMessage());
        }finally {
            close();
        }
        return  categories;
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
                stories.setCreated_atDATETIME(rs.getString("created_ad"));
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

    public boolean saveStory(Stories object){
        try {
            conn=new MySQLConnection().connect();
            conn.setAutoCommit(false); // Preparar la transaccion
            String queryImg = "insert into images (image,file_name)values(?,?);";
            pstm=conn.prepareStatement(queryImg,PreparedStatement.RETURN_GENERATED_KEYS);
            pstm.setBytes(1,object.getFile());
            pstm.setString(2,object.getFile_name());
            pstm.execute();
            rs=pstm.getGeneratedKeys();
            if (rs.next()){
                long id= rs.getLong(1);
                String query = "insert into stories(title,content,created_atDATETIME,status_id,user_id,category_id,image_id) values (?,?,curdate(),3,?,?,?);";
                pstm=conn.prepareStatement(query);
                pstm.setString(1,object.getTitle());
                pstm.setString(2,object.getContent());
                pstm.setLong(3,object.getUser_id().getId());
                System.out.println(object.getUser_id().getId());
                pstm.setLong(4,object.getCategories().getId());
                System.out.println(object.getCategories().getId());
                pstm.setLong(5,id);
                pstm.execute();
            }
            conn.commit();
            return true;
        }catch (SQLException e){
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE,"ERROR save"+e.getMessage());
        }finally {
            close();
        }
        return false;
    }
    public Stories findFile(long id) {
        Stories stories = null;
        try {
            conn = new MySQLConnection().connect();
            String query = "SELECT * FROM images WHERE id = ?;";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, id);
            rs = pstm.executeQuery();
            if (rs.next()) {
                stories = new Stories();
                stories.setFile_name(rs.getString("file_name"));
                stories.setFile(rs.getBytes("image"));
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoCategories.class.getName())
                    .log(Level.SEVERE, "ERROR findFile" + e.getMessage());
        } finally {
            close();
        }
        return stories;
    }


    public boolean updateStory(Stories object) {
        try {
            conn = new MySQLConnection().connect();
            String query = "UPDATE stories SET tile=?, content=?, created_at=?, image_id=?, status_id=?, user_id=?, category_id=? WHERE story_id=?";
            pstm = conn.prepareStatement(query);
            pstm.setString(1, object.getTitle());
            pstm.setString(2, object.getContent());
            pstm.setString(3, object.getCreated_atDATETIME());
            pstm.setBytes(4, object.getFile());
            pstm.setObject(5, object.getStatus());
            pstm.setLong(6, object.getUser_id().getId());
            pstm.setObject(7, object.getCategories().getId());
//            pstm.setLong(8, object.getStory_id()); // Asegúrate de reemplazar getStoryId() con el método correcto que obtiene el ID de la historia.
            return pstm.executeUpdate() > 0;
        } catch (SQLException e) {
            Logger.getLogger(DaoStories.class.getName()).log(Level.SEVERE, "ERROR update" + e.getMessage());
        } finally {
            close();
        }
        return false;
    }


    public  boolean delete(Long id){
        try {
            conn=new MySQLConnection().connect();
            String query="delete from stories where id=?";
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


    public List<Categories> types() {
        List<Categories> list = new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query = "SELECT * FROM Categories;";
            pstm = conn.prepareStatement(query);
            rs = pstm.executeQuery();
            while (rs.next()) {
                Categories categories = new Categories();
                categories.setId(rs.getLong("id"));
                categories.setCategory(rs.getString("category"));
                list.add(categories);
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoStories.class.getName())
                    .log(Level.SEVERE,
                            "Get types : " + e.getMessage());
        } finally {
            close();
        }
        return list;
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
