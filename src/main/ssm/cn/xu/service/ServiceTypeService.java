package cn.xu.service;

import cn.xu.dao.ServiceTypeDao;
import cn.xu.model.ServiceType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ServiceTypeService {

    @Autowired
    ServiceTypeDao serviceTypeDao;

    public void insert(ServiceType serviceType){
        if(serviceTypeDao != null)
            serviceTypeDao.insert(serviceType);
        else
            System.out.println("serviceProductDao = null");
    }

    public List<ServiceType> queryAll() {
        return serviceTypeDao.queryAll();
    }

    public ServiceType queryById(int id){
        return serviceTypeDao.queryById(id);
    }

}
