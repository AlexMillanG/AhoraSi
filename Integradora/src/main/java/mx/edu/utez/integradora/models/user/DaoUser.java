package mx.edu.utez.integradora.models.user;

import mx.edu.utez.integradora.models.crud.DaoRepository;
import mx.edu.utez.integradora.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
    @Override
    public List<User> fiandAll() {
        return null;
    }

    @Override
    public User findOne(Long id) {
        return null;
    }

    @Override
    public boolean save(User object) {
//        try {
//            conn= new MySQLConnection().connect();
//            String query="";
//        }
        return false;
    }

    @Override
    public boolean update(User object) {
        return false;
    }

    @Override
    public boolean delete(Long id) {
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
