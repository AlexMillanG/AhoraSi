package mx.edu.utez.integradora.models.user;

import mx.edu.utez.integradora.models.crud.DaoRepository;
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
           /*     Rols role= new Rols();
                role.setRol(rs.getString("rol"));
                user.setRols(role);*/
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
//                Rols role= new Rols();
//                role.setRol(rs.getString("rols"));
//                user.setRols(role);
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
   public boolean save(User object) {
        try {
            conn= new MySQLConnection().connect();
            String query="insert into users(name_,lastname,surname,birthday,sex,email,pass,rol_id,status_id) values(?,?,?,?,?,?,?,3,1);";
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
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE,"ERROR save"+e.getMessage());
        }finally {
            close();
        }
        return false;
   }

    @Override
    public boolean update(User object) {
        try {
            conn= new MySQLConnection().connect();
            String query="UPDATE users SET name_=?, lastname=?, surname=?, birthday=?, sex=?, email=?, pass=?, rol_id=?, status_id=? WHERE id=?;";
            pstm= conn.prepareStatement(query);
            pstm.setString(1,object.getName());
            System.out.println(object.getName());
            pstm.setString(2,object.getLastname());
            pstm.setString(3,object.getSurname());
            pstm.setString(4,object.getBirthday());
            pstm.setString(5,object.getSex());
            pstm.setString(6,object.getEmail());
            pstm.setString(7,object.getPass());
            System.out.println(object.getRols().getId());
            pstm.setLong(8,object.getRols().getId());
            pstm.setLong(9,object.getStatus().getId());
            pstm.setLong(10,object.getId());
            System.out.println("rolID"+object.getRols().getId());
            System.out.println("Status"+object.getStatus().getId());
            return pstm.executeUpdate()>0;
        }catch (SQLException e){
            Logger.getLogger(DaoUser.class.getName()).log(Level.SEVERE,"ERROR Update"+e.getMessage());

        }
        return false;
    }


    public boolean updateAdmin(User object) {
        try {
            conn= new MySQLConnection().connect();
            String query="insert into  users(name_,lastname,surname,birthday,sex,email,pass,rol_id,status_id) values(?,?,?,?,?,?,?,?,?) where rol_id =2;";
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
