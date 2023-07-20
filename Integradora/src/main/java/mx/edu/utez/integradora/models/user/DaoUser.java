package mx.edu.utez.integradora.models.user;

import mx.edu.utez.integradora.models.crud.DaoRepository;
import mx.edu.utez.integradora.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class DaoUser implements DaoRepository<User> {
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;

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
        try {
            conn= new MySQLConnection().connect();
            String query="";
        }
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
