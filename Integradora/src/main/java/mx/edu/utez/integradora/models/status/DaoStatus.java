package mx.edu.utez.integradora.models.status;

import mx.edu.utez.integradora.models.stories.DaoStories;
import mx.edu.utez.integradora.utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoStatus {
    private Connection conn;
    private PreparedStatement pstm;
    private ResultSet rs;



    public void close(){
        try{
            if (conn!=null)conn.close();
            if(pstm!= null)pstm.close();
            if (rs!= null)pstm.close();
        }catch (SQLException e){

        }
    }
}
