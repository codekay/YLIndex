package cn.xu.dao;

import cn.xu.model.SuccessCase;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SuccessCaseDao {

    List<SuccessCase> queryAll();

    SuccessCase queryById(int id);

    void insert(SuccessCase successCase);

}
