package cn.xu.dao;

import cn.xu.model.ServiceType;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ServiceTypeDao {

    List<ServiceType> queryAll();

    ServiceType queryById(int id);

    void insert(ServiceType serviceType);

    void deleteById(int id);

    void update(ServiceType serviceType);
}
