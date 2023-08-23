package mx.edu.utez.integradora.models.user;

import mx.edu.utez.integradora.models.crud.DaoRepository;
import mx.edu.utez.integradora.models.stories.Categories;
import mx.edu.utez.integradora.models.stories.DaoCategories;
import mx.edu.utez.integradora.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoUser implements DaoRepository<User> {
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

    public User loadUserByUsernameAndPassword(String email,String pass){
        try {
            conn= new MySQLConnection().connect();
            String query ="select users.*,rols.rol from users " +
                    "inner join rols on rols.id=users.rol_id " +
                    "where email=? and pass=? and status_id=1";
            pstm=conn.prepareStatement(query);
            pstm.setString(1,email);
            pstm.setString(2,pass);
            rs=pstm.executeQuery();
            if(rs.next()){
                User user=new User();
                user.setId(rs.getLong("id"));
                user.setName(rs.getString("name_"));
                user.setLastname(rs.getString("lastname"));
                user.setSurname(rs.getString("surname"));
                user.setBirthday(rs.getString("birthday"));
                user.setSex(rs.getString("sex"));
                user.setEmail(rs.getString("email"));
                user.setPass(rs.getString("pass"));
                user.setIdImg(rs.getLong("image_id"));
                Rols role= new Rols();
                role.setRol(rs.getString("rol"));
                user.setRols(role);
                return user;
            }
        }catch (SQLException e){
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE,"Credential mismatch"+e.getMessage());
            System.out.println(e.getMessage());
        }finally {
            close();
        }
        return null;
    }
    public List<User> findAllAdmin(){
        List<User> admins =new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query ="SELECT * FROM USERS where rol_id != 1 and rol_id!=3";
            pstm = conn.prepareStatement(query);
            rs=pstm.executeQuery();
            while (rs.next()){
                User admin=new User();
                admin.setId(rs.getLong("id"));
                admin.setName(rs.getString("name_"));
                admin.setLastname(rs.getString("lastname"));
                admin.setSurname(rs.getString("surname"));
                admin.setBirthday(rs.getString("birthday"));
                admin.setSex(rs.getString("sex"));
                admin.setEmail(rs.getString("email"));
                admin.setPass(rs.getString("pass"));
           /*     Rols role= new Rols();
                role.setRol(rs.getString("rol"));
                user.setRols(role);*/
                admins.add(admin);
            }
        }catch (SQLException e){
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE,"ERROR findAll"+e.getMessage());
        }finally {
            close();
        }
        return admins;

    }

    public boolean createAdmin(User object) {
        try {
            conn= new MySQLConnection().connect();
            String query="insert into  users(name_,lastname,surname,birthday,sex,email,pass,rol_id,status_id) values(?,?,?,?,?,?,?,2,1);";
            pstm= conn.prepareStatement(query);
            pstm.setString(1,object.getName());
            pstm.setString(2,object.getLastname());
            pstm.setString(3,object.getSurname());
            pstm.setString(4,object.getBirthday());
            pstm.setString(5,object.getSex());
            pstm.setString(6,object.getEmail());
            pstm.setString(7,object.getPass());
            /*pstm.setLong(8,object.getRols().getId());
            pstm.setLong(9,object.getStatus().getId());*/
            return pstm.executeUpdate()>0;
        }catch (SQLException e){
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE,"ERROR createAdmin"+e.getMessage());
        }finally {
            close();
        }
        return false;
    }

    @Override
    public List<User> fiandAll() {
        List<User> users =new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query ="SELECT * FROM USERS where rol_id != 1 and rol_id!=2;";
            pstm = conn.prepareStatement(query);
            rs=pstm.executeQuery();
            while (rs.next()){
                User user=new User();
                user.setId(rs.getLong("id"));
                user.setName(rs.getString("name_"));
                user.setLastname(rs.getString("lastname"));
                user.setSurname(rs.getString("surname"));
                user.setBirthday(rs.getString("birthday"));
                user.setSex(rs.getString("sex"));
                user.setEmail(rs.getString("email"));
                user.setPass(rs.getString("pass"));

                users.add(user);
            }
        }catch (SQLException e){
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE,"ERROR findAll"+e.getMessage());
        }finally {
            close();
        }
        return users;
    }

    @Override
    public User findOne(Long id) {
        try{
            conn=new MySQLConnection().connect();
            String query="select * from users where id=?";
            pstm= conn.prepareStatement(query);
            pstm.setLong(1,id);
            rs= pstm.executeQuery();
            User user=new User();
            if (rs.next()){
                user.setId(rs.getLong("id"));
                user.setName(rs.getString("name_"));
                user.setLastname(rs.getString("lastname"));
                user.setSurname(rs.getString("surname"));
                user.setBirthday(rs.getString("birthday"));
                user.setSex(rs.getString("sex"));
                user.setEmail(rs.getString("email"));
                user.setPass(rs.getString("pass"));
                user.setIdImg(rs.getLong("image_id"));
            }
            return user;
        }catch (SQLException e){
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE,"ERROR findOne"+e.getMessage());

        }finally {
            close();
        }
        return null;
    }

    @Override
   public boolean save(User object)throws SQLException {
        try {
            conn= new MySQLConnection().connect();
            conn.setAutoCommit(false);
            String queryImg="insert into images (image,file_name)values(?,?);";
            pstm=conn.prepareStatement(queryImg,PreparedStatement.RETURN_GENERATED_KEYS);
            pstm.setBytes(1,object.getImage());
            pstm.setString(2,object.getFile_name());
            pstm.execute();
            rs=pstm.getGeneratedKeys();
            if (rs.next()){
                String query="insert into users(name_,lastname,surname,birthday,sex,email,pass,rol_id,status_id,image_id) values(?,?,?,?,?,?,?,3,1,?);";
                long id=rs.getLong(1);
                pstm= conn.prepareStatement(query);
                pstm.setString(1,object.getName());
                pstm.setString(2,object.getLastname());
                pstm.setString(3,object.getSurname());
                pstm.setString(4,object.getBirthday());
                pstm.setString(5,object.getSex());
                pstm.setString(6,object.getEmail());
                pstm.setString(7,object.getPass());
                pstm.setLong(8,id);
                pstm.execute();
            }
            conn.commit();
            return true;
        } catch (SQLException e) {
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE, "ERROR save " + e.getMessage());
            conn.rollback();
        } finally {
            close();
        }
        return false;
   }

    @Override
    public boolean update(User object) throws SQLException {
        try {
            conn= new MySQLConnection().connect();
            conn.setAutoCommit(false);
            String queryImg = "update images set image=?,file_name=? where id=?;";
            pstm=conn.prepareStatement(queryImg,PreparedStatement.RETURN_GENERATED_KEYS);
            pstm.setBytes(1,object.getImage());
            pstm.setString(2,object.getFile_name());
            pstm.setLong(3,object.getIdImg());
            pstm.execute();
            rs= pstm.getGeneratedKeys();
            if (pstm.executeUpdate()==1){
                String query="UPDATE users SET name_=?, lastname=?, surname=?, birthday=?, sex=?, email=?, pass=?, rol_id=?, status_id=? WHERE id=?;";
                pstm= conn.prepareStatement(query);
                pstm.setString(1,object.getName());
                pstm.setString(2,object.getLastname());
                pstm.setString(3,object.getSurname());
                pstm.setString(4,object.getBirthday());
                pstm.setString(5,object.getSex());
                pstm.setString(6,object.getEmail());
                pstm.setString(7,object.getPass());
                pstm.setLong(8,object.getRols().getId());
                pstm.setLong(9,object.getStatus().getId());
                pstm.setLong(10,object.getId());
                pstm.executeUpdate();
             }
            conn.commit();
            return true;
        }catch (SQLException e){
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE,"ERROR Update"+e.getMessage());
        conn.rollback();
        }
        return false;
    }
    public Images findFile(long id) {
        Images images = null;
        try {
            conn = new MySQLConnection().connect();
            String query = "SELECT * FROM images WHERE id = ?;";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, id);
            rs = pstm.executeQuery();
            if (rs.next()) {
                images = new Images();
                images.setFilename(rs.getString("file_name"));
                images.setFile(rs.getBytes("image"));
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoCategories.class.getName())
                    .log(Level.SEVERE, "ERROR findFile" + e.getMessage());
        } finally {
            close();
        }
        return images;
    }

    public User findFile2(long id) {
      User user = null;
        try {
            conn = new MySQLConnection().connect();
            String query = "SELECT * FROM images WHERE id = ?;";
            pstm = conn.prepareStatement(query);
            pstm.setLong(1, id);
            rs = pstm.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setFile_name(rs.getString("file_name"));
                user.setImage(rs.getBytes("image"));
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoCategories.class.getName())
                    .log(Level.SEVERE, "ERROR findFile" + e.getMessage());
        } finally {
            close();
        }
        return user;
    }

    public List<Images> imagesList() {
        List<Images> list = new ArrayList<>();
        try {
            conn = new MySQLConnection().connect();
            String query = "SELECT * FROM images;";
            pstm = conn.prepareStatement(query);
            rs = pstm.executeQuery();
            while (rs.next()) {
                Images type = new Images();
                type.setId(rs.getLong("id"));
                type.setFilename(rs.getString("file_name"));
                type.setFile(rs.getBytes("image"));
                list.add(type);
            }
        } catch (SQLException e) {
            Logger.getLogger(DaoUser.class.getName())
                    .log(Level.SEVERE,
                            "Erro bussqueda Img: " + e.getMessage());
        } finally {
            close();
        }
        return list;
    }

    public boolean saveImg(Images images) throws SQLException{
        try {
            conn = new MySQLConnection().connect();
            conn.setAutoCommit(false); // Preparar la transaccion
            String query = "insert into images (image,file_name)values(?,?);";
            pstm=conn.prepareStatement(query,PreparedStatement.RETURN_GENERATED_KEYS);
            pstm.setBytes(1,images.getFile());
            pstm.setString(2,images.getFilename());
            pstm.execute();
            conn.commit();
            return true;
        }catch (SQLException e) {
            Logger.getLogger(DaoCategories.class.getName())
                    .log(Level.SEVERE, "ERROR saveImg " + e.getMessage());
            conn.rollback();
        } finally {
            close();
        }
        return false;

    }
    public boolean updateAdmin(User object) {
        try {
            conn= new MySQLConnection().connect();
            String query="update   users set name_ =? ,lastname = ? ,surname = ?,birthday = ?,sex = ?,email = ?,pass = ?,rol_id = ?,status_id = ? where rol_id =2;";
            pstm= conn.prepareStatement(query);
            pstm.setString(1,object.getName());
            pstm.setString(2,object.getLastname());
            pstm.setString(3,object.getSurname());
            pstm.setString(4,object.getBirthday());
            pstm.setString(5,object.getSex());
            pstm.setString(6,object.getEmail());
            pstm.setString(7,object.getPass());
            pstm.setLong(8,object.getRols().getId());
            pstm.setLong(9,object.getStatus().getId());
            return pstm.executeUpdate()>0;
        }catch (SQLException e){
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE,"ERROR Update"+e.getMessage());

        }
        return false;
    }

    @Override
    public boolean delete(Long id) {
        try {
            conn=new  MySQLConnection().connect();
            String query="delete from users where id=?;";
            pstm= conn.prepareStatement(query);
            pstm.setLong(1,id);
            return pstm.executeUpdate()==1;
        }catch (SQLException e ){
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE, "Error delete" + e.getMessage());

        }finally {
            close();
        }
        return false;
    }
    public boolean deleteAdmin(Long id) {
        try {
            conn=new  MySQLConnection().connect();
            String query="delete from users where id=? and rol_id =2;";
            pstm= conn.prepareStatement(query);
            pstm.setLong(1,id);
            return pstm.executeUpdate()==1;
        }catch (SQLException e ){
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE, "Error delete" + e.getMessage());

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
