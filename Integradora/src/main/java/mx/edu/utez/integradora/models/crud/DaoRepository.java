package mx.edu.utez.integradora.models.crud;

import java.util.List;

public interface DaoRepository <T>{
    List<T> fiandAll();
    T findOne(Long id);
    boolean save(T object);
    boolean update(T object);
    boolean delete(Long id);
}
