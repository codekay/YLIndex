package cn.xu.dao;

import cn.xu.model.CustomerMessage;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerMessageDao {

    CustomerMessage queryById(int id);

    void addMessage(String message);

    List<CustomerMessage> findAll();
}
