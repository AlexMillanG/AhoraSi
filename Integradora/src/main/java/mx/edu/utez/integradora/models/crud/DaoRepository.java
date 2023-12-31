package mx.edu.utez.integradora.models.crud;

import java.sql.SQLException;
import java.util.List;

public interface DaoRepository <T>{
    List<T> fiandAll();
    T findOne(Long id);
    boolean save(T object) throws SQLException;
    boolean update(T object) throws SQLException;
    boolean delete(Long id);
}
